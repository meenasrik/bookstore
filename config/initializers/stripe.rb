require "stripe"

# Stripe.api_key = "sk_test_4eC39HqLyjWDarjtT1zdp7dc"
Stripe.api_key = Bookstore::Application.credentials.stripe[:secret_key]

# any kind of stripe authentication and global initializers goes here
