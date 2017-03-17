defmodule HPlateApi.Schema do
  use Absinthe.Schema

  alias HPlateApi.Resolver

  import_types HPlateApi.Schema.Types

  query do
    field :posts, list_of(:post) do
      resolve &Resolver.Post.all/3
    end
  end

  mutation do
    field :create_post, :post do
      arg :title, non_null(:string)
      arg :body, non_null(:string)

      resolve &Resolver.Post.create/3
    end
  end
end
