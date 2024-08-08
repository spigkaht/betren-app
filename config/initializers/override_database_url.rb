if ENV['DATABASE_URL']
  database_url = URI.parse(ENV['DATABASE_URL'])
  if database_url.scheme == 'sqlserver'
    ENV['DATABASE_URL'] = nil
  end
end
