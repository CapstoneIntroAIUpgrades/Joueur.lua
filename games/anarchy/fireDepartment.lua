-- Generated by Creer at 12:13AM on November 01, 2015 UTC, git hash: '1b69e788060071d644dd7b8745dca107577844e1'
-- This is a simple class to represent the FireDepartment object in the game. You can extend it by adding utility functions here in this file.

local class = require("joueur.utilities.class")
local Building = require("games.anarchy.building")

-- <<-- Creer-Merge: requires -->> - Code you add between this comment and the end comment will be preserved between Creer re-runs.
-- you can add addtional require(s) here
-- <<-- /Creer-Merge: requires -->>

--- @class FireDepartment: Can put out fires completely.
local FireDepartment = class(Building)

--- initializes a FireDepartment with basic logic as provided by the Creer code generator
function FireDepartment:init(...)
    Building.init(self, ...)

    -- The following values should get overridden when delta states are merged, but we set them here as a reference for you to see what variables this class has.

    -- The amount of fire removed from a building when bribed to extinguish a building.
    self.fireExtinguished = 0
end

--- Bribes this FireDepartment to extinguish the some of the fire in a building.
-- @param {Building} building: The Building you want to extinguish.
-- @returns <boolean> true if the bribe worked, false otherwise
function FireDepartment:extinguish(building)
    return not not (self:_runOnServer("extinguish", {
        building = building,
    }))
end

-- <<-- Creer-Merge: functions -->> - Code you add between this comment and the end comment will be preserved between Creer re-runs.
-- if you want to add any client side logic (such as state checking functions) this is where you can add them
-- <<-- /Creer-Merge: functions -->>

return FireDepartment
