-- LuaRocks configuration

rocks_trees = {
   { name = "user", root = home .. "/.luarocks" };
   { name = "system", root = "/home/qrodriguez/.config/nvim/.tests/data/nvim/lazy-rocks/hererocks" };
}
variables = {
   LUA_DIR = "/home/qrodriguez/.config/nvim/.tests/data/nvim/lazy-rocks/hererocks";
   LUA_BINDIR = "/home/qrodriguez/.config/nvim/.tests/data/nvim/lazy-rocks/hererocks/bin";
   LUA_VERSION = "5.1";
   LUA = "/home/qrodriguez/.config/nvim/.tests/data/nvim/lazy-rocks/hererocks/bin/lua";
}
