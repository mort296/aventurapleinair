namespace :restart_server do
	task :restart do
		sh "kill -USR2 1710"
	  sh "/etc/init.d/nginx restart"
	end
end
