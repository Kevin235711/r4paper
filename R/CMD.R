shutdown_windows <- function(seconds){
  shell(paste('shutdown /s /t', seconds, sep = " "))
}

