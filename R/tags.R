
make_tags = function(tags, author = getOption("plearn.author", "author-unknown")) {
  unique(c(tags, author))
}

