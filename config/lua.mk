#
# Configuration for the Lua 4.0 C implementation, required for the Quick
# C-- interpreter in interp/. Do not confuse with the Lua implementation
# in OCaml in directory lua/.
#

# Add cc(1) compiler options to find the header file "lua.h". On Debian,
# the header files are in /usr/inlcude/lua40.

LUAINCLUDES=    $config_lua_inc

# Add cc(1) compiler options to link in the libraries liblua and
# liblualib. The exact name of the libraries depend on your
# installation. Often -llua and -llualib will be good enough. On Debian,
# libraries have the Lua version in their name.

LUALIBS=        $config_lua_lib $config_lua_libs

