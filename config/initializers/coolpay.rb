Coolpay.configure do |config|
  config.username = ENV.fetch('COOLPAY_USERNAME')
  config.apikey   = ENV.fetch('COOLPAY_APIKEY')
  config.env      = Rails.env
end
