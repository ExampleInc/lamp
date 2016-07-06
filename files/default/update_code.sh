#!/bin/bash



files="index.php customer.php"

case $1 in
  sim)
    cp -f index.php.sim index.php
    cp -f customer.php.sim.db customer.php
  ;;
  vis)
    cp -f index.php.vis index.php
    cp -f customer.php.vis.db customer.php
  ;;
  *)
    echo "Use vis or sim as an argument. exit"; exit 1
  ;;
esac

exit 0
