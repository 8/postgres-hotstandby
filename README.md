# README
This repository holds an example of how to setup postgres for hotstandby.

## Docker
Docker fulfills the dual roles of making the process of setting up postgres both repeatable as well as transparent because every detail is scripted.

The images are based on the official postgres image from docker hub:
https://hub.docker.com/_/postgres/

```dot
digraph {
  node [shape=cylinder fontname=consolas]
  edge [fontname=consolas]
  master -> standby
}
```

## How to start
1. Execute `build-all.cmd` to build all docker images.
2. Execute `compose.cmd` to start all containers.

## Ports
You can connect to the `master` database on port `5432` and to the standby `database` on port `5433`.
