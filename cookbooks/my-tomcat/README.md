my-tom
cat Cookbook
==================
This is a tomcat wrapper cookbook. The idea is to leverage the java and tomcat comunity coookbooks to override and configure particular settings.

Requirements
------------
Depends on java and tomcat cookbook

Attributes
----------

There are several attributes by default, the most importants are:

['tomcat']['max_mem'] = '-Xmx2048m'
['tomcat']['jmx_monitor_password'] = 'tacitmonitor' -> password for monitorRole user
['tomcat']['jmx_control_password'] = 'tacitcontrol' -> password for controlRole user
['tomcat']['jmx_remote_port'] = '8011'


#### my-tomcat::default
<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>['my-tomcat']['bacon']</tt></td>
    <td>Boolean</td>
    <td>whether to include bacon</td>
    <td><tt>true</tt></td>
  </tr>
</table>

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

Contributing
------------
TODO: (optional) If this is a public cookbook, detail the process for contributing. If this is a private cookbook, remove this section.

e.g.
1. Fork the repository on Github
2. Create a named feature branch (like `add_component_x`)
3. Write your change
4. Write tests for your change (if applicable)
5. Run the tests, ensuring they all pass
6. Submit a Pull Request using Github

License and Authors
-------------------
Authors: Sergio Aguila
