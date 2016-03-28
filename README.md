## Welcome to the Student Loan Analyzer!
This is our final project for Survery of Programming Languages

##Getting Started
#### Install R
``` shell
brew tap homebrew/science
brew install gcc
brew install Caskroom/cask/xquartz
brew install r
```
#### Install Shiny packages
From inside of a terminal
``` shell
$ R
> install.packages('shiny')
> install.packages('devtools')
> devtools::install_github("AnalytixWare/ShinySky")
$ PROJECT_DIR=$(pwd) && R -e "shiny::runApp('$PROJECT_DIR')" # to run project
```



##### Thank you for checking out our final project for ITCS 4102 at UNCC!
