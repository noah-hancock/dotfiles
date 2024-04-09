# My nvim Config
This repository is mostly meant to allow me to sync configs between machines.

# Installation
*You will not need to create a folder called `nvim` cloning the repo should do it for you.*

## Windows
Clone this repository into `C:\Users\%USERNAME%\AppData\Local\nvim`

## Linux
Clone this repository into `~/.config/nvim`

# Known Errors in this Config
```lua
{
  cmd = "cmd",
  opts = {
    args = { "/C", "move", "/Y", "parser.so", "C:/Users/**/AppData/Local/nvim-data/lazy/nvim-treesitter\\parser\\markdown.so" },
    cwd = "c:\\Users\\**\\AppData\\Local\\nvim-data\\tree-sitter-markdown\\tree-sitter-markdown",
    stdio = {
      [2] = <userdata 1>,
      [3] = <userdata 2>
    }
  }
}
```
Delete `*.so` files in `nvim-data/lazy/nvim-treesitter/parser`
