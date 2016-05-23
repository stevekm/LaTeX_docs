If you are creating a conference poster, you can have your poster printed on fabric instead of the traditional paper. There are a few advantages to this:

- Fabric looks nice

- Its more durable

- Its easier to handle and transport

- No tears

- Its washable

- You can wear it

This can be done using the website http://www.spoonflower.com

### SYNOPSIS:

The poster needs to be exported / converted to a PNG image file at 150-300 DPI

#### Instructions: 

Here are some basic instructions on various ways to get your poster into the required format for Spoonflower fabric printing. Keep in mind that the steps needed for your poster will depend on starting format and which programs you can get to work on your system.

- Export your poster as a PDF
  - If you are starting from a PowerPoint document, you can do this from within PowerPoint. Sometimes PowerPoint's PDF exporter breaks due to slide elements such as Excel tables; in this case, you can copy the entire slide and paste it as an image on a new slide, and then export that image as PDF. Make sure all intermediary image steps use PNG format.
  - If you are starting from a TeX/LaTeX document, just use pdflatex or equivalent to compile to PDF

- Convert the PDF to PNG at a DPI setting of 150-300; tweak this until you get the highest possible DPI without exceeding a 40MB final PNG size. Some ways to accomplish this:
  - Open the PDF in GIMP with an explicit DPI setting, Export as PNG. This might also be possible in other programs such as InkScape
  - Open the PDF in Adobe Acrobat Pro, export as PNG with the provided DPI settings
    - NOTE: If your poster gets imported/exported and font characters disappear, you may have to go back and embed fonts into the PDF. See the notes and script about this here: https://github.com/stevekm/LaTeX_docs/blob/master/code/embed_fonts_PDF.R
  - Alternatively, find a way to compile the document straight to PNG format from the start

- Make an account at SpoonFlower
- on SpoonFlower, Create a new Fabric 
- upload the PNG
- Select the following settings: 
  - 'Centered' design
  - 'Change DPI' -> set your exact DPI used
  - Performance Knit fabric, 1 yard
- Expect shipping time estimate of upwards of 10 - 15 days, so plan ahead!
