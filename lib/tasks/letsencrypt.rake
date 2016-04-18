namespace :letsencrypt do
  desc "regenerate let's encrypt pem"
  task :generate => :environment do
    rm_rf "home/apps/vrmoment-2.0/current/lib/letsencrypt_plugin/challenge/challenge"
    # Rake::Task["letsencrypt_plugin"].execute
    Rake::Task["bundle exec rake:letsencrypt_plugin"].invoke
  end
end