## Main attributes
default['tomcat']['max_mem'] = '-Xmx2048m'
default['tomcat']['jmx_monitor_password'] = 'tacitmonitor'
default['tomcat']['jmx_control_password'] = 'tacitcontrol'
default['tomcat']['jmx_monitor_user'] = 'monitorRole'
default['tomcat']['jmx_control_user'] = 'controlRole'
default['tomcat']['jmx_remote_port'] = '8011'
default['tomcat']['service_name'] = 'my-tomcat'

## Java installation attributes
default['java']['install_flavor'] = 'openjdk'
default['java']['jdk_version'] = '8'
default['java']['accept_license_agreement'] = true

## JMX related attributes
default['tomcat']['jmx_remote_password_file'] = "/opt/tomcat_#{node['tomcat']['service_name']}/conf/jmxremote.password"
default['tomcat']['jmx_remote_access_file'] = "/opt/tomcat_#{node['tomcat']['service_name']}/conf/jmxremote.access"
default['tomcat']['jmx_remote_ssl'] = false
default['tomcat']['jmx_remote_authenticate'] = true
default['tomcat']['rmi_hostname'] = 'localhost'