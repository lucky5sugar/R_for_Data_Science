library(tidyverse)

# アメリカの車のデータセット
mpg
# 頭に?をつけるとman page
?mpg
mpg1 <- mpg
mtcars1 <- mtcars

# 1.6 幾何オブジェクト
ggplot(data = mpg, mapping = aes(x = displ, y = hwy)) +
  geom_smooth(se = FALSE, mapping = aes(group = drv, color = drv)) +
  geom_point(mapping = aes(color = drv))

# 1.7 統計変換
diamonds
?diamonds
diamonds1 <- diamonds

ggplot(data = diamonds, mapping = aes(x = carat, y = price)) +
  geom_point() +
  geom_smooth()
