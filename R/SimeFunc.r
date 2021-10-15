#' @import dplyr
#' @import magrittr
#' @import gplots

.libPaths('C:\\Users\\snd\\OneDrive - Department of Primary Industries and Regional Development\\Maths and Stats\\R.Librarys')

#' Pulls out the day as a number
#'
#' This extracts a day from a date 
#' @param x the date 
#' @return Returns the day
#' @examples 
#' as.day("2014-02-14")
#' @export
as.day <-   function(x,fmat='%Y-%m-%d')    as.numeric(format(as.Date(x, format=fmat),'%d'))


#' Pulls out the month as a number
#'
#' This extracts a month from a date 
#' @param x the date 
#' @return Returns the month
#' @examples 
#' as.month("2014-02-14")
#' @export
as.month <- function(x,fmat='%Y-%m-%d')    as.numeric(format(as.Date(x, format=fmat),'%m'))

#' Pulls out the year as a number
#'
#' This extracts a year from a date 
#' @param x the date 
#' @return Returns the year
#' @examples 
#' as.year("2014-02-14")
#' @export
as.year <-  function(x,fmat='%Y-%m-%d')    as.numeric(format(as.Date(x, format=fmat),'%Y'))

#' Change factor to number
#'
#' This Changes a factor to number
#' @param x teh factor
#' @return Returns a number
#' @examples 
#' numchar(factor)
#' @export
numchar <-  function(x) as.numeric(as.character(x))


#' New directory function
#'
#' This is a short cut that adds One Drive into the directory
#' @param x the suffix of the address
#' @return Returns a full address including OneDrive in full
#' @examples 
#' direct("lobster/Minor Stuff/MEY")
#' @export
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

#' directoryLink data in SimeFunc
#'
#' This is the link used in Direct so it can be changed by different uses.
#'
#' @docType data
#'
#' @usage data(directoryLink)
#'
#' @format An object of class \code{"cross"}; see \code{\link[qtl]{read.cross}}.
#'
#' @keywords datasets
#'
#' @references There aint one
#'
#' @source \href{https://phenome.jax.org/projects/Moore1b}{QTL Archive}
#'
#' @examples
"directoryLink"

