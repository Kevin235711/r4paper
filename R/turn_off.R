#' Title Turn Off EXE
#'
#' @param exe_name
#'
#' @return nothing
#' @export
#'
#' @examples
#' turn_off(ppt)
#' turn_off(chrome)
turn_off <- function(exe_name){
  if(exe_name == "ppt"){
    shell("taskkill /f /im POWERPNT.EXE")
  }else if(exe_name == "chrome"){
    shell("taskkill /f /im chorme.exe")
  }else{
    print("exe_name cnnot recoginze.")
  }
}
