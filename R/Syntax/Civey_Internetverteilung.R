civey <- read.csv2(file = "Z:/Civey/R/Daten/franz_votes.csv", header = T,sep = ",")

ESS9DE <- read.spss(file = "Z:/Civey/R/Daten/ESS9DE.sav",
                    to.data.frame = T,
                    use.value.labels = F)


civey <- civey %>% mutate(internet = case_when(answer_text == "Bis zu einer halben Stunde"~"Bis zu einer halben Stunde",
                                                answer_text == "Eine halbe bis eine Stunde"~"Eine halbe bis eine Stunde",
                                                answer_text == "Eine bis eineinhalb Stunden"~"Eine bis eineinhalb Stunden",
                                                answer_text == "Eineinhalb bis zwei Stunden"~"Eineinhalb bis zwei Stunden",
                                                answer_text == "Zwei bis zweieinhalb Stunden"~"Zwei bis zweieinhalb Stunden",
                                                answer_text == "Mehr als zweieinhalb Stunden"~"Mehr als zweieinhalb Stunden",
                                                answer_text == "Gar nicht"|answer_text == "Ich habe keinen PC/Laptop"~"Gar nicht"))


civey$internet <- factor(civey$internet, levels = c("Gar nicht","Bis zu einer halben Stunde","Eine bis eineinhalb Stunden",
                                                    "Eineinhalb bis zwei Stunden","Zwei bis zweieinhalb Stunden","Mehr als zweieinhalb Stunden"))

prop.table(table(civey$internet))
str(civey)
?attributes
civey_2018 <- civey[grep("2018",civey$date),]

civey_2019 <- civey[grep("2019",civey$date),]

civey_2020 <- civey[grep("2020",civey$date),]

civey_2021 <- civey[grep("2021",civey$date),]

civey_2022 <- civey[grep("2022",civey$date),]

prop.table(table(civey_2018$answer_text))
