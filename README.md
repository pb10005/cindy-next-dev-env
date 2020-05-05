Development environment for [heyrict/cindy-next](https://github.com/heyrict/cindy-next)
## 1. Prerequisites
- Vagrant
- VirtualBox
- git

## 2. Clone repo
```shell
git clone https://github.com/heyrict/cindy-next.git
```
Note that `Vagrantfile` and `cindy-next` are at the same directory.

## 3. Start a VM instance
```shell
vagrant up
```

## 4. Login to the instance
```shell
vagrant ssh
```

## 5. Setup
```shell
# chmod 777 <filename> to permit execution
./install_nvm.sh
./install_hasura_cli.sh
./install_global_tools.sh

cd /usr/app/cindy
./run_postgres.sh

yarn dev:apollo
./docker-run.sh

hasura migrate apply --admin-secret <your-hasura-admin-secret>

export export HASURA_GRAPHQL_ADMIN_SECRET=<your-hasura-admin-secret>

yarn export-schema
yarn export-graphql-types
yarn dev:next
```