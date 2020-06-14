
adaptation of
https://github.com/rlafranchi/pong
(simplified as there is only one game)

https://blog.capsens.eu/how-to-write-javascript-in-rails-6-webpacker-yarn-and-sprockets-cdf990387463

you need to install redis server:
brew install redis
and run it in the background: 
redis-server &

before running this rails app (because the app uses the 
gem redis which is a redis client, talking to a redis server
that should be running in the background)


TODOS : score, leave button


