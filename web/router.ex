# defmodule HPlateApi.Router do
#   use HPlateApi.Web, :router
#   #
#   # pipeline :graphql do
#   #   plug HPlateApi.Context
#   # end
#
#   scope "/" do
#     pipe_through :graphql
#
#     get "/graphiql", Absinthe.Plug.GraphiQL, schema: HPlateApi.Schema
#     post "/graphiql", Absinthe.Plug.GraphiQL, schema: HPlateApi.Schema
#     forward "/graphql", Absinthe.Plug, schema: HPlateApi.Schema
#   end
# end

defmodule HPlateApi.Router do
  use Phoenix.Router

  forward "/api", Absinthe.Plug,
    schema: HPlateApi.Schema
end
