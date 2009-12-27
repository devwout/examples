module RedHillConsulting::ForeignKeyMigrations::ActiveRecord::ConnectionAdapters
  module TableDefinition
    def self.included(base)
      base.class_eval do
        alias_method_chain :column, :foreign_key_migrations
        alias_method_chain :primary_key, :foreign_key_migrations
        alias_method_chain :belongs_to, :foreign_key_migrations
        alias_method :references, :belongs_to_with_foreign_key_migrations
      end
    end
    
    def primary_key_with_foreign_key_migrations(name, options = {})
      column(name, :primary_key, options)
    end

    def column_with_foreign_key_migrations(name, type, options = {})
      column_without_foreign_key_migrations(name, type, options)
      references = ActiveRecord::Base.references(self.name, name, options)
      foreign_key(name, references.first, references.last, options) if references
      self
    end
    
    # Never add foreign key constraints to a polymorphic association.
    def belongs_to_with_foreign_key_migrations(*args)
      options = args.extract_options!
      options[:references] = nil if options[:polymorphic]
      belongs_to_without_foreign_key_migrations(*args.push(options))
    end
  end
end
