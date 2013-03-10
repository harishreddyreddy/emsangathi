# Be sure to restart your server when you modify this file.

# Your secret key for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!
# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
if Rails.env.production? && ENV['SECRET_TOKEN'].blank?
 raise 'SECRET_TOKEN environment variable must be set!'
end

Emsangathi::Application.config.secret_token =
    ENV['SECRET_TOKEN'] || '450696f9c4d6fb9a321fe624eaed13b4a19c30ae416b7f2a98b0f26ed86a16cd60d4c1707df39410a43e895774ba891c25899e32f1f02550e52d8b803d319271'
