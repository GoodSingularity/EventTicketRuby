#IEX configure, to fetch STOCKS.
IEX::Api.configure do |config|
    config.publishable_token = 'pk_0cd385b6e5dc4d2c8d3bcf33e9121afb' # defaults to ENV['IEX_API_PUBLISHABLE_TOKEN']
    config.secret_token = 'sk_f1e3721d1cbd453882816a252a34b226' # defaults to ENV['IEX_API_SECRET_TOKEN']
    config.endpoint = 'https://cloud.iexapis.com/v1' # use 'https://sandbox.iexapis.com/v1' for Sandbox
  end
  