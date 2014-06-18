# Agenda

## Intro
* Oss
* Bakgrunn
* Interesser/erfaringer

## Hvorfor?
* Automatisering
* Mindre feil
* Samme oppsett i dev/test/prod
* Time to market!

### Virtualisering
* Hva er det?
* Hvorfor?
* Hvordan? (VMWare/VirtualBox)

## Vagrant
* Automatisert virtualisering
* Oppskrift - Vagrantfile
* Kan deles og repeteres
* Provisioning
* Vise Vagrantfile -> GO!

## Docker
* Hva er det? (LXC)
* Likheter og forskjeller med Vagrant
 * Oppskrift
 * Build once, run everywhere
* Repo, public private
* Layers
* API

## DEMO
* Docker search
* docker pull centos
* CentOS yum install
* Docker CLI (ps, stop, inspect, etc)
* Vår Dockerfile
 * Bygg Dockerimage
 * Hvis enkelt script for én node
* nginx og cluster
 * Startup script
 * dockergen
 * curl-script
* Last ned jenkins image fra repo (aespinosa/jenkins)
 * Spinn opp
 * Vis i browser

## Avslutning
* Virtuelt utviklingsmiljø
* Vagrant og Docker støtter EC2, OpenStack, OpenShift etc.
* Utviklingsmiljø i skyen
* Chaos Monkey og Simian Army!
