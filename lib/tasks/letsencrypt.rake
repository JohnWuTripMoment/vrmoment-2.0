namespace :letsencrypt do
  desc "regenerate let's encrypt pem"
  task :generate => :environment do
    FileUtils.rm_rf Dir.glob("home/apps/vrmoment-2.0/current/lib/letsencrypt_plugin/challenge/challenge")
    Rake::Task["bundle exec rake:letsencrypt_plugin"].invoke
  end
end