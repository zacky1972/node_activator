# NodeActivator

A module to activate VM nodes.

This module provides functionality to turn a non-distributed Erlang node into a distributed node.
It handles the entire process of node activation, including:

* Ensuring the EPMD (Erlang Port Mapper Daemon) is running
* Generating unique node names
* Starting the distributed node
* Providing proper error handling and logging

## Features

* Automatic EPMD activation
* Unique node name generation with customizable prefixes
* Idempotent operation (safe to call multiple times)
* Comprehensive error handling
* Detailed logging of node operations

## Usage

The main function `run/1` takes a prefix string and returns either:
* `{:ok, node()}` - The node was successfully started or was already running
* `{:error, reason}` - An error occurred during node activation

## Dependencies

* `epmd_up` - For EPMD management
* `get_host` - For hostname resolution

## Examples

    # Start a new distributed node with prefix "myapp"
    {:ok, node_name} = NodeActivator.run("myapp")
    # => {:ok, :"myapp_abc123@hostname"}

    # Safe to call multiple times
    {:ok, same_node} = NodeActivator.run("myapp")
    # => {:ok, :"myapp_abc123@hostname"}

## Installation

The package can be installed by adding `node_activator` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:node_activator, "~> 1.1"}
  ]
end
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at <https://hexdocs.pm/node_activator>.

## Tested Platforms

* Ubuntu 22.04 / Elixir 1.19 / OTP 28
* Ubuntu 22.04 / Elixir 1.18 / OTP 28
* Ubuntu 22.04 / Elixir 1.18 / OTP 27
* Ubuntu 22.04 / Elixir 1.17 / OTP 27
* Ubuntu 22.04 / Elixir 1.16 / OTP 26
* Ubuntu 22.04 / Elixir 1.15 / OTP 25
* Windows 2022 / Elixir 1.19 / OTP 28
* Windows 2022 / Elixir 1.18 / OTP 28

## License

Copyright (c) 2025 University of Kitakyushu

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at [http://www.apache.org/licenses/LICENSE-2.0](http://www.apache.org/licenses/LICENSE-2.0)

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
