Reproducible Science
====================

A boilerplate for reproducible and transparent science with close resemblances to the philosophy of [Cookiecutter Data Science](https://github.com/drivendata/cookiecutter-data-science): *A logical, reasonably standardized, but flexible project structure for doing and sharing data science work.*

Requirements
------------
Install `cookiecutter` command line: `pip install cookiecutter`    

Usage
-----
To start a new science project:

`cookiecutter gh:TheCulliganMan/cookiecutter-reproducible-data-science`

Follow the instructions to get your directory set up. Then enter the directory.

First thing you should probably do is `mv config/secrets_example config/secrets` and set the proper values.

Build the application `bash bin/build-scripts/build-app-dockerfile.sh`.

Build the notebooks if you want them `bash bin/build-scripts/build-notebook-dockerfile.sh`.

Otherwise build all `bash bin/build-scripts/build-all.sh`.

After projects are built, feel free to use the docker-compose files.  There are three, one to start just the application (which defaults to `bash`), another that starts just the notebook with a shared volume mount the projecrt root.  

Project Structure
-----------------

```
.
├── AUTHORS.md
├── LICENSE
├── README.md
├── bin                <- Your compiled model code can be stored here (not tracked by git)
│   ├── build-scripts  <- build scripts for the applications
│   └── run-scripts    <- run scripts for the applications
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
└── src                <- Source code for this project
    ├── data           <- scripts and programs to process data
    ├── external       <- Any external source code, e.g., pull other git projects, or external libraries
    ├── models         <- Source code for your own model
    ├── tools          <- Any helper scripts go here
    └── visualization  <- Scripts for visualisation of your results, e.g., matplotlib, ggplot2 related.
```

License
-------
This project is licensed under the terms of the [BSD License](/LICENSE)
