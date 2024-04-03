require(tidyverse)
tallypct_bygroup <- function(data,x,y=NULL){

  if (missing(y)){
    data %>% group_by({{x}}) %>%
      tally() %>% mutate(pct = round(n/sum(n),3)) %>%
      arrange(desc(pct))
  }
  else {
    data %>% group_by({{x}},{{y}}) %>%
      tally() %>% mutate(pct = round(n/sum(n),3))
  }

}
