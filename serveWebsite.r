serve_site <- function() {
    require(bookdown)
    
    # Creates book to run locally
    serve_book(dir = getwd(), output_dir = "docs", preview = TRUE,
               in_session = TRUE, quiet = FALSE)
    noquote('http://127.0.0.1:4321')
    
    # writes an empty .nojekll file to host on github pages
    file.create(paste(getwd(), "/docs", "/.nojekyll", sep=''))
}

serve_site()
