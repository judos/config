require "libs.all"
require "libs.prototypes.all"

require "config"
if config_set then
	require("config-sets."..config_set)
else
	error("[Mod Config] No config_set was defined in your config.lua")
end