class ApplicationController < ActionController::API

#   def secret_key
#     'h3ll0'
#   end
#
#   def encode(payload)
# # take some user payload and generate a token
#     JWT.encode(payload, secret_key, 'HS256')
#   end
#
# # take a token and tell me which user does this belong to
#   def decode(token)
#     JWT.decode(token, secret_key, true, { algorithm: 'HS256'})[0]
#   end
end
