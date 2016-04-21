# chef-test

This is a test repository which contains a Vagrant file and a chef tomcat wrapper cookbook called my-tomcat (check it's README file for details).

Usage
-----

Just run:

```
vagrant up
```

It will launch a centos6 box with tomcat installed and jmx enabled.

The default password for jmx, port and other settings can be modified in the attributes file of the my-tomcat cookbook.

Default values
--------------

JMX:
 
```
Port: 8011 -> this port is forwarded to the host for monitoring JMX from there
monitorRole user password: tacitmonitor
```

Tomcat:

```
Max memory: 2048m
```

JMX Testing
-------

For JMX testing, run jconsole in your workstation and complete the following parameters:

```
Remote process: localhost:8011
Username: monitorRole
Password: tacitmonitor
```

Please ignore the ssl error and continue with an insecure connection.