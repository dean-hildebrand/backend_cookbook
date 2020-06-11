class ApplicationController < ActionController::API

# put in credientials and secret folder or gitignore
  def secret_key
    'h3ll0'
  end

    def encode(payload)
    JWT.encode(payload, secret_key, 'HS256')
    end

    def decode(token)
        JWT.decode(token, secret_key, true, { algorithm: "HS256"})[0]
    end

end
