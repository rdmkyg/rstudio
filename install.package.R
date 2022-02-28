install.packages('devtools')   
install.packages("rJava")

install.packages(c('ggplot2','dplyr','tidyr','readr','purrr','tibble','lubridate',
                     'stringr','forcats','broom','cli','crayon','dbplyr','haven',
                     'hms','httr','jsonlite','magrittr', 'modelr','pillar','readxl',
                     'reprex','rlang','rvest','xml2','rio','DBI','odbc','mongolite',
                     ',RJDBC','RMariaDB', 'curl','data.table','survival','forecast',
                     'survminer', 'muhaz','TTR','caret','latiice','e1071','kernlab',
                     'shiny','mailR',"trelliscopejs","showtext"))

library(devtools)
library(rJava)

pkgs <-   c('ggplot2','dplyr','tidyr','readr','purrr','tibble','lubridate',
               'stringr','forcats','broom','cli','crayon','dbplyr','haven',
               'hms','httr','jsonlite','magrittr', 'modelr','pillar','readxl',
               'reprex','rlang','rvest','xml2','rio','DBI','odbc','mongolite',
               ',RJDBC','RMariaDB', 'curl','data.table','survival','forecast',
               'survminer', 'muhaz','TTR','caret','latiice','e1071','kernlab',
               'shiny','mailR',"trelliscopejs","showtext")

devtools::install_github("r-dbi/RMariaDB")
library(RmariaDb)