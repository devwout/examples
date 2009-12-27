module RedHillConsulting::ForeignKeyMigrations::ActiveRecord::ConnectionAdapters
  module Table
    def self.included(base)
      base.class_eval do
        alias_method_chain :belongs_to, :foreign_key_migrations
        alias_method :references, :belongs_to_with_foreign_key_migrations
      end
    end
    
    # Never add foreign key constraints to a polymorphic association.
    def belongs_to_with_foreign_key_migrations(*args)
      options = args.extract_options!
      options[:references] = nil if options[:polymorphic]
      belongs_to_without_foreign_key_migrations(*args.push(options))
    end
  end
end
