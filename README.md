# archlinux-install
Personal Script for Archlinux  

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
