# Emily-as-a-Service

Very simple Sinatra sample app, offering a small selection of the
works of Emily Dickinson via an API.

[![Deploy](https://www.herokucdn.com/deploy/button.png)](https://heroku.com/deploy)

## Usage

Get a random poem:
```console
$  curl http://emily-as-a-service.herokuapp.com/poems/random
```

Get a poem about something specific:
```console
$  curl http://emily-as-a-service.herokuapp.com/poem/about/bees
```

