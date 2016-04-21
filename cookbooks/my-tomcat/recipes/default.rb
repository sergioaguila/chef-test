#
# Cookbook Name:: my-tomcat
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
include_recipe 'java'

tomcat_install 'my-tomcat' do
  version '8.0.32'
end

template "/opt/tomcat_my-tomcat/conf/jmxremote.password" do
	source "jmxremote.password.erb"
        user "tomcat_my-tomcat"
        group "tomcat_my-tomcat"
	mode "0600"
end

template "/opt/tomcat_my-tomcat/conf/jmxremote.access" do
	source "jmxremote.access.erb"
        user "tomcat_my-tomcat"
        group "tomcat_my-tomcat"
	mode "0600"
end

tomcat_service 'my-tomcat' do
  action :restart
  env_vars [{'CATALINA_PID' => '$CATALINA_BASE/bin/tomcat.pid'}, 
  			{'JAVA_OPTS' => node[:tomcat][:max_mem] },
  			{'CATALINA_OPTS' => "-Dcom.sun.management.jmxremote.port=#{node['tomcat']['jmx_remote_port']} " + \
								"-Dcom.sun.management.jmxremote.ssl=#{node['tomcat']['jmx_remote_ssl']} " + \
								"-Dcom.sun.management.jmxremote.authenticate=#{node['tomcat']['jmx_remote_authenticate']} " + \
								"-Dcom.sun.management.jmxremote.password.file=#{node['tomcat']['jmx_remote_password_file']} " + \
								"-Dcom.sun.management.jmxremote.access.file=#{node['tomcat']['jmx_remote_access_file']} " + \
								"-Djava.rmi.server.hostname=#{node['tomcat']['rmi_hostname']}"
  						}
  			]
end
