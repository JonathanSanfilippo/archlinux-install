# archlinux-install
# Personal scripts to install Arch Linux
- Difficulty: Medium
- Required: Know bash scripts

### Italian
- Collegarsi alla rete manualmente.
- Creare le partizioni manualmente tramite cfdisk.
- Montare una USB con i due scripts in /run/mount
- Portarsi sulla USB con cd /run/mount
- Verificare ultime cose secondo le proprie esigenze aprendo gli script con vim.
- Nel caso si necessiti di dare i permessi di esecuzione agli scripts chmod +x {1.parte.sh,2-parte.sh}
- Avviare l'installazione con ./1-parte.sh
- Attendere di trovarsi in chroot alla fine dell'esecuzione del primo script quindi portarsi in cd /home e avviare il secondo script ./2-parte.sh
- riavviare dopo l'installazione.

### English
- Connect to the network manually.
- Create partitions manually via cfdisk.
- Mount a USB with the two scripts in /run/mount
- Go to the USB with cd /run/mount
- Check last things according to your needs by opening the scripts with vim.
- In case you need to give execute permissions to scripts chmod +x {1.parte.sh,2-parte.sh}
- Start the installation with ./1-part.sh
- Wait to be in chroot at the end of the execution of the first script then go to cd /home and start the second script ./2-parte.sh
- reboot after installation.
