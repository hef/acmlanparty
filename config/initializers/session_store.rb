# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_acmlanparty_session',
  :secret      => '92eab306935c7e9129e033532523860e81eb45ba49accf526a1f6b614fbde740e51b554d2f958dc4f03c2dc81f5ad957c5881313281420439f5b101b1e56dad5'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
