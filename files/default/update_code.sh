#!/bin/bash



files="index.php customer.php"

case $1 in
  sim)
    cat index.php.sim > index.php
    cat customer.php.sim.db > customer.php
    cat vis.1.js > vis.js
  ;;
  vis)
    cat index.php.vis > index.php
    cat customer.php.vis.db > customer.php
    cat vis.1.js > vis.js
  ;;
  vis2)
    cat index.php.vis2 > index.php
    cat customer.php.vis.db > customer.php
    cat vis.2.js > vis.js
  ;;
  *)
    echo "Use vis or sim as an argument. exit"; exit 1
  ;;
esac

echo "Don't forget to increase the cookbook's version."

exit 0
