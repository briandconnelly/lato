#' Import Lato Font
#'
#' \code{import_lato} makes the included Lato font available in R. This process
#' only needs to be completed once.
#'
#' @rdname lato_font
#' @export
#'
import_lato <- function() {
    lato_path <- system.file("fonts", "lato", package = "lato")

    suppressWarnings(
        suppressWarnings(
            extrafont::font_import(lato_path, prompt = FALSE)
        )
    )

    message(
        sprintf(
            "You should also install Lato fonts on your system.\nThey can be found in [%s]",
            lato_path
        )
    )
}

#' \code{is_lato_imported} checks if Lato has been imported
#' @rdname lato_font
#' @export
is_lato_imported <- function() {
    ft <- extrafont::fonttable()
    any(grepl("Lato", ft$FamilyName))
}
