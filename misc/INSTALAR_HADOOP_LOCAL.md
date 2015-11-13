# Cómo instalar Hadoop (local)

Para editar archivos fuera del área `/home/ubuntu`, puede utilizar el gedit de la siguiente forma:
```
$ sudo gedit
```

1.- Configurar proxy APT. Dentro del archivo /etc/apt/apt.conf agregar:
```
Acquire::http::Proxy "http://USUARIO:CONTRASEÑA@IP_PROXY:PUERTO_PROXY";
```

2.- Instalar VIM!
```
$ sudo aptitude install vim
```

3.- Instalar JDK (sólo necesario JRE para ejecutar)
```
$ sudo aptitude install openjdk-8-jdk
```

4.- Configurar variables de entorno `JAVA_HOME`. Dentro del `~/.bashrc`
```
export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-i386/
```

5.- Descargar Hadoop y descomprimir en `~/`
NOTA: Para descomprimir: 
```
$ tar xvfz hadoop-0.23.10.tar.gz
```

6.- Configurar variables de entorno `HADOOP_HOME` y `PATH` (dentro de `~/.bashrc`)
```
export HADOOP_HOME=/home/ubuntu/hadoop-2.6.2
export PATH=$PATH:$HADOOP_HOME/bin
```

7.- Verificar la instalación de Hadoop. Puede utilizar MapReduce como una instalación local a este punto
```
$ hadoop version
```
