# You can learn more about package authoring with RStudio at:
#
#   http://r-pkgs.had.co.nz/
#
# Some useful keyboard shortcuts for package authoring:
#
#   Install Package:           'Ctrl + Shift + B'
#   Check Package:             'Ctrl + Shift + E'
#   Test Package:              'Ctrl + Shift + T'


library(tidyverse)
library(flextable)
library(extrafont)
library(sjPlot)
library(janitor)
library(ggsignif)
library(psych)
library(readxl)

FScolors5=c("#12284c","#515784","#7c7678","#c21932","#7d162b")
FScolors3=c("#12284c","#515784","#7d162b")
FSblue = c("#12284c")
windowsFonts(sans = windowsFont("AvenirNext LT Pro Regular"))
windowsFonts(serif = windowsFont("AvenirNext LT Pro Regular"))
#windowsFonts(sans = windowsFont("Segoe UI")) # if you don't have avenir installed
set_flextable_defaults(font.size = 12,
                       font.family = "Avenir Next LT Pro Regular",
                       hansi.family="Avenir Next LT Pro Regular",
                       eastasia.family="Avenir Next LT Pro Regular",
                       cs.family="Avenir Next LT Pro Regular")
