

build_pl_info_default <- function(user_info_fields = list(), info_defaults = list()) {
  info_list <- amend_pl_info_defaults(user_info_fields, info_defaults)
  
  # Collapse all vector arguments to single strings
  info <- vapply(info_list, glue::glue_collapse, character(1))
  
  glue::glue("{names(info)}: {info}")
}

amend_pl_info_defaults <- function(user_info_fields = list(), info_defaults = list()) {
  user_info_fields = remove_null_elements(user_info_fields)
  compact(utils::modifyList(info_defaults, user_info_fields))
}

remove_null_elements = function(x) {
  Filter(Negate(is.null), x)
}

## PL Information Defaults ----
use_default_pl_question_info <- function() {
  list(
    uuid = uuid::UUIDgenerate(FALSE), # Attempt to generate a random UUID not based on time.
    tags = getOption("plearn.author", "unknown"),
    title = "What the Question Tests (One Line, Title Case)",
    topic = c("unknown"), 
    type = "v3"
  )
}
