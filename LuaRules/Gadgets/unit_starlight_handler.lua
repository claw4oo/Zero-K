--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
if not gadgetHandler:IsSyncedCode() then
	return
end
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
function gadget:GetInfo()
	return {
		name = "Starlight Handler",
		desc = "Handle Starlight Satellite transfer and beam interruption",
		author = "Anarchid",
		date = "1.07.2016",
		license = "Public domain",
		layer = 21,
		enabled = true,
	}
end

local spGetUnitRulesParam = Spring.GetUnitRulesParam
local spTransferUnit = Spring.TransferUnit

local transfers = {}
local alreadyAdded

--local starlights = {}

local starlightDefID = UnitDefNames["mahlazer"].id
local starlightWeapons = {}
for i = 1, #UnitDefs[starlightDefID].weapons do
	local weaponDefID = UnitDefs[starlightDefID].weapons[i].weaponDef
	starlightWeapons[weaponDefID] = true
end

--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- Transfer handling

function gadget:UnitGiven(unitID, unitDefID, newTeam)
	local satID = spGetUnitRulesParam(unitID, 'has_satellite')
	if not satID then
		return
	end

	transfers[satID] = newTeam
	if alreadyAdded then
		return
	end

	gadgetHandler:UpdateCallIn("GameFrame")
	alreadyAdded = true
end

function gadget:GameFrame(f)
	for satID, team in pairs(transfers) do
		spTransferUnit(satID, team, false)
		transfers[satID] = nil
	end
	alreadyAdded = false
	gadgetHandler:RemoveCallIn("GameFrame")
end

--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- Beam block handling

function gadget:Explosion_GetWantedWeaponDef()
	local wantedList = {}
	for weaponDefID, _ in pairs(starlightWeapons) do
		wantedList[#wantedList + 1] = weaponDefID
	end
	return wantedList
end

function gadget:Explosion(weaponID, px, py, pz, ownerID, proID)
	if starlightWeapons[weaponID] and ownerID then
		GG.Starlight_DamageFrame[ownerID] = Spring.GetGameFrame()
	end
end

--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- Initialization

--function gadget:UnitCreated(unitID, unitDefID)
--	if unitDefID == starlightDefID then
--		starlights[unitID] = true
--	end
--end
--
--function gadget:UnitDestroyed(unitID, unitDefID)
--	if unitDefID == starlightDefID then
--		starlights[unitID] = nil
--	end
--end

function gadget:Initialize()
	alreadyAdded = false
	gadgetHandler:RemoveCallIn("GameFrame")
	
	--for _, unitID in pairs(Spring.GetAllUnits()) do
	--	gadget:UnitCreated(unitID, Spring.GetUnitDefID(unitID))
	--end
	
	GG.Starlight_DamageFrame = {}
	local ud = UnitDefs[starlightDefID]
	
	for weaponDefID, _ in pairs(starlightWeapons) do
		if Script.SetWatchExplosion then
			Script.SetWatchExplosion(weaponDefID, true)
		else
			Script.SetWatchWeapon(weaponDefID, true)
		end
	end
end
