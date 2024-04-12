# 安装并加载开发包所需包
# install.packages("usethis", "devtools", "roxygen2")

library(usethis)
library(devtools)
library(roxygen2)

# 检查
has_devel()

# 创建包
usethis::create_package("r4paper", open = F)

# 引用函数
usethis::use_package(package = "sjPlot", type = "Imports")
usethis::use_package(package = "tidyverse", type = "Depends")

# 写入注释
devtools::document()

# 建包
devtools::build()



