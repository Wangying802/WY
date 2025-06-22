## Script name: 摸索R包的开发过程

## Author: Dr. Ying Wang

## Date Created: 2025-06-17

## Copyright (c) Ying Wang, 2025
## Email: wangying20191212@163.com

# 学习资源：https://mp.weixin.qq.com/s/d-QEJP0aD8Xz7IiHyQDO2Q

# Clean the environment
rm(list = ls());gc()


# 安装并加载开发包所需包
# install.packages("usethis","devtools","roxygen2")

# load packages
library(usethis)
library(devtools)
library(roxygen2)

# 检查
has_devel()
# Your system is ready to build packages! 表示一切就绪

usethis::create_package(getwd())
# 直接新建了一个与文件夹同名的.Rproj文件，默认创建了一些文件：
# 学习资源：https://mp.weixin.qq.com/s/d-QEJP0aD8Xz7IiHyQDO2Q 内有详细介绍

# 开始写函数

use_r("AHP") # 自动在 R 文件夹下创建并打开 AHP.R

sinew::makeOxygen(AHP) #自动出现函数注释文件

document() #函数文档化 实际上是调用 roxygen2 包生成 man/AHP.Rd.

