
#' @importFrom usethis edit_file proj_path use_directory use_template
use_pl_question_info <- function(template, name, data = list(), open = TRUE) {
  
  use_directory(fs::path("questions", name))
  
  data <- amend_pl_info_defaults(data, use_default_pl_question_info())
  data <- enforce_info_key_order(data)
  
  save_as <- proj_path("questions", name, "info.json")
  
  info_json_contents <- jsonlite::toJSON(data, pretty = TRUE, auto_unbox = TRUE)
  new <- usethis::write_over(save_as, info_json_contents)
  
  if (open && new) {
    usethis::edit_file(save_as)
  }  
}

use_pl_question_html = function(template, name, data = list(), open = TRUE) {
  use_directory(fs::path("questions", name))
  
  use_pl_template(template, save_as = fs::path("questions", name, "question.html"),
                  data = data, open = TRUE)
}

use_pl_server_py = function(template, name, data = list(), open = TRUE) {
  use_directory(fs::path("questions", name))
  
  use_pl_template(template, save_as = fs::path("questions", name, "server.py"),
                  data = data, open = TRUE)
}

#' @importFrom usethis use_template
use_pl_template = function(template, save_as = template, data = list(),
                           ignore = FALSE, open = FALSE, package = "plearn") {
  
  use_template(template = template, save_as = save_as, data = data,
               ignore = ignore, open = open, package = "plearn")
  
}

enforce_info_key_order = function(data) {
  data[c("uuid", "title", "topic", "tags", "type")]
}
