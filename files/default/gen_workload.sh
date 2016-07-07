#!/bin/bash


makeload_on() {
  dst_host=$1
  reqs=$(shuf -i101-5000 -n1)
  ab -c 100 -n $reqs $1 &
}

makeload_on http://acceptance01.example.com/index.php
makeload_on http://union01.example.com/index.php
makeload_on http://rehearsal01.example.com/index.php
makeload_on http://delivered01.example.com/index.php

