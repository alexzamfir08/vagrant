## Instalare

# Virtual Box

Instalam VirtualBox de la https://www.virtualbox.org/

# Vagrant

Instalam vagrant de la https://www.vagrantup.com/

Va fi nevoie sa instalam si un plugin de vagrant care ne asigura actualizarea automata a guest additions.

    vagrant plugin install vagrant-vbguest

Doar pentru cei cu windows:

    vagrant plugin install vagrant-winnfsd

# Configurare Host

modifica in hosts subdomeniile sa duca catre noul VPS:
ex:

    192.168.56.2 healthspan.dev.com
    
# Suport Debug

Completam setup-ul Zend Server pentru a avea debug:
http://healthspan.dev.com:10081/

Apoi daca avem deja deschisa vreo pagina de aplicatie, dam refresh sa putem avea debug activ.

Pentru a activa sesiuni de debug in PHPStorm apasa pe butonul din dreapta sus
pe care scrie Start Listening for PHP Debug Connections
Apoi ca sa faci debug, dintr-o pagina, folosind Toolbarul Z-Ray de jos click pe pictograma
cu gandacul si alege Debug this page.