#!/bin/bash
for f in *.sql
do
	archivo="${f%.*}"
	echo "SUBIENDO"
	psql -h localhost -p 5432 -d ruteo_univalle -U user -f $archivo.sql
done 
