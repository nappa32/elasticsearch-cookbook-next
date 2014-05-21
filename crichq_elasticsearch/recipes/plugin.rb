
script "install_plugins" do
	interpreter "bash"
	user "root"
	cwd "#{node.elasticsearch[:dir]}/elasticsearch-#{node.elasticsearch[:version]}/bin/"
	code <<-EOH
	  ## site plugins 
  	plugin -install royrusso/elasticsearch-HQ
  	
  	EOH
 	ignore_failure true
end
