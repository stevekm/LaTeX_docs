#!/usr/bin/env Rscript

## USAGE: embed_fonts_PDF.R /path/to/file.pdf
## this script will embed fonts into a PDF document; 
## this can be an issue if a program doesn't have the fonts needed to display your PDF!!
## this script requires the fonts to be installed on your computer, and requires ghostscript to be installed and in your PATH
## this is a wrapper for a bash command, but its handy since it can be inserted into an R script

# ~~~~~ GET SCRIPT ARGS ~~~~~~~ #
args <- commandArgs(TRUE); cat("Script args are:\n"); args
pdf_input_file<-args[1]
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ # 

# embed the fonts
embedPDFfonts<-function(x){
  # get the input file
  pdf_in<-x; print(paste0("Input file is: ", pdf_in))
  # set an output filename
  pdf_out<-paste0(pdf_in,"_embedfonts.pdf"); print(paste0("Output file is: ",pdf_out))
  # run ghostscript to embed the fonts
  system(command = paste0("gs -dCompatibilityLevel=1.4 -dPDFSETTINGS=/screen -dCompressFonts=true -dSubsetFonts=true -dNOPAUSE -dBATCH -sDEVICE=pdfwrite -sOutputFile=",pdf_out,' -c ".setpdfwrite <</NeverEmbed [ ]>> setdistillerparams" -f ',pdf_in))
}

embedPDFfonts(pdf_input_file)



# ~~~~~~ NOTES
# https://stat.ethz.ch/R-manual/R-devel/library/grDevices/html/embedFonts.html
# https://stat.ethz.ch/R-manual/R-devel/library/grDevices/html/pdf.html
# https://stat.ethz.ch/R-manual/R-devel/library/grDevices/html/cairo.html
# https://www.karlrupp.net/2016/01/embed-all-fonts-in-pdfs-latex-pdflatex/
# http://tex.stackexchange.com/questions/10391/how-to-embed-fonts-at-compile-time-with-pdflatex
# http://blog.revolutionanalytics.com/2012/09/how-to-use-your-favorite-fonts-in-r-charts.html

#  alternatively, try this in the original R script
#   cairo_pdf(paste0(plot_filepath,"_cairo.pdf"),width = 9,height = 9)
#   grid.arrange(gTree(children=venn), top=paste0(SampleID," Peak Overlap"))
#   dev.off()

# original bash command
# gs -dCompatibilityLevel=1.4 -dPDFSETTINGS=/screen -dCompressFonts=true -dSubsetFonts=true -dNOPAUSE -dBATCH -sDEVICE=pdfwrite -sOutputFile=All_Samples_venn.pdf_embedfonts.pdf -c ".setpdfwrite <</NeverEmbed [ ]>> setdistillerparams" -f All_Samples_venn.pdf


