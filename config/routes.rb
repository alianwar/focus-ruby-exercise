require 'openapi_first'

require_relative '../app/handlers/web_handlers'

OpenApiFirstApp = Rack::Builder.new do
  responder = OpenapiFirst::Responder.new(
    namespace: Web
  )
  run responder
end

Rails.application.routes.draw do
  get 'test/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  mount OpenApiFirstApp, at: '/'
end
