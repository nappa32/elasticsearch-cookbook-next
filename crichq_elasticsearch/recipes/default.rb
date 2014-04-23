bash "fix monit.d" do
	user "root"
	cwd "/etc"
	code <<-EOH
	cd /etc 
	ln -s /etc/monit/conf.d/ monit.d
EOH
ignore_failure true
end
