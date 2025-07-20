local util = require("k2so-tweaks.util")

local patch = util.patch.new_patch("mod-hot-metals")
patch:add_required_mod("hot-metals")

function patch.on_data_final_fixes()
	util.recipe.replace_ingredient("kr-glass", "glass", "hot-glass", 8, "item")
end

return patch