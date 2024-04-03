library(tidyverse)

pct_table<-function(var1,useNA="ifany",header="colname"){
  varname_s = deparse(substitute(var1))
  if(header=="colname") header <-
      sapply(strsplit(varname_s, split='$', fixed=TRUE), function(x) (x[2]))
  round(prop.table(table(var1,useNA = useNA,deparse.level = 2,
                         dnn = header)),3)}
tallypct <- function(data){tally(data) %>%mutate(pct = round(n/sum(n),3))}
tallyandsort<-function(data){
  tallypct(data) %>%  pctsort() %>%adorn_totals() %>%flextable()
}
