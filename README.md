# nerves_motd

[![Hex version](https://img.shields.io/hexpm/v/nerves_motd.svg "Hex version")](https://hex.pm/packages/nerves_motd)
[![CircleCI](https://circleci.com/gh/nerves-project/nerves_motd.svg?style=svg)](https://circleci.com/gh/nerves-project/nerves_motd)

`nerves_motd` prints a "message of the day" (MOTD) for Nerves-based projects.

![](https://user-images.githubusercontent.com/7563926/132355144-77484f9f-db03-49f0-a9a6-c16688155c1c.png)

## Usage

Just invoke `NervesMOTD.print/1` in `rootfs_overlay/etc/iex.exs` of your Nerves projects.

```elixir
NervesMOTD.print()
```

By default, `NervesMOTD.print/1` prints Nerves logo, but you can replace it with your custom logo if you wish.

```elixir
NervesMOTD.print(
  logo: """
  My custom logo
  """
)
```

## Installation

Te package can be installed by adding `nerves_motd` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:nerves_motd, "~> 0.1.0"}
  ]
end
```

Documentation can be found at [https://hexdocs.pm/nerves_motd](https://hexdocs.pm/nerves_motd).

## License

Copyright (C) 2021 Masatoshi Nishiguchi, Nerves Project Authors

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at [http://www.apache.org/licenses/LICENSE-2.0](http://www.apache.org/licenses/LICENSE-2.0)

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.
