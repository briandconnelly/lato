.onAttach <- function(libname, pkgname) {

    # Modified from hrbrthemes package (https://github.com/hrbrmstr/hrbrthemes)
    if (getOption("lato.loadfonts", default = FALSE)) {
        if (interactive()) {
            packageStartupMessage("Registering PDF & PostScript fonts with R")
        }

        extrafont::loadfonts(device = "pdf", quiet = TRUE)
        extrafont::loadfonts(device = "postscript", quiet = TRUE)
    }
    else {
        packageStartupMessage("To include Lato in PDFs, first run extrafont::loadfonts().")
    }

    # Check if fonts are installed.
    if (!is_lato_imported()) {
        packageStartupMessage("Warning: Lato fonts could not be found.")
        packageStartupMessage("    Please use lato::import_lato() to install all necessary fonts.")
    }
}
