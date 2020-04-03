# Introduction

Blog application for posting blog posts with comments.

# Start Application Locally

The first thing you need is Docker:

Docker will take care of all the needed dependencies:

```
docker-compose up
```
Here is what is included in the docker-compose stack:
- [PostgreSQL](https://github.com/ged/ruby-pg)
- [Rails Server (puma)](https://puma.io/)
- [Simple Form](https://github.com/plataformatec/simple_form)
- [Guard](https://github.com/guard/guard)
- [Guard LiveReload](https://github.com/guard/guard-livereload)
- [Better Errors](https://rubygems.org/gems/better_errors) 
- [Bulma](https://github.com/joshuajansen/bulma-rails)

This application runs on `localhost` and port `3000`

## Rails: to run migration

```
docker-compose run web rake db:migrate
```      
