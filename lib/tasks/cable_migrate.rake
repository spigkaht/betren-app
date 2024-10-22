namespace :db do
  desc 'Run migrations for the cable database'
  task migrate:with_cable => :environment do
    ActiveRecord::Base.establish_connection(:cable)
    ActiveRecord::Migrator.migrations_paths = ['db/cable_migrate']
    ActiveRecord::MigrationContext.new('db/cable_migrate', ActiveRecord::SchemaMigration).migrate
  end
end
