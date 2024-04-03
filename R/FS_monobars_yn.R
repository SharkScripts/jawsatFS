require(tidyverse)
FS_monobars_yn<-function(plotname,barcolor="#12284c",yint=yint,yvar=pct){

  plotname+
    geom_bar(stat="identity",fill=barcolor) +
    geom_hline(yintercept = yint,size=1)+
    #annotate("text",x=)
    theme(axis.text.x = (element_text(size=12,face = "bold")),
          axis.text.y = (element_text(size=16,hjust=0.8,face = "bold")),
          axis.title.x = (element_text(size=12,face = "bold")),
          legend.position = "none")+scale_x_discrete(labels = c("0"="No",
                                                                "1"="Yes"))+
    geom_label(aes(label=paste0(pct,"%"),y=pct,size=10))+coord_flip()
}
