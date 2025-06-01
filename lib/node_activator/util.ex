defmodule NodeActivator.Util do
  @moduledoc """
  Utility functions for NodeActivator, providing helper functions for node management
  and name generation in distributed Erlang systems.
  """

  @doc """
  Generates a unique node name by combining a prefix with a random string and the hostname.

  ## Parameters
    * `prefix` - A binary string that will be used as the prefix for the node name.
      Spaces in the prefix will be replaced with hyphens.

  ## Returns
    * `{:ok, atom()}` - A tuple containing the generated node name as an atom.
    * `{:error, binary()}` - A tuple containing an error message if the hostname cannot be determined.

  ## Examples
      iex> {:ok, node_name} = NodeActivator.Util.generate_node_name("test")
      iex> is_atom(node_name)
      true
      iex> Atom.to_string(node_name) =~ ~r/test_[a-z2-7]+@.+/
      true
  """
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
