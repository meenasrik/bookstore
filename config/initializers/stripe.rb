require "stripe"

Stripe.api_key = Bookstore::Application.credentials.stripe[:secret_key]

# any kind of stripe authentication and global initializers goes here
