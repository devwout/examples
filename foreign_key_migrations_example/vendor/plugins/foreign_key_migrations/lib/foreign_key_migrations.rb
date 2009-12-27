ActiveRecord::Base.send(:include, RedHillConsulting::ForeignKeyMigrations::ActiveRecord::Base)
ActiveRecord::Migration.send(:include, RedHillConsulting::ForeignKeyMigrations::ActiveRecord::Migration)
ActiveRecord::ConnectionAdapters::Table.send(:include, RedHillConsulting::ForeignKeyMigrations::ActiveRecord::ConnectionAdapters::Table)
ActiveRecord::ConnectionAdapters::TableDefinition.send(:include, RedHillConsulting::ForeignKeyMigrations::ActiveRecord::ConnectionAdapters::TableDefinition)
