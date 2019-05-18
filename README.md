# PROXYSQL MEETUP

This repository provides you an example of how to configure:
* proxysql
* mysql master
* mysql slave

## Getting Started

With docker-compose.yml you will build mysql master slave with bin log replication enabled.

In addition you will have proxysql configured to serve mysql master including preconfigured user for start using proxysql immidiatelly after docker-compose run.

commands.sh has some sample commands for you to run against mysql or proxysql.

### Prerequisites

You need docker and docker-compose to be preinstalled on your machine.


### Installing

Just run docker-compose to start.


```
docker-compose up
```
