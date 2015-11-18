# Cómo instalar RHive

1.- Instalar Rserve
```
$ R
> install.packages("Rserve")
> install.packages("rJava")
```

2.- Instalar RHive
- Descargar el código fuente de: https://github.com/nexr/RHive
- Dentro de la carpeta de `RHive` ejecutar:
```
$ ant build
$ R CMD build RHive
$ R CMD INSTALL RHive_.tar.gz
```
