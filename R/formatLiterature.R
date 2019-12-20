
filepath <- "E:/Literature"
sep_author=" "
sep_year="_"

#' Rename articles

#' All files within certain directory
filenames <- list.files(filepath, recursive=T, full.names=TRUE)

#' Only select .pdf files
filenames <- filenames[grepl(filenames, pattern=".pdf")]

#' Only choose files with wrong format
files_sub <- filenames[grepl(filenames, pattern="_et_al-")]

#' Create vector with new names
newnames <- sub("_et_al-", " et al._", files_sub)
head(newnames)

#' Rename files
file.rename(files_sub, newnames)

#' Only choose files with wrong format
files_sub <- filenames[grepl(filenames, pattern="_et_al")]

#' Create vector with new names
newnames <- sub("_et_al", " et al.", files_sub)
head(newnames)

#' Rename files
file.rename(files_sub, newnames)

#' Revert renaming
#file.rename(new_names, filenames)

#' Change file extension
#new_names <- filenames
#raster::extension(new_names) <- ".pdf"
