# README

### Docker 

prerequisite 

docker 

docker-compose

#### Steps :

```
- docker build -t ratesbackEndBank .
- docker run -it --rm ratesbackEndBank bundle exec rake test
- docker run -itP ratesbackEndBank
- docker run -itP -v $(pwd):/app ratesBackEnd
- docker-compose build 
- docker-compose --rm app env
- docker-compose build
- docker-compose up
- docker-compose run app rake db:create
- docker-compose run app rake db:migrate
- docker-compose run app rake db:seed



```



## Main Steps:
* run git clone _remote_URL_
* cd into local cloned repo
* run bundle intall (This installs all dependencies for your ruby environment)
* Initialise database

## Database initialisation
 * run rake db:create (This creates the development and testing databases)
 * run rake db:seed (This will feed all the database with preconfigured data)
 * run rake db:migrate (This will migrate all database models to your mysql)


* Ruby version: 2.5.3 
* System dependencies: mysql server , docker 
* Configuration

* run rake db:migrate 
* Database initialization
* How to run the test suite
* Services (job queues, cache servers, search engines, etc.)
* Deployment instructions
* ...
