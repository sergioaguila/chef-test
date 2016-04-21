# chef-test

This is a test repository which contains a Vagrant file and a chef tomcat wrapper cookbook.

Usage:

Just run:

```
vagrant up
```

It will launch a centos6 box with tomcat installed and jmx enabled.

The default password for jmx, port and other settings can be modified in the attributes file of the my-tomcat cookbook.

Defaults:

JMX:
 
```
Port: 8011 -> this port is forwarded to the host for monitoring JMX from there
monitorRole user password: tacitmonitor
```

Tomcat:

```
Max memory: 2048m
```
