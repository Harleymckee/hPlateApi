defmodule HPlateApi.Schema.Types do
  use Absinthe.Schema.Notation

  @desc """
  A user of the blog
  """
  object :post do
    field :id, :id
    field :title, :string
    field :body, :string
    field :posted_at, :time
  end

  # object :customer do
  #   field :id, :id
  #   field :name, :string
  #   field :address, :string
  #   field :pets, list_of(:pet)
  # end
  #
  # object :pet do
  #   field :id, :id
  #   field :name, :string
  #   field :species, :string
  # end
  #
  # object :contact do
  #   field :type, :string
  #   field :value, :string
  # end

  scalar :time do
    description "ISOz time",
    parse &Timex.parse(&1, "{ISOz}")
    serialize &Timex.format!(&1, "{ISOz}")
  end
end
