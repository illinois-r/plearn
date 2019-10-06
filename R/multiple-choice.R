#' Create a Multiple Choice Question with a Fixed Number of Responses
#' 
#' Establishes a multiple choice question with a fixed amount of responses.
#' 
#' @template info-json-params
#' 
#' @export
use_mc_fixed = function(name, title = NULL, topic = NULL, tags = NULL) {
  has_name(name)
  
  name <- glue::glue("mc_fixed_{tolower(name)}")
  check_file_name(name)
  
  info_data = list(
    title = title,
    topic = topic,
    tags = make_tags(c("mc", "v3", tags))
  )
  
  use_pl_question_info("info-generic.json", name, data = info_data)
  use_pl_question_html("question-mc-fixed.html", name)
}
