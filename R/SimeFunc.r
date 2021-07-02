library(dplyr)
library(magrittr)
library(gplots)

## Set the library
.libPaths('C:\\Users\\snd\\OneDrive - Department of Primary Industries and Regional Development\\Maths and Stats\\R.Librarys')

## Useful functions
as.day <-   function(x,fmat='%Y-%m-%d')    as.numeric(format(as.Date(x, format=fmat),'%d'))
as.month <- function(x,fmat='%Y-%m-%d')    as.numeric(format(as.Date(x, format=fmat),'%m'))
as.year <-  function(x,fmat='%Y-%m-%d')    as.numeric(format(as.Date(x, format=fmat),'%Y'))
numchar <-  function(x) as.numeric(as.character(x))


#New directory function
direct <- function(x){
  paste("C:/Users/snd/OneDrive - Department of Primary Industries and Regional Development/",x,sep="")
}



#' Copy to Clipboard
#'
#' Tkes a dataframe and copies to to the clipboard so you can paste it into Excel
#' @param x name of data.frame
#' @return Clipboard gets loaded up
#' @examples 
#' toXL(dat)
#' @export
toXL <- function(x, rnames=FALSE){
  write.table(x, "clipboard", sep="\t", row.names = rnames)
}

