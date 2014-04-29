script "install_plugin_es_head" do
	interpreter "bash"
	user "root"
	cwd "#{node.elasticsearch[:dir]}/elasticsearch-#{node.elasticsearch[:version]}/bin/"
	code <<-EOH
	  ## site plugins
  	plugin -install mobz/elasticsearch-head
  	plugin -install royrusso/elasticsearch-HQ
  	plugin -install lukas-vlcek/bigdesk
    plugin -install karmi/elasticsearch-paramedic
  	
  	EOH
	not_if { File.exist?("#{node.elasticsearch[:dir]}/elasticsearch-#{node.elasticsearch[:version]}/plugins/head") }
	ignore_failure true
end
