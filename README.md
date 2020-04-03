# Introduction

Blog application for posting blog posts with comments.

# Start Application Locally

The first thing you need is Docker:

Docker will take care of all the needed dependencies:

```
docker-compose up
```
Here is what is included in the docker-compose stack:
* Postgresql
* Rails server (puma)
* Simple Form
* Guard
* Guard::LiveReload
* Better Errors

This application runs on `localhost` and port `3000`

## Rails: to run migration

```
docker-compose run web rake db:migrate
```      
