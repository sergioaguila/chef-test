#
# Cookbook Name:: my-tomcat
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
include_recipe 'java'

tomcat_install node[:tomcat][:service_name] do
  version '8.0.32'
end

template "/opt/tomcat_#{node['tomcat']['service_name']}/conf/jmxremote.password" do
	source "jmxremote.password.erb"
  user "tomcat_#{node['tomcat']['service_name']}"
  group "tomcat_#{node['tomcat']['service_name']}"
	mode "0600"
end

template "/opt/tomcat_#{node['tomcat']['service_name']}/conf/jmxremote.access" do
	source "jmxremote.access.erb"
  user "tomcat_#{node['tomcat']['service_name']}"
  group "tomcat_#{node['tomcat']['service_name']}"
	mode "0600"
end

tomcat_service node[:tomcat][:service_name] do
  action [:enable, :restart]
  env_vars [{'CATALINA_PID' => '$CATALINA_BASE/bin/tomcat.pid'}, 
  			{'JAVA_OPTS' => "#{node['tomcat']['max_mem']} " + \
                "-Dcom.sun.management.jmxremote.port=#{node['tomcat']['jmx_remote_port']} " + \
                "-Dcom.sun.management.jmxremote.rmi.port=#{node['tomcat']['jmx_remote_port']} " + \
								"-Dcom.sun.management.jmxremote.ssl=#{node['tomcat']['jmx_remote_ssl']} " + \
								"-Dcom.sun.management.jmxremote.authenticate=#{node['tomcat']['jmx_remote_authenticate']} " + \
								"-Dcom.sun.management.jmxremote.password.file=#{node['tomcat']['jmx_remote_password_file']} " + \
								"-Dcom.sun.management.jmxremote.access.file=#{node['tomcat']['jmx_remote_access_file']} " + \
								"-Djava.rmi.server.hostname=#{node['tomcat']['rmi_hostname']}"
  						}
  			]
end
