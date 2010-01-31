# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_acmlanparty_session',
  :secret      => '773b53d03eb059869884dcaa5aa54b056c740b9b33ae4aa77b75d77dc32b26050e7db9069c887474e3b1f8d3db41fe6da8924a04329f5330c2d10e5645e90e49'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
