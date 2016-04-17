namespace :letsencrypt do
  task :generate do
  	on roles(:app) do
  	  within current_path do
  	  	with rails_env: fetch(:stage) do
          # execute "sudo openssl genrsa 4096 > lib/letsencrypt_plugin/key/keyfile.pem"
          # execute "rm -rf #{current_path}/lib/letsencrypt_plugin/challenge/challenge"
  	  	  execute :rake, 'letsencrypt_plugin'
    	  end
      end
    end
  end
end
