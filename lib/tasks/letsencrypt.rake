namespace :letsencrypt do
  desc "regenerate let's encrypt pem"
  task :generate => :environment do
    # rm_rf "home/apps/vrmoment/current/lib/letsencrypt_plugin/challenge/challenge"
    # Rake::Task["letsencrypt_plugin"].execute
  end
end