-- Generated by Creer at 09:33PM on December 09, 2015 UTC, git hash: '1b69e788060071d644dd7b8745dca107577844e1'
-- This is a simple class to represent the GameObject object in the game. You can extend it by adding utility functions here in this file.

local class = require("joueur.utilities.class")
local BaseGameObject = require("joueur.baseGameObject")

-- <<-- Creer-Merge: requires -->> - Code you add between this comment and the end comment will be preserved between Creer re-runs.
-- you can add addtional require(s) here
-- <<-- /Creer-Merge: requires -->>

--- @class GameObject: An object in the game. The most basic class that all game classes should inherit from automatically.
local GameObject = class(BaseGameObject)

--- initializes a GameObject with basic logic as provided by the Creer code generator
function GameObject:init(...)
    BaseGameObject.init(self, ...)

    -- The following values should get overridden when delta states are merged, but we set them here as a reference for you to see what variables this class has.

    -- String representing the top level Class that this game object is an instance of. Used for reflection to create new instances on clients, but exposed for convenience should AIs want this data.
    self.gameObjectName = ""
    -- A unique id for each instance of a GameObject or a sub class. Used for client and server communication. Should never change value after being set.
    self.id = ""
    -- Any strings logged will be stored here when this game object logs the strings. Intended for debugging.
    self.logs = Table()
end

--- adds a message to this game object's log. Intended for debugging purposes.
-- @param {string} message: A string to add to this GameObject's log. Intended for debugging.
function GameObject:log(message)
    return (self:_runOnServer("log", {
        message = message,
    }))
end

-- <<-- Creer-Merge: functions -->> - Code you add between this comment and the end comment will be preserved between Creer re-runs.
-- if you want to add any client side logic (such as state checking functions) this is where you can add them
-- <<-- /Creer-Merge: functions -->>

return GameObject
