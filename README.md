# Polished Wave

A simple example of Phoenix running web sockets.

Examples based on [Real-Time Phoenix - Build Highly Scalable Systems with Channels](https://pragprog.com/titles/sbsockets/real-time-phoenix/).

## Setup

    make app.setup
    make wscat.install

## Guide

Exclude all comments, including trailing comments.

    # try pinging

     $ wscat -c 'ws://localhost:4000/socket/websocket?vsn=2.0.0'
     > ["1","1","ping","phx_join",{}]
     > ["1","2","ping","ping",{}]

    # try wildcard

    $ wscat -c 'ws://localhost:4000/socket/websocket?vsn=2.0.0'
    > ["1","1","wild:1:2","phx_join",{}] # ok
    > ["1","2","wild:1:3","phx_join",{}] # error
