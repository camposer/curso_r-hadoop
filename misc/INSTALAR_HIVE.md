# Cómo instalar Hive

1.- Descargar y descomprimir

2.- Definir variables de entorno (~/.bashrc)
export HIVE_HOME=/home/hadoop/apache-hive-0.13.0-bin
export HADOOP_USER_CLASSPATH_FIRST=true
export PATH=$PATH:$HIVE_HOME/bin

3.- Probar hive (metadata embedded)
$ hive

NOTA: Si la instalación de hadoop es local, deberá agregar lo siguiente al archivo `~/.hiverc`
```
SET hive.metastore.warehouse.dir=${env:HOME}/hive-warehouse;
```
