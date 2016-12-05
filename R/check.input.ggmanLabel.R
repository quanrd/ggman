#' This function checks the user input for the function ggmanLabel.R
#'
#' @keywords internal
#'
#' 
check.input.ggmanLabel <- function(){
    ## ggmanPlot input
    if(! any(class(ggmanPlot) == "ggplot")){
        stop("The ggmanPlot input is not a ggplot object")
    }

    ## labelDfm input
    if(! any(class(labelDfm) == "data.frame")){
        stop("The labelDfm input is not a data frame")
    }
    
    ## snp input
    if(!is.character(snp)){
        stop("The snp input is not a character")
    }

    if(! snp %in% names(labelDfm)){
        stop(paste0("The column ",snp," is not present in labelDfm input data.frame"))
    }
    
    if(!any(labelDfm[,snp] %in% ggmanPlot[[1]]$snp)){
        stop("None of the SNPs in labelDfm input is present in the manhattan plot layer")
    }

    ## label input
    if(!is.character(label)){
        stop("The label input is not a character")
    }

    if(! label %in% names(labelDfm)){
        stop(paste0("The column ",label," is not present in the labelDfm input data.frame"))
    }

    ## type input
    if(! is.character(type)){
        stop("The type input is not a character")
    }

    if(! type %in% c("label","text")){
        stop("The type input should be either 'label' or 'text'")
    }
    
    
}