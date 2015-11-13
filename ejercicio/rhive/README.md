# Instrucciones

Para ejecutar:
```
$ hiveserver2 (en otra pestaña)
$ R
> library(RHive)
> rhive.init()
> rhive.connect(defaultFS="file:///home/ubuntu")
> rhive.query("SELECT productId, AVG(score), MIN(score), MAX(score) FROM movies GROUP BY productId")
```
