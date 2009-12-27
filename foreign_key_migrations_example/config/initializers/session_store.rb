# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_foreign_key_migrations_example_session',
  :secret      => '6f662d43b9934ee7e2ccd65444db8a1b8fa6afc62c0c6256f1701e3ce757272446292dbb0e1b8d2a1ec6f6ba16e0e8d0313e99db7c76e3b31df770e54a7afa59'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
