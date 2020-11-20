#!/bin/bash
set -euf -o pipefail

for i in 10.1 10.2 10.3 10.4 10.5
 do
	echo $i
	docker build -t mariadb-local:$i $i && docker rmi mariadb-local:$i
done
