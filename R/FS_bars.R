require(tidyverse)
FS_bars<-function(plotname,colorscheme=FScolors3,ylabel="Percent",yint=yint){
  FScolors6=c("#12284c","#515784","#7c7678","#c21932","#7d162b","#f0f1f3")
  FScolors3=c("#12284c","#515784","#7d162b")
  FSblue = c("#12284c")

  plotname+  geom_bar()+
    geom_text(aes(
      label=pct_format(after_stat(count)/sum(after_stat(count)))),
      stat = "count",vjust=2,colour="white",size=8) +
    scale_y_continuous(labels = scales::percent_format(accuracy = 1L))+
    scale_fill_manual(values=FScolors3)+
    theme(axis.title = element_text(size=12,face="bold"),
          axis.text = element_text(size=12),
          legend.position="none"                         )+
    labs(

      y=ylabel)
}
