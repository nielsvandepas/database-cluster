# MariaDB Galera Cluster
Basically a fork of [Colin Mollenhour's MariaDB Galera Swarm](https://github.com/colinmollenhour/mariadb-galera-swarm "GitHub repository").

## Installation
1. Run `./prepare-database-cluster.sh`
2. Enjoy

## Starting procedure
1. Run `docker stack deploy -c docker-compose.yml database`
2. Wait for database_seed to be healthy (use `docker service ls` to check the health)
3. Scale up the amount of database nodes with `docker service scale database_node=2`
4. Wait for both instances to be healthy
5. Stop the database seed by running `docker service scale database_seed=0`
6. Scale up the amount of database nodes to the desired amount by running `docker service scale database_node=<amount>`
