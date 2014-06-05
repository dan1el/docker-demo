# Agenda

### Intro
* Oss
* Bakgrunn
* Interesser/erfaringer

### Hvorfor?
* Automatisering
* Mindre feil
* Samme oppsett i dev/test/prod
* Time to market!

### Virtualisering
* Hva er det?
* Hvorfor?
* Hvordan? (VMWare/VirtualBox)

### Vagrant
* Automatisert virtualisering
* Oppskrift - Vagrantfile
* Kan deles og repeteres
* Provisioning
* Vise Vagrantfile -> GO!

### Docker
* Hva er det? (LXC)
* Likheter og forskjeller med Vagrant
..* Oppskrift
..* Build once, run everywhere
* Repo, public private
* Layers
* API

### DEMO
* Docker search
* CentOS m/ vim
* Dockerfile -> CentOS m/ vim
* Dockerfile -> CentOS m/ node
* Docker CLI (ps, stop, inspect, etc)
* Vår Dockerfile
..* Eksempel app (Kodegjennomgang)
..* Bygg Dockerimage
..* Hvis enkelt script for én node
..* Spinn opp
* nginx og cluster
..* Startup script
..* dockergen
..* curl-script
* Bygg version v1.1 av app
..* Spinn opp node
..* curl-script
* Last ned jenkins image fra repo (aespinosa/jenkins)
..* Spinn opp
..* Hvis i browser

### Vagrant
* Vagrantfile
* SSH til server
* Inception! A dream within a dream!
* Docker run!
* Vagrant Docker integrasjon - Windows/OS X

### Avslutning
* Virtuelt utviklingsmiljø
* Vagrant og Docker støtter EC2, OpenStack, OpenShift etc.
* Utviklingsmiljø i skyen
* Chaos Monkey og Simian Army!
