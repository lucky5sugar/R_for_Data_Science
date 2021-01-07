# まとめ
library(tidyverse)
ggplot(data, aes(xaxis, yaxis)) +
  geom_something() +
  theme_classic() + 
  # 日本語の時は"theme_classic(base_family = "HiraKakuPro-W3")"
  labs(x="hogehoge", y="hoge") +
  
setwd("/Users/masayukisato/Google\ Drive_keio/Documents/GitHub/R_for_Data_Science/")

# アメリカの車のデータセット
mpg
# 頭に?をつけるとman page
?mpg
# View()かデータフレームに代入すると表を見ることができる
View(mpg)
mpg1 <- mpg
mtcars1 <- mtcars

# 1.6 幾何オブジェクト
ggplot(data = mpg, mapping = aes(x = displ, y = hwy)) +
  geom_smooth(se = FALSE, mapping = aes(group = drv, color = drv)) +
  geom_point(mapping = aes(color = drv)) +
  labs(x="排気ガス", y="燃費") +
  theme_classic(base_family = "HiraKakuPro-W3")

# 1.7 統計変換
diamonds
?diamonds
diamonds1 <- diamonds

ggplot(data = diamonds, mapping = aes(x = carat, y = price)) +
  geom_point() +
  geom_smooth()

# Cheatsheet
View(economics)
View(seals)
?seals
a <- ggplot(economics, aes(date, unemploy))
b <- ggplot(seals, aes(x=long, y=lat))
a + geom_blank()
b + geom_curve(aes(yend=lat+1, xend=long+1), curvature=1)
a + geom_path(lineend = "butt", linejoin = "round", linemitre = 1)
ggsave("geom_path.png")
# polygonは最初と最後が繋がれて，中がfillされる
a + geom_polygon()
# xmin, xmax, ymin, ymaxでrectangle
b + geom_rect(aes(xmin=long, ymin=lat, xmax=long+1, ymax=lat+1))
a + geom_ribbon(aes(ymin=unemploy-900, ymax=unemploy+900))
b + geom_point() 
b + geom_abline(aes(intercept=0, slope=1))
b + geom_hline(aes(yintercept=lat))
b + geom_segment(aes(yend=lat+1, xend=long+1))
b + geom_spoke(aes(angle = 1:1155, radius = 1))

## ONE variable
c <- ggplot(mpg, aes(hwy))
c2 <- ggplot(mpg)
c + geom_area(stat="bin")
c + geom_density(kernel = "gaussian")
c + geom_dotplot()
c + geom_freqpoly()
c + geom_histogram(binwidth = 5)
c2 + geom_qq(aes(sample = hwy))
d <- ggplot(mpg, aes(fl))
d + geom_bar()


library(gcookbook)
pg_mean
ggplot(pg_mean, aes(group, weight)) +
  geom_col() +
  theme_classic()
       