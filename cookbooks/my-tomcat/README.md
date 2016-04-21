my-tomcat Cookbook
==================
This is a tomcat wrapper cookbook. The idea is to leverage the java and tomcat comunity coookbooks to override and configure particular settings.

Requirements
------------
Depends on java and tomcat cookbook

Attributes
----------

There are several attributes by default, the most importants are:

```
['tomcat']['max_mem'] = '-Xmx2048m'
['tomcat']['jmx_monitor_password'] = 'tacitmonitor' -> password for monitorRole user
['tomcat']['jmx_control_password'] = 'tacitcontrol' -> password for controlRole user
['tomcat']['jmx_remote_port'] = '8011'
```

Usage
-----
#### my-tomcat::default

Just include `my-tomcat` in your node's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[my-tomcat]"
  ]
}
```

or

include `my-tomcat-server` role in your node's `run_list`: 


```json
{
  "name":"my_node",
  "run_list": [
    "role[my-tomcat-server]"
  ]
}
```

License and Authors
-------------------
Authors: Sergio Aguila
