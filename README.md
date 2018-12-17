# README

### Docker 

prerequisite 

docker 

docker-compose

## Running in docker Steps :

```
- docker build -t ratesbackend .
- docker run -it --rm ratesbackend bundle exec rake test
- docker run -itP ratesbackend
- docker run -itP -v $(pwd):/app ratesbackend
- docker-compose build 
- docker-compose --rm app env
- docker-compose build
- docker-compose up
- docker-compose run app rake db:create
- docker-compose run app rake db:migrate
- docker-compose run app rake db:seed



```

## Without Docker

System dependencies: mysql server , my sql client , rails (<= 5.3.0), ruby (<= 2.5.3), gem, bundler 

For installation of ruby and rails : https://gorails.com/setup/ubuntu/18.10

For installation of mysql products: https://dev.mysql.com/doc/mysql-installation-excerpt/5.7/en/


## Main Steps:
* run git clone _remote_URL_
* cd into local cloned repo
* run bundle intall (This installs all dependencies for your ruby environment)
* Initialise database

## Database initialisation
```
 run rake db:create (This creates the development and testing databases)
 run rake db:seed (This will feed all the database with preconfigured data)
 run rake db:migrate (This will migrate all database models to your mysql)
 
 run rails s to start the server 

 ```
 ### Viewing the application 
 
 * Open Web browser and visit localhost:3000 for the homepage 
 * Visit localhost:3000/markets , /rates , /currencies to view the API side of the App

