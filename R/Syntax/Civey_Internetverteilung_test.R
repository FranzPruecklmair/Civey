

sample_internet <- sampling_wr(subset_internet, c,F)

?sample







table(Univ_2$civeycode)

prop.table(table(civey_2018$answer_text))
Univ_2 <- Univ_18[order(Univ_18$civeycode),]

prob_vec      <- c( rep(x = 0.1087130, times = 3706),#Bis zu einer halben Stunde
                    rep(x = 0.2269836, times = 10940),#Eine halbe bis eine Stunde
                    rep(x = 0.1562228, times = 17950),#Eine bis eineinhalb Stunden
                    rep(x = 0.1827060, times = 7330),#Eineinhalb bis zwei Stunden
                    rep(x = 0.1202516, times = 15946),#Zwei bis zweieinhalb Stunden
                    rep(x = 0.2051229, times = 44128));#Mehr als zweieinhalb Stunden

set.seed(123)
rand_num_bias <- sample(1:nrow(Univ_2), size = 2500, replace = F, prob = prob_vec)

s1 <- Univ_2[rand_num_bias,]
s1

set.seed(123)

s2 <- sampling_wr(Univ_2, c,F,prob_vec)
s2

