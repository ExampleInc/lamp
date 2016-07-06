#!/bin/bash



files="index.php customer.php"

case $1 in
  old)
    cp -f index.php.sim index.php
    cp -f customer.php.sim.db customer.php
  ;;
  new)
    cp -f index.php.vis index.php
    cp -f customer.php.vis.db customer.php
  ;;
  *)
    echo "Use old or new as an argument. exit"; exit 1
  ;;
esac

exit 0
