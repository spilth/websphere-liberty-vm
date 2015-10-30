# IBM Websphere Liberty with Vagrant

## Setup

- Install [Vagrant](https://www.vagrantup.com/)
- Install [VirtualBox](https://www.virtualbox.org/wiki/Downloads)
- `git clone https://github.com/spilth/websphere-liberty-vm.github` 
- `cd websphere-liberty-vm`
- `git submodule init`
- `git submodule update`
- Head to [WAS Liberty V8.5.5.7 Runtime](https://developer.ibm.com/wasdev/downloads/#asset/runtimes-8.5.5-wlp-runtime) and click the `Download` button. Then click `Accept and Download`.
- Copy or move the file `wlp-runtime-8.5.5.7.jar` into the `installables` directory of `websphere-liberty-vm`.
- Install WebSphere Puppet mofules with `git clone http://github.com/WASdev/ci.puppet.wlp.git modules/wlp`
- `vagrant up`
- Head to <http://localhost:8080/> and you should see the `Welcome to Liberty` page.

## Adding your own WARs

- `vagrant ssh`
- `cd /opt/IBM/liberty/wlp`
- Copy your WAR to `servers/server1/apps/`
- `sudo bin/featureManager install servlet-3.1`
- Agree to the license

Now you want to edit `usr/servers/server1/server.xml` and change it's contents to:

    <server>
            <featureManager>
                    <feature>servlet-3.1</feature>
            </featureManager>

            <httpEndpoint id="defaultHttpEndpoint" host="*" httpPort="9080" httpsPort="9443"/>

            <!-- Customize this as needed -->
            <webApplication contextRoot="demo" location="demo-0.0.1-SNAPSHOT.war" />
    </server>

Then stop and restart the server:

- `sudo bin/server stop server1`
- `sudo bin/server start server1`

It might be helpful to start your server with `sudo bin/server run server1` so you can see debug output without having to tail logs.

## To Do

- Learn about WebSphere Liberty
- Learn the different between WebSphere Liberty and other WebSphere products
- Figure out how to deploy projects to running instance

## Resources

- [WAS Liberty V8.5.5.7 Runtime](https://developer.ibm.com/wasdev/downloads/#asset/runtimes-8.5.5-wlp-runtime)
- [Introducing the Puppet module for WebSphere Liberty](https://developer.ibm.com/wasdev/docs/introducing-puppet-module-websphere-liberty/)
- [was-maven-plugin](https://github.com/orctom/was-maven-plugin)
- [WebSphere Admin Center](https://developer.ibm.com/wasdev/downloads/#asset/features-com.ibm.websphere.appserver.adminCenter-1.0)

