## Requirements
*   [Docker](https://docs.docker.com/install/)
*   [Docker Compose](https://docs.docker.com/compose/install/)

`git clone https://github.com/dblackrun/pbpstats-docker.git`

To start (it will take a few minutes the first time you start):
`docker-compose up -d`

In browser open [localhost:5555](http://localhost:5555)

Log in to pgadmin using default email (pgadmin4@pgadmin.org) and password (admin)

If it is your first time running it, you will need to add the server in pgadmin. Name it whatever you want and under the connection tab enter postgres for the hostname, username and password.

Connect to the server then connect to the pbpstats database, open the query tool and you will be able to query the database.

To stop:
`docker-compose stop`
