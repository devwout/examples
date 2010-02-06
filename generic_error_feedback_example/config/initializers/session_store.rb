# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_generic_error_handling_example_session',
  :secret      => 'b08db5a563d749711cd59e0bf439793d483a992f2892c2076176762b1a8fda260bbd3e8828d8cd6d1a9890fab9815e6f41ea7262733e62b5180ffb084990c73f'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
