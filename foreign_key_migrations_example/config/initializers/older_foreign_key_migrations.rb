class ActiveRecord::Base
  def self.foreign_key_migrations_enabled
    ActiveRecord::Migrator.current_version >= 20091220125415
  end
end