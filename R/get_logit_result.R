#' Title Get Logit_model's Result
#'
#' @param logit_model logit_model
#' @param model_name model's name
#'
#' @return a data.frame of logit_model's result
#' @export
#'
#' @examples logit_model <- glm(y ~ x, data, family=familytype(link = 'binomial'))
#' logit_result <- get_logit_result(logit_model, 'model_1')
#'
#'
get_logit_result <- function(logit_model, model_name){
  logit_result <- sjPlot::get_model_data(logit_model,type = "est",digits = 3,ci_method="wald") %>%
    select(var = term, idea = estimate, idea_se = std.error, p.stars) %>%
    mutate(idea = round(idea, 3) - 1, idea_se = round(idea_se, 3)) %>%
    mutate(idea_se = paste0("(",idea_se,")")) %>%
    mutate(idea = paste0(idea, p.stars)) %>%
    mutate(idea = paste(idea, idea_se, sep = '\n')) %>%
    select(var, idea)
  colnames(logit_result) <- c("var",model_name)
  return(logit_result)
}
devtools::install_github("Kevin235711/R-code-for-paper")
