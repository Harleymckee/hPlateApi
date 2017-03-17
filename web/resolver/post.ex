defmodule HPlateApi.Resolver.Post do

  alias HPlateApi.Post
  alias HPlateApi.Repo

  def find(_parent, %{id: id}, _info) do
    case HPlateApi.Repo.get(Post, id) do
      nil  -> {:error, "Post id #{id} not found"}
      user -> {:ok, user}
    end
  end

  def all(_parent, _args, _info) do
    {:ok, Repo.all(Post) }
  end

  def create(_parent, attributes, _info) do
    IO.inspect attributes
    changeset = Post.changeset(%Post{}, attributes)
    case Repo.insert(changeset) do
      {:ok, post} -> {:ok, post}
      {:error, changeset} -> {:error, changeset.errors}
    end
  end
end
