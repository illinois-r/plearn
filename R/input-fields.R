#' Create a Symbolic Input
#' 
#' Establishes symbolic input field that allows for the evaluation of 
#' a mathematical expression.
#' 
#' @template info-json-params
#' 
#' @export
use_input_symbolic = function(name, title = NULL, topic = NULL, tags = NULL) {
  has_name(name)
  
  name <- glue::glue("symbolic_{tolower(name)}")
  check_file_name(name)
  
  info_data = list(
    title = title,
    topic = topic,
    tags = make_tags(c("symbolic", "v3", tags))
  )
  
  use_pl_question_info("info-generic.json", name, data = info_data)
  use_pl_question_html("question-input-symbolic.html", name)
  use_pl_server_py("server-symbolic.py", name)
}
