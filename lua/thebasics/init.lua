-- init.luas go in modules within the lua directory.
-- these are run when the module is required.
require("thebasics.remap") -- Dot notation to access files/modules nested within current ones. From root?
require("thebasics.lazy")
require("thebasics.set_python")
require("thebasics.vim_settings")

