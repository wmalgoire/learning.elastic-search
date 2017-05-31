# Welcome to httpbeat 5.2.1

Queries arbitrary HTTP endpoints in a regular interval and ships the result to the configured output channel.

## Getting Started

To get started with httpbeat, you need to set up Elasticsearch on your localhost first. After that, start httpbeat with:

     ./httpbeat  -c httpbeat.yml -e

This will start the beat and send the data to your Elasticsearch instance. To load the dashboards for httpbeat into Kibana, run:

    ./scripts/import_dashboards

For further steps visit the [Getting started](https://www.elastic.co/guide/en/beats/httpbeat/5.2/httpbeat-getting-started.html) guide.

## Documentation

Visit [Elastic.co Docs](https://www.elastic.co/guide/en/beats/httpbeat/5.2/index.html) for the full httpbeat documentation.

## Release notes

https://www.elastic.co/guide/en/beats/libbeat/5.2/release-notes-5.2.1.html
