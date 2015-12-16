EnsurePackage <- function(pac) {
  x <- as.character(pac)
  
  if (!require(x, character.only = T)) {
    
    install.packages(pkgs = x)
    
    require(x, character.only = T)
  }
}

PrepareTwitter <- function() {
  EnsurePackage("bitops")
  EnsurePackage("RCurl")
  EnsurePackage("RJSONIO")
  EnsurePackage("twitteR")
}