namespace :letsencrypt do
  task :generate do
  	on roles(:app) do
  	  within current_path do
  	  	with rails_env: fetch(:stage) do
  	  	  FileUtils.rm_rf Dir.glob("home/apps/vrmoment-2.0/current/lib/letsencrypt_plugin/challenge/challenge")
  	  	  execute :bundle, :exec, :rake, 'letsencrypt_plugin'
    	end
      end
    end
  end
end
