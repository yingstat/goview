#' goview Function
#' This function allows you to show the results of GO enrichment analysis.
#' @param goresults the go results from gProfileR
#' @keywords GO
#' @author yingying
#' @import ggplot2
#' @export
#' @examples
#' goview()

goview <- function(goresults){
  ggplot2::ggplot(data=goresults, aes(x=reorder(term.name, -p.value), y=overlap.size,fill=p.value)) +
    geom_bar(stat="identity")+
    scale_fill_gradient2(mid='red', high='blue', space='Lab')+
    labs(title="GO enrichment",
         x ="GO terms", y = "number of genes", fill = "P value")+
    theme(plot.title = element_text(hjust = 0.5, size = 12))+
    coord_flip()
}

