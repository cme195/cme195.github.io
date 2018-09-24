---
layout: cme195
---

# [](#title) Software Installation


In order to work with R you will need to complete two following tasks:

* Install R itself on your machine.
* Get an editor to write your code.

The editor can independent of R, and can be usually used to write
code in other languages. You can even use a basic text editor to write
an R script, but this of course is sub-optimal.

The two option frequently used by R programmers are
[RStudio IDE](https://www.rstudio.com/) and
[Emacs](https://www.gnu.org/software/emacs/) (for intermediate/advanced users).

You are free to pick an editor that you feel most comfortable with.
However, all instructions and lecture materials will use Rstudio.


## [](#installR) Installing R

* Visit the official [R website](https://www.r-project.org/).
Click on “download R” or go to "CRAN" tab.
* The download link actually takes you to a list of mirror sites.
Choose a site that is geographically close to you (USA, UC Berkeley).
* Choose your operating system (Linux/Mac OS/Windows)
* Download a binary file and follow the installation instructions for
your system.

## [](#installRStudio) Installing RStudio

Install the latest version of [RStudio](https://www.rstudio.com/products/rstudio/download/#download).
RStudio includes many cool features including  interactive [R
Notebooks](http://rmarkdown.rstudio.com/r_notebooks.html), and
an [integrated terminal](https://www.rstudio.com/resources/webinars/terminal-updates/)
window.

* Visit the following
[RStudio link](https://www.rstudio.com/products/rstudio/download/#download)
* Pick and download installer for your OS.
* After download is completed you can double-click the file and follow instructions
to install the program.


## [](#runR) Running R

### [](#interpreteR) The interpreter mode

To start the R console you can either

* launch *the R graphical user interface*.
* or type "R" from *the command line/terminal*.

To open a terminal window use:
  * For linux: Ctr \+ Alt \+ T.
  * For Mac: Command \+ space. Then, start typing "Terminal" and press Enter.
  * For Windows: WinKey \+ R. Then, type "cmd" and press Enter.

Then, you can interactively give instructions to the computer, using the
R commands. To quit enter `q()`.

The R console is also available as one of the panes in the RStudio IDE,
and is automatically started when you launch RStudio.


### [](#scriptR) The scripting mode

- A more convenient way to interact with R is *to write a script*.
- A script contains all code you want to execute.
- You should write your R code in the editor.
- After you finish writing your R script, e.g. `script.R`,  you can run the program:
  - from the terminal, browse to the location where you saved your script
  - then call `Rscript script.R`


## [](#rmarkdown) R markdown / R Notebook

- In RStudio you can start a new document of type *R Notebook/ R Markdown*
that let's you combine text, code and the output of your code in the same
report.
- The code in these documents is organized in *chunks* which
can be evaluated inline, i.e. their output will be included right beneath
the code. The R Markdown requires you to compile the entire document,
whereas R Notebooks allow you to evaluate each chunks individually, not
necessarily in order in which they appear.
- To start an R Notebook you should go to File > New File > R Notebook.
- To insert a new code chunk you should use a keyboard shortcut
`Ctrl + Alt + I` (Mac OS X: `Cmd + Option + I`)
- To execute the code in a specific chunk: place your cursor inside that chunk
then use the Run Chunk button or press `Ctrl + Shift + Enter`
(Mac OS X: `Cmd + Shift + Enter`)

You can find more on R Notebooks
[here](http://rmarkdown.rstudio.com/r_notebooks.html ).

[back](./)
