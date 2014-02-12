namespace :server do
	task :restart do
	  sh "/etc/init.d/nginx restart"
	  sh "unicorn -c /var/www/aventurapleinair/config/unicorn.rb -D -E production"
	end
end
