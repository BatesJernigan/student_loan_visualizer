# doInstall <- TRUE
# toInstall <- c("maps", "ggplot2")
# if(doInstall){install.packages(toInstall, repos = "http://cran.us.r-project.org")}
# lapply(toInstall, library, character.only = TRUE)
library(ggplot2)
library(maps)
library(mapdata)

# Prison <- read.csv("stupid_data.csv")
# head(Prison)

# all_states <- map_data("state")
# head(all_states)
# Prison$region <- Prison$stateName
# Total <- merge(all_states, Prison, all=TRUE)
# head(Total)
# Total <- Total[Total$region!="district of columbia",]

# p <- ggplot()
# p <- p + geom_polygon(data=Total, aes(x=long, y=lat, group = group, fill=Total$bwRatio),colour="white"
#       ) + scale_fill_continuous(low = "thistle2", high = "darkred", guide="colorbar")
# P1 <- p + theme_bw()  + labs(fill = "Black to White Incarceration Rates \n Weighted by Relative Population" 
#                             ,title = "State Incarceration Rates by Race, 2010", x="", y="")
# P1 + scale_y_continuous(breaks=c()) + scale_x_continuous(breaks=c()) + theme(panel.border =  element_blank())
map("worldHires","Canada", xlim=c(-141,-53), ylim=c(40,85), col="gray90", fill=TRUE)