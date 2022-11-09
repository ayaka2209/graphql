Rails.application.routes.draw do
  # if Rails.env.development?
  #   mount GraphiQL::Rails::Engine, at: "/graphiql", graphql_path: "/graphql"
  # end
  # GraphQL
  if Rails.env.development?
    mount GraphiQL::Rails::Engine, at: '/graphiql', graphql_path: '/graphql'
    resources :posts
  end
  post "/graphql", to: "graphql#execute"
  # resources :posts
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
