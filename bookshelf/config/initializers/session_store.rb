# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_bookshelf_session',
  :secret      => 'aa41055b136d1af71a7c875814bb2d23ec9434877f16b2ed52fa6f889c7fd404a1ff6d0db8efdcbbb62126e448673269059bc62a8d91b6676799a383d16c170a'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
