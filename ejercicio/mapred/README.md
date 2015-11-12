# Instrucciones

## map.awk y reduce.awk sin MapReduce

1.- Ajustar el archivo movies.txt a un archivo separado por pipes
```
$ awk -f process.awk movies.txt > movies-lines.txt
```

2.- Extraer subconjunto del archivo movies-lines.txt
```
$ head -2000 movies-lines.txt > movies-lines2000.txt
```

3.- Ejecutar el comando map.awk sobre el archivo movies-lines2000.txt
```
$ ./map.R movies-lines2000.txt 
```

4.- Ejecutar el comando map.awk con el sort y el reduce.awk 
```
$ ./map.R movies-lines2000.txt | sort | ./reduce.R > resultado
```

## MapReduce

$ hadoop jar $HADOOP_HOME/share/hadoop/tools/lib/hadoop-streaming-2.6.0.jar -mapper map.R -reducer reduce.R -input /ejemplos/movies/movies-lines2000.txt -output /ejemplos/movies/output

NOTA: El archivo movies-lines2000.txt previamente debió subirse al HDFS en la carpeta /ejemplos/movies
