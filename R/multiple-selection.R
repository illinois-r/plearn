#' Create a Multiple Selection Question with a Fixed Number of Responses
#' 
#' Establishes a multiple selection question that allows for one or more 
#' responses to be selected.
#' 
#' @template info-json-params
#' 
#' @export
use_ms_fixed = function(name, title = NULL, topic = NULL, tags = NULL) {
  has_name(name)
  
  name <- glue::glue("ms_fixed_{tolower(name)}")
  check_file_name(name)
  
  info_data = list(
    title = title,
    topic = topic,
    tags = make_tags(c("ms", "v3", tags))
  )
  
  use_pl_question_info("info-generic.json", name, data = info_data)
  use_pl_question_html("question-ms-fixed.html", name)
}
