-- Game: The traditional 6x7 board with pieces.
-- DO NOT MODIFY THIS FILE
-- Never try to directly create an instance of this class, or modify its member variables.
-- Instead, you should only be reading its variables and calling its functions.


local class = require("joueur.utilities.class")
local BaseGame = require("joueur.baseGame")

-- <<-- Creer-Merge: requires -->> - Code you add between this comment and the end comment will be preserved between Creer re-runs.
-- you can add additional require(s) here
-- <<-- /Creer-Merge: requires -->>

--- The traditional 6x7 board with pieces.
-- @classmod Game
local Game = class(BaseGame)

-- initializes a Game with basic logic as provided by the Creer code generator
function Game:init(...)
    BaseGame.init(self, ...)

    --- The name of this game, "{game_name}".
    -- @field[string] self.name
    -- The following values should get overridden when delta states are merged, but we set them here as a reference for you to see what variables this class has.

    --- The number of tiles on the board along the y (vertical) axis.
    self.cols = 0
    --- A mapping of every game object's ID to the actual game object. Primarily used by the server and client to easily refer to the game objects via ID.
    self.gameObjects = Table()
    --- List of all the players in the game.
    self.players = Table()
    --- A string describing all of the information necessary to fully represent the game's state.
    self.repString = ""
    --- The number of cells on the board along the x (horizontal) axis.
    self.rows = 0
    --- A unique identifier for the game instance that is being played.
    self.session = ""



    self.name = "ConnectFour"

    self._gameVersion = "ff3da34375459be10b77fd8f82b24d9880f0a100e48e2202812118bfcfd42e1e"
    self._gameObjectClasses = {
        GameObject = require("games.connectFour.gameObject"),
        Player = require("games.connectFour.player"),
    }
end


-- <<-- Creer-Merge: functions -->> - Code you add between this comment and the end comment will be preserved between Creer re-runs.
-- if you want to add any client side logic this is where you can add them
-- <<-- /Creer-Merge: functions -->>

return Game
