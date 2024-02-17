# Voting App

A simple distributed application running across multiple Docker containers - Taken from https://github.com/dockersamples.

## App Architecture

<img src="architecture.excalidraw.png" width=250 height=200>

* A front-end web app in [Python](/vote) which lets you vote between two options
* A [Redis](https://hub.docker.com/_/redis/) which collects new votes
* A [.NET](/worker/) worker which consumes votes and stores them in…
* A [Postgres](https://hub.docker.com/_/postgres/) database backed by a Docker volume
* A [Node.js](/result) web app which shows the results of the voting in real time

## CI/CD Architecture

<img src="board.png" width=250 height=200>
