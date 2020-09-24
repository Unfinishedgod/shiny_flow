FROM rocker/shiny-verse:latest

RUN apt-get update && apt-get install -y


COPY . /

WORKDIR /

EXPOSE 3838

CMD R -e 'shiny::runApp("global.R", port = 3838, host = "0.0.0.0")'

