namespace :db do
  desc "Run migrations for the cable database"
  task migrate_with_cable: :environment do
    ActiveRecord::Base.establish_connection(:cable)
    ActiveRecord::MigrationContext.new('db/migrate', ActiveRecord::SchemaMigration).migrate
  end
end
