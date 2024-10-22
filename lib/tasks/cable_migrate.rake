namespace :db do
  desc "Migrate the cable database"
  task migrate_with_cable: :environment do
    ActiveRecord::Base.establish_connection(:cable) do
      ActiveRecord::Migrator.migrate("db/cable_migrate")
    end
  end
end
