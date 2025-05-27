defmodule NodeActivator.Util do
  @moduledoc false

  @doc false
  @spec generate_node_name(binary()) :: {:ok, atom()} | {:error, binary()}
  def generate_node_name(prefix) do
    prefix = Regex.replace(~r/\s/, prefix, "-")
    random_string = :crypto.strong_rand_bytes(5) |> Base.encode32(case: :lower)

    case GetHost.name() do
      {:ok, hostname} -> {:ok, :"#{prefix}_#{random_string}@#{hostname}"}
      {:error, reason} -> {:error, reason}
    end
  end
end