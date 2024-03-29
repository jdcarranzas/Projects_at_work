#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

packages_for_install <- c("skimr", 
                          "tidyverse", 
                          "modeltime", 
                          "tidymodels", 
                          "workflowsets", 
                          "timetk", 
                          "xgboost",
                          "randomForest",
                          "caret",
                          "lubridate",
                          "devtools",
                          "reprtree",
                          "plotly",
                          "openxlsx",
                          "writexl")

install.packages(setdiff(packages_for_install, 
                         rownames(installed.packages())))


library(skimr)
require(tidyverse)
require(modeltime)
require(tidymodels)
library(workflowsets)
require(timetk)
require(xgboost)
require(caret)
library(lubridate)
library(devtools)
library(reprtree)
library(plotly)
library(openxlsx)
library(writexl)
require(shiny)


executeApp <- function(){
  options(scipen = 999,
          digits = 2)
  
  source('ui.R', local = TRUE)
  source('server.R')
  
  # Run the application 
  shinyApp(ui = ui, server = server)
}



