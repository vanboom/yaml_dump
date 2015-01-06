namespace :yaml_dump do
  desc "Dump the database to a .yaml file using YAML"

  desc 'Create YAML test fixtures from data in an existing database. Defaults to development database.  Set RAILS_ENV to override.'
  task :dump => :environment do
    Dir.mkdir("tmp/fixtures") unless Dir.exists?("tmp/fixtures")
    sql  = "SELECT * FROM %s"
    skip_tables = ["schema_info","schema_migrations"]
    ActiveRecord::Base.establish_connection
    (ActiveRecord::Base.connection.tables - skip_tables).each do |table_name|
      i = "000"
      data = ActiveRecord::Base.connection.select_all(sql % table_name)
      if data.count > 0
        filename = "%s/tmp/fixtures/%s.yml" % [Rails.root, table_name]
        File.open(filename, 'w') do |file|
          puts "Writing ./tmp/fixtures/%s.yml with [%d] rows." % [table_name, data.count]
          file.write data.inject({}) { |hash, record|
            # excluded attributes
            h = ["id","created_at","updated_at"]
            record.except!(*h)
            hash["#{table_name}_#{i.succ!}"] = record
            hash
          }.to_yaml
        end
      end
    end
  end
end
