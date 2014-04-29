script "install_plugins" do
	interpreter "bash"
	user "root"
	cwd "#{node.elasticsearch[:dir]}/elasticsearch-#{node.elasticsearch[:version]}/bin/"
	code <<-EOH
	  ## site plugins 
  	plugin -install royrusso/elasticsearch-HQ
  	plugin -install lukas-vlcek/bigdesk
        plugin -install karmi/elasticsearch-paramedic
  	
  	EOH
 	ignore_failure true
end
