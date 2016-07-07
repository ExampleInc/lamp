#!/bin/bash



files="index.php customer.php"

case $1 in
  sim)
    cat index.php.sim > index.php
    cat customer.php.sim.db > customer.php
  ;;
  vis)
    cat index.php.vis > index.php
    cat customer.php.vis.db > customer.php
  ;;
  vis2)
    cat index.php.vis2 > index.php
    cat customer.php.vis.db > customer.php
  ;;
  *)
    echo "Use vis or sim as an argument. exit"; exit 1
  ;;
esac

exit 0
