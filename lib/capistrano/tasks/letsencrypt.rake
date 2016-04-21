namespace :letsencrypt do
  task :generate do
  	on roles(:app) do
  	  within current_path do
  	  	with rails_env: fetch(:stage) do
  	  	  execute :rm, "-rf", "home/apps/vrmoment-2.0/current/lib/letsencrypt_plugin/challenge/challenge"
  	  	  execute :bundle, :exec, :rake, 'letsencrypt_plugin'
    	  end
      end
    end
  end
end
