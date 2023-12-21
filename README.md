### Datafustion SQL CLI + Some Bash fun


This repo is trying to use the `datafusion` SQL CLI tool in combo with
 `bash` to try to make a simple ETL tool that can ...
 - Take an arguement for an input data file
 - Take some SQL query as input
 - Run the `Datafusion` SQL CLI and capture output to STDOUT
 - Right output to a file.


## Setup and Running
Run the following Docker command to build the image
`docker build . --tag=datafusion-etl`

If you want to manually drop into the container and tie the local volume ...
`docker run -v ${PWD}:/app/ -it datafusion-etl /bin/bash`

Otherwise to run the container with `docker-compose` with the preconfigured script ...
`docker-compose up run`

The `bash` script expects ...
```
c) command (SQL)
f) format (input file format)
d) data (input data file location)
```