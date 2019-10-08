#' Create a String Input
#' 
#' Establishes string input field that allows for the evaluation of character
#' values.
#' 
#' @template info-json-params
#' 
#' @export
use_input_string = function(name, title = NULL, topic = NULL, tags = NULL) {
  has_name(name)
  
  name <- glue::glue("string_{tolower(name)}")
  check_file_name(name)
  
  info_data = list(
    title = title,
    topic = topic,
    tags = make_tags(c("string", "v3", tags))
  )
  
  use_pl_question_info("info-generic.json", name, data = info_data)
  use_pl_question_html("question-input-string.html", name)
  use_pl_server_py("server-string.py", name)
}


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

#' Create an Integer Input
#' 
#' Establishes an integer input field that allows for the evaluation of 
#' only whole numbers.
#' 
#' @template info-json-params
#' 
#' @export
use_input_integer = function(name, title = NULL, topic = NULL, tags = NULL) {
  has_name(name)
  
  name <- glue::glue("integer_{tolower(name)}")
  check_file_name(name)
  
  info_data = list(
    title = title,
    topic = topic,
    tags = make_tags(c("integer", "v3", tags))
  )
  
  use_pl_question_info("info-generic.json", name, data = info_data)
  use_pl_question_html("question-input-integer.html", name)
  use_pl_server_py("server-integer.py", name)
}


#' Create a Numeric Input
#' 
#' Establishes numeric input field that allows for the evaluation of decimal
#' numbers.
#' 
#' @template info-json-params
#' 
#' @export
use_input_number = function(name, title = NULL, topic = NULL, tags = NULL) {
  has_name(name)
  
  name <- glue::glue("numeric_{tolower(name)}")
  check_file_name(name)
  
  info_data = list(
    title = title,
    topic = topic,
    tags = make_tags(c("numeric", "v3", tags))
  )
  
  use_pl_question_info("info-generic.json", name, data = info_data)
  use_pl_question_html("question-input-numeric.html", name)
  use_pl_server_py("server-numeric.py", name)
}
