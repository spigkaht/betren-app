if Rails.env.production?
  config = {
    adapter: 'sqlserver',
    host: ENV['POR_DB_HOST'],
    port: ENV.fetch('POR_DB_PORT', 1433),
    username: ENV['POR_DB_USERNAME'],
    password: ENV['POR_DB_PASSWORD'],
    database: 'POR',
    azure: false
  }
  ActiveRecord::Base.establish_connection(config)
end
