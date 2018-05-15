{{cookiecutter.project_slug}}
==============================

{{cookiecutter.project_short_description}}

Building
--------

1. Always `mv config/secrets_example config/secrets` first!

2. Then you should `./scripts/build-scripts/build-all.sh`  This will build the docker images for your compose files *This will only work from the project root!!!*.

3. After that, the docker-compose files will be enabled.  Make sure you are updating the correct dockerfiles, if you only need it in the notebook add the requrement to the notebook dockerfile or requirements file.  If you need it in the application, add it to the application requirements file, this will be inherited on to the notebook.  After you change  the dockerfile or requirements file, run the build script.

Happy Programming!

Project Structure
-----------------

```
.
├── AUTHORS.md
├── LICENSE
├── README.md
├── bin                <- compiled code
├── config             <- Configuration files, e.g., for doxygen or for your model if needed
├── dockerfiles        <- docker files
├── data
│   ├── external       <- Data from third party sources.
│   ├── interim        <- Intermediate data that has been transformed.
│   ├── processed      <- The final, canonical data sets for modeling.
│   └── raw            <- The original, immutable data dump.
├── docs               <- Documentation, e.g., doxygen or scientific papers (not tracked by git)
├── notebooks          <- Jupyter notebooks
├── reports            <- For a manuscript source, e.g., LaTeX, Markdown, etc., or any project reports
│   └── figures        <- Figures for the manuscript or reports
├── scripts
│   ├── build-scripts  <- build scripts for the applications
│   └── run-scripts    <- run scripts for the applications
└── src                <- Source code for this project
    ├── data           <- scripts and programs to process data
    ├── external       <- Any external source code, e.g., pull other git projects, or external libraries
    ├── models         <- Source code for your own model
    ├── tools          <- Any helper scripts go here
    └── visualization  <- Scripts for visualisation of your results, e.g., matplotlib, ggplot2 related.
```
