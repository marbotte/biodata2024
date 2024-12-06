require(rmarkdown)
require(knitr)
rmarkdown::render("act_1_1_SQL.Rmd",output_format=bookdown::pdf_document2(),output_dir = "./docs/download/actividades/taller_R_SQL/")
rmarkdown::render("act_1_2_R.Rmd",output_format=bookdown::pdf_document2(),output_dir = "./docs/download/actividades/taller_R_SQL/")
