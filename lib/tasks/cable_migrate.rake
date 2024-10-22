namespace :db do
  desc "Migrate cable database"
  task migrate:with_cable => :environment do
    # Establish connection to the cable database
    ActiveRecord::Base.establish_connection(:cable)

    # Run migrations for the cable database
    ActiveRecord::Migrator.migrate("db/migrate/cable_migrate/")
  end
end
