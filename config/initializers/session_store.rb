# Be sure to restart your server when you modify this file.

H2::Application.config.session_store :cookie_store, key: '_h2_session'

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rails generate session_migration")
# H2::Application.config.session_store :active_record_store
