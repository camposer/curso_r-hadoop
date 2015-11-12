# Cómo instalar RHadoop

1.- Para instalar RHadoop debe tener definidas las siguientes variables de entorno: `HADOOP_HOME`, `HADOOP_CONF=$HADOOP_HOME/conf` y `HADOOP_CMD=$HADOOP_HOME/bin/hadoop`

2.- Debe tener una versión de R > 3.2. Para comprobar la versión instalada:
```
$ R --version
```

3.- Si necesita actualizar la versión de R, deberá agregar uno de los mirrors de la CRAN al `/etc/apt/sources.list`. 
- La lista de entradas válidas las puede conseguir en: https://cran.r-project.org/bin/linux/ubuntu/
- La lista de mirrors puede conseguir en: https://cran.r-project.org/mirrors.html

Por ejemplo: 
```
$ sudo echo "deb http://ftp.cixug.es/CRAN/bin/linux/ubuntu wily/" >> /etc/apt/sources.list
$ sudo apt-get update
$ sudo aptitude install r-base
```

4.- Instalar RHadoop (rmr + rhdfs + rhbase)
- Para instalar el paquete `devtools` hay determinados paquetes que deben estar instalados
```
$ sudo aptitude install libcurl4-openssl-dev libxml2-dev 
```

- Descargar los paquetes de RHadoop de: https://github.com/RevolutionAnalytics/RHadoop/wiki/Downloads
	- rmr
	- rhdfs

- Instalar paquetes de RHadoop (`DOWNLOAD_FOLDER` representa la ruta absoluta donde se han descargado los ficheros)
```
$ sudo R CMD javareconf
$ R
> install.packages("devtools")
> library(devtools)
> install.packages("$DOWNLOAD_FOLDER/rmr2_3.3.1.tar.gz")
> install.packages("$DOWNLOAD_FOLDER/rhdfs_1.0.8.tar.gz")

```
