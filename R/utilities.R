has_name = function(name) {
  if(missing(name) || is.null(name)) stop("Must supply a `name`.")
}

# Harvested from usethis
check_file_name <- function(name) {
  if (!valid_file_name(fs::path_ext_remove(name))) {
    usethis::ui_stop(c(
      "{ui_value(name)} is not a valid file name. It should:",
      "* Contain only ASCII letters, numbers, '-', and '_'."
    ))
  }
  name
}

valid_file_name <- function(x) {
  grepl("^[a-zA-Z0-9._-]+$", x)
}

compact <- function(x) {
  is_empty <- vapply(x, function(x) length(x) == 0, logical(1))
  x[!is_empty]
}