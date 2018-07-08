#!/usr/bin/env bash

ganache-cli -p 7545 > /dev/null & pid=$!
if ps -p $pid > /dev/null
then
  echo "Running ganache..."
else
  echo "Failed to run ganache on 7545 port. Please check whether another one is already using the port"
  exit 1
fi
sleep 5
truffle compile
truffle migrate
sleep 5
truffle test
echo "Terminating ganache..."
kill -9 $pid
