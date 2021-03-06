Rails.configuration.stripe = {
  #:publishable_key => ENV['PUBLISHABLE_KEY'],
  #:secret_key      => ENV['SECRET_KEY']
  :publishable_key => Rails.application.secrets.PUBLISHABLE_KEY,
  :secret_key      => Rails.application.secrets.SECRET_KEY
}

Stripe.api_key = Rails.configuration.stripe[:secret_key]
