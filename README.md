# IBM Websphere Liberty with Vagrant

## Setup

- Install [Vagrant](https://www.vagrantup.com/)
- Install [VirtualBox](https://www.virtualbox.org/wiki/Downloads)
- `git clone https://github.com/spilth/websphere-liberty-vm.github` 
- `cd websphere-liberty-vm`
- Head to [WAS Liberty V8.5.5.7 Runtime](https://developer.ibm.com/wasdev/downloads/#asset/runtimes-8.5.5-wlp-runtime) and click the `Download` button. Then click `Accept and Download`.
- Copy or move the file `wlp-runtime-8.5.5.7.jar` into the `installables` directory of `websphere-liberty-vm`.
- `vagrant up`
- Head to <http://localhost:8080/> and you should see the `Welcome to Liberty` page.

## To Do

- Learn about WebSphere Liberty
- Learn the different between WebSphere Liberty and other WebSphere products
- Figure out how to enable an admin UI
- Figure out how to deploy projects to running instance

