rm ./tmp/pids/server.pid
docker-compose build

docker-compose run --rm web bin/rails db:create
docker-compose run --rm web bin/rails db:migrate
docker-compose run --rm web bin/rails assets:precompile assets:clean
docker-compose run --rm web bin/rails db:seed

docker-compose up -d
