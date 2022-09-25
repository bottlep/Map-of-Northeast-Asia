-- EffectLuaScript03
-- Author: bottlep
-- DateCreated: 7/30/2022 12:12:22 AM
--------------------------------------------------------------


local m_iTargetProject = GameInfo.Projects['PROJECT_NEA_CONSTRUCT_PALACE'].Index


--function GrantRandomCivic(playerID, era:string)
    --local pPlayer = Players[playerID]
    --if pPlayer == nil then
        --return
    --end
    --
    --local civlist = {}
    --local playerCulture = pPlayer:GetCulture()
    --
	--for row in GameInfo.Civics() do
		--if (row.EraType == era) 
		--and (not playerCulture:HasCivic(row.Index)) then
            --table.insert(civlist, row.Index)
        --end
	--end
    --
    --if #civlist ~= 0 then
        --local iCivic = civlist[math.random(#civlist)]
        --playerCulture:SetCivic(iCivic, true)
    --end
--end
--

--function OnCityProjectCompleted(playerID, cityID, projectID, buildingIndex, iX:number, iY:number, bCancelled)
	--
    --if (projectID == m_iTargetProject) then
--
        ----GrantRandomCivic(playerID, 'ERA_ATOMIC')    --时代在这里设置
--
		----local ppCity=CityManager.GetCityAt(iX, iY);
		----ppCity:SetName(Locale.Lookup('LOC_NEACITYNAME_1458675'));
--
		--local pcity=CityManager.GetCity(playerID,cityID);
		--
		----CityManager.SetAsCapital(pcity);
		----CityManager.SetAsOriginalCapital(pcity);
		----pcity:SetName(Locale.Lookup('LOC_NEACITYNAME_555666'));
    --end
--end
--

--Events.CityProjectCompleted.Add(OnCityProjectCompleted)








local m_NEA_CONSTRUCT_PALACE_Project = GameInfo.Projects['PROJECT_NEA_CONSTRUCT_PALACE'].Index
local m_NEA_XIUYANGSHENGXI_Project = GameInfo.Projects['PROJECT_NEA_XIUYANGSHENGXI'].Index

function NeaMoveCapital(ipcityID)

	CityManager.SetAsCapital(ipcityID);
	CityManager.SetAsOriginalCapital(ipcityID);


end


function NeaConstructPalace(IPplayerID, IPcityID, IPprojectID, IPbuildingIndex, IPiX, IPiY, IPbCancelled)

	--ipcityID:SetName(Locale.Lookup('LOC_NEACITYNAME_555666'));
	--local pCity=CityManager.GetCityAt(IPiX,IPiY);
	--pCity:SetName(Locale.Lookup('LOC_NEACITYNAME_XIANYANG'));
	--NeaMoveCapital(IPcityID);
--
	--CityManager.SetAsCapital(IPcityID);
	--CityManager.SetAsOriginalCapital(IPcityID);
	--

	if (IPprojectID == m_NEA_CONSTRUCT_PALACE_Project) then
		local pcity=CityManager.GetCity(IPplayerID,IPcityID);
        --CityManager.SetAsCapital(pcity);
		--CityManager.SetAsOriginalCapital(pcity);
		--pcity:SetName(Locale.Lookup('LOC_NEACITYNAME_111222'))
    end


end


function NeaAssimilateCity(IPplayerID, IPcityID, IPprojectID, IPbuildingIndex, IPiX, IPiY, IPbCancelled)

	

	if (IPprojectID == m_NEA_CONSTRUCT_PALACE_Project) then
	
		local pcity=CityManager.GetCity(IPplayerID,IPcityID);
		local pPlayer = Players[IPplayerID];


		local NEAOriginalOwner = pcity:GetOriginalOwner();

		if (pPlayer ~= Players[NEAOriginalOwner]) then

		--pcity:SetName(Locale.Lookup('LOC_NEACITYNAME_ERES'))
		--pPlayer:AttachModifierByID("MODIF_NEA_CONSTRUCT_PALACE_CAPITAL");
		--pcity:AttachModifierByID("MODIF_NEA_CONSTRUCT_PALACE_CAPITAL");
		
		
        --CityManager.SetAsCapital(pcity);
		--CityManager.SetAsOriginalCapital(pcity);
		
		--pcity:GetBuildQueue():CreateBuilding(GameInfo.Buildings['BUILDING_PALACE'].Index)

		--WorldBuilder.CityManager():CreateBuilding(pcity,'BUILDING_GRANARY',100);

		--WorldBuilder.CityManager():CreateBuilding(pcity,'BUILDING_PALACE',100);

		--pcity:SetName(Locale.Lookup('LOC_NEACITYNAME_999888'))

		local pcityiX=pcity:GetX();
		local pcityiY=pcity:GetY();
		local pcityPop = pcity:GetPopulation();

		local NEAdistricttable = {};

		local NEAbuildingtable = {};
		local NEAbuildingLocationtable = {};

		local NEAplottable = {};

		local NEAWonder = {};

		local tpPlot=Map.GetPlot(pcityiX+1, pcityiY+1);
		local jjkl = tpPlot:GetOwner();

		local pCityBldgs:table = pcity:GetBuildings();
		--local pCityBldgsLoca:table = pCityBldgs:GetBuildingLocation();
		--local pCityBldgsSave=pCityBldgs;
		--for buildingInfo in pCityBldgs do
			--local pCityBldgsLoca = pcity:GetBuildings():GetBuildingLocation();
		--end
		--local kCityPlots		:table = Map.GetCityPlots():GetPurchasedPlots( pcity );

		for buildingInfo in GameInfo.Buildings() do
			local buildingIndex:number = buildingInfo.Index;
			local buildingType:string = buildingInfo.BuildingType;
			if(pCityBldgs:HasBuilding(buildingIndex)) then
				
				NEAbuildingtable[buildingIndex]=1;
				--NEAbuildingLocationtable[buildingIndex]=pCityBldgsLoca[buildingIndex];
				NEAbuildingLocationtable[buildingIndex]=pCityBldgs:GetBuildingLocation(buildingIndex);
			end
		end

		
		--local kCityPlots		:table = Map.GetCityPlots():GetPurchasedPlots( pcity );
		--pcity:SetName(Locale.Lookup('yeya'))
		for xx=pcityiX-3,pcityiX+3 do
		NEAdistricttable[xx]={};
		--NEAbuildingtable[xx] = {};
		NEAplottable[xx]={};

		NEAWonder[xx]={};
		
		
			for yy=pcityiY-3,pcityiY+3 do
				local pPlot=Map.GetPlot(xx, yy);
				
				--local pDistrict = CityManager.GetDistrictAt(pPlot);
				local pDistrict = pPlot:GetDistrictType();
				
				NEAdistricttable[xx][yy]=pDistrict;

				if NEAdistricttable[xx][yy]~=nil then
					--NEAWonder[xx][yy]=pCityBldgs:GetBuildingsAtLocation(pPlot);
					--local asd:table = pCityBldgs:GetBuildingsAtLocation(pPlot:GetIndex());
					--local pCityBuildings	:table = pcity:GetBuildings();
					--local plotID		:number = pPlot:GetIndex();	
					--local buildingTypes = pCityBuildings:GetBuildingsAtLocation(plotID);
					--local pBuilding = pPlot:GetBuildingType();
				end

				--NEAbuildingtable[xx][yy]= cityBuildings:GetBuildingsAtLocation(pPlot:GetIndex());
				--local AAASDSA = cityBuildings:GetBuildingsAtLocation(pPlot);

				if pPlot:GetOwner()==IPplayerID then
					NEAplottable[xx][yy]=1;
				else
					NEAplottable[xx][yy]=0;
				end
				
			end
		end

		
		if Players[NEAOriginalOwner]:GetCities():GetOriginalCapitalCity()==pcity then
			CityManager.SetAsOriginalCapital(Players[NEAOriginalOwner]:GetCities():GetCapitalCity());
		end



		CityManager.DestroyCity(pcity);
		pPlayer:GetCities():Create(pcityiX, pcityiY);
		--pcity:SetName(Locale.Lookup('LOC_NEACITYNAME_uiuiuiu'))
		--pPlayer:GetCities():Create(3, 7);
		--pPlayer:GetCities():Create(pcityiX-3, pcityiY-3);
		local ppcity=CityManager.GetCityAt(pcityiX, pcityiY);
		ppcity:ChangePopulation(pcityPop-ppcity:GetPopulation());


		for xx=pcityiX-3,pcityiX+3 do
			for yy=pcityiY-3,pcityiY+3 do
				local pPlot=Map.GetPlot(xx, yy);
				
				if NEAplottable[xx][yy]==1 then
					if pPlot:GetOwner()~=IPplayerID then
						WorldBuilder.CityManager():SetPlotOwner(pPlot, ppcity);
					end
					
					--pPlot:SetOwner(pPlayer);
					--pPlot:SetOwner(IPplayerID);
					WorldBuilder.CityManager():CreateDistrict(ppcity, NEAdistricttable[xx][yy], 100, pPlot);
					

					
				end
				
			end
		end

		
		for buildingInfo in GameInfo.Buildings() do
			local buildingIndex:number = buildingInfo.Index;
			local buildingType:string = buildingInfo.BuildingType;
			--WorldBuilder.CityManager():CreateBuilding(ppcity,buildingIndex,95);
			--WorldBuilder.CityManager():CreateBuilding(ppcity,buildingIndex,100);
			if NEAbuildingtable[buildingIndex]==1 then
				--ppcity:SetName(Locale.Lookup('LOC_NEACITYNAME_NEWNEW'))
				--NEAbuildingtable[buildingIndex]=1;
				--WorldBuilder.CityManager():CreateBuilding(ppcity,buildingIndex,100);

				ppcity:GetBuildQueue():CreateBuilding(buildingIndex,NEAbuildingLocationtable[buildingIndex]);
				
			end

						--ppcity:SetName(Locale.Lookup('LOC_NEACITYNAME_NEWNEW'))
		end


    end


	
	end



	if (IPprojectID == m_NEA_XIUYANGSHENGXI_Project) then
		local pcity=CityManager.GetCity(IPplayerID,IPcityID);
		local pPlayer = Game.GetLocalPlayer();

		--pcity:SetName(Locale.Lookup('LOC_NEACITYNAME_SHABI'))
		--pPlayer:AttachModifierByID("MODIF_NEA_CONSTRUCT_PALACE_CAPITAL");
		--pcity:AttachModifierByID("MODIF_NEA_CONSTRUCT_PALACE_CAPITAL");
		
		
        --CityManager.SetAsCapital(pcity);
		--CityManager.SetAsOriginalCapital(pcity);

		--WorldBuilder.CityManager():RemoveBuilding(pcity, GameInfo.Buildings['BUILDING_PALACE'].Index);
		
		--pcity:GetBuildings():RemoveBuilding(GameInfo.Buildings['BUILDING_PALACE'].Index)


		--pcity:SetName(Locale.Lookup('LOC_NEACITYNAME_HEHEDA'))

		local pcityiX=pcity:GetX();
		local pcityiY=pcity:GetY();
		local pcityPop = pcity:GetPopulation();

    end


end



Events.CityProjectCompleted.Add(NeaConstructPalace);


Events.CityProjectCompleted.Add(NeaAssimilateCity);



local m_NEA_MountainClass = GameInfo.TerrainClasses["TERRAIN_CLASS_NEA_MOUNTAIN"].Index
local m_NEA_MountainTunnel = GameInfo.Improvements["IMPROVEMENT_MOUNTAIN_TUNNEL"].Index
local m_NEA_MountainRoad = GameInfo.Improvements["IMPROVEMENT_MOUNTAIN_ROAD"].Index

local m_NEA_FMountainHumid = GameInfo.Features["FEATURE_HUMID_FMOUNTAIN"].Index
local m_NEA_FMountainDry = GameInfo.Features["FEATURE_DRY_FMOUNTAIN"].Index

function NEA_MountainRouteRemove(PlotX,PlotY)
    local pPlot = Map.GetPlot(PlotX,PlotY)
	
    local iTerClasIndex = pPlot:GetTerrainClassType()
	local iFeatureIndex = pPlot:GetFeatureType()
	local iImpIndex = pPlot:GetImprovementType()

	 if (iFeatureIndex == m_NEA_FMountainHumid or iFeatureIndex == m_NEA_FMountainDry) and (iImpIndex ~= m_NEA_MountainTunnel) and (iImpIndex ~= m_NEA_MountainRoad)  then
        RouteBuilder.SetRouteType(pPlot, RouteTypes.NONE)
    end
	
end

Events.RouteChanged.Add( NEA_MountainRouteRemove );
Events.RouteAddedToMap.Add( NEA_MountainRouteRemove );

--
--function NeaMountainMovement1(iPlayerID, iUnitID, iMovm)
	--local pUnit = UnitManager.GetUnit(iPlayerID, iUnitID)
    --local pPlot = Map.GetPlot(pUnit:GetX(),pUnit:GetY())
    --local iTerClasIndex = pPlot:GetTerrainClassType()
    --
    --if (iTerClasIndex == m_NEA_MountainClass) then
        ----local pUnit = UnitManager.GetUnit(iPlayerID, iUnitID)
        --
        --if pUnit ~= nil then
			--UnitManager.ChangeMovesRemaining(pUnit, -25)
			--UnitManager.FinishMoves(pUnit)
--
			----pUnit:ChangeMovesRemaining(-22)
        --end
    --end
--
--end
--
--
----Events.UnitMovementPointsChanged.Add(NeaMountainMovement1)
--Events.UnitActivityChanged.Add(NeaMountainMovement1)
--
--
--
--
--
--
--local m_NEA_MountainClass = GameInfo.TerrainClasses["TERRAIN_CLASS_NEA_MOUNTAIN"].Index
--
--function NeaMountainMovement(iPlayerID, iUnitID, PlotX, PlotY,ijj,ikk)
    --local pPlot = Map.GetPlot(PlotX, PlotY)
    --local iTerClasIndex = pPlot:GetTerrainClassType()
    --
    --if (iTerClasIndex == m_NEA_MountainClass) then
        --local pUnit = UnitManager.GetUnit(iPlayerID, iUnitID)
        --
        --if pUnit ~= nil then
			----UnitManager.ChangeMovesRemaining(pUnit, -25)
			----UnitManager.FinishMoves(pUnit)
--
			----pUnit:ChangeMovesRemaining(-22)
        --end
    --end
--
--end
--
--
--Events.UnitMoved.Add(NeaMountainMovement)
--


--local m_NEA_MountainClass = GameInfo.TerrainClasses["TERRAIN_CLASS_NEA_MOUNTAIN"].Index

function NeaMountainEntreDamage(iPlayerID, iUnitID, PlotX, PlotY,ijj,ikk)
    local pPlot = Map.GetPlot(PlotX, PlotY)
    local iTerClasIndex = pPlot:GetTerrainClassType()
	local iFeatureIndex = pPlot:GetFeatureType()
	local iImpIndex = pPlot:GetImprovementType()
    local pUnit = UnitManager.GetUnit(iPlayerID, iUnitID)

	--pUnit:ChangeDamage(3);
        
    if (iFeatureIndex == m_NEA_FMountainHumid or iFeatureIndex == m_NEA_FMountainDry) and (iImpIndex ~= m_NEA_MountainTunnel) and (iImpIndex ~= m_NEA_MountainRoad) and pUnit ~= nil then
        
        local iMoveRemain=pUnit:GetMovementMovesRemaining();
		local iMaxMov=pUnit:GetMaxMoves();
		--pUnit:ChangeExtraMoves(-iMaxMov+1);

		pUnit:ChangeDamage(20);
		UnitManager.FinishMoves(pUnit);
	else
		local iExtraMov=pUnit:GetExtraMoves();
		--pUnit:ChangeExtraMoves(-iExtraMov);
		--pUnit:ChangeDamage(2);
		
		
    end

end


Events.UnitMoved.Add(NeaMountainEntreDamage)



--
--local m_FarmIndex = GameInfo.Improvements["IMPROVEMENT_FARM"].Index
--
--function HealAtPlot(iPlayerID, iUnitID, PlotX, PlotY)
    --local pPlot = Map.GetPlot(PlotX, PlotY)
    --local iImpIndex = pPlot:GetImprovementType()
    --
    --if (iImpIndex == m_FarmIndex) then
        --local pUnit = UnitManager.GetUnit(iPlayerID, iUnitID)
        --
        --if pUnit ~= nil then
            --pUnit:SetDamage(0)
        --end
    --end
--
--end
--

--Events.UnitMoveComplete.Add(HealAtPlot)








function NeaMountainMovement(iPlayerID, iUnitID, iMovm)
	local pUnit = UnitManager.GetUnit(iPlayerID, iUnitID)
    local pPlot = Map.GetPlot(pUnit:GetX(),pUnit:GetY())
    local iTerClasIndex = pPlot:GetTerrainClassType()
	local iFeatureIndex = pPlot:GetFeatureType()
	local iExtraMov=pUnit:GetExtraMoves()
    
    if (iFeatureIndex == m_NEA_FMountainHumid or iFeatureIndex == m_NEA_FMountainDry) and (iImpIndex ~= m_NEA_MountainTunnel) and (iImpIndex ~= m_NEA_MountainRoad) and pUnit ~= nil then
        
        local iMoveRemain=pUnit:GetMovementMovesRemaining();
		local iMaxMov=pUnit:GetMaxMoves();
		
		--pUnit:ChangeDamage(-iMaxMov)
		--pUnit:ChangeExtraMoves(-iMaxMov+1);

		UnitManager.ChangeMovesRemaining(pUnit,-iMoveRemain + 1);

		--function()
				--Events.UnitMoved.Add(NeaMountainOutMovement);
--
			--end
--
		--function()
				--Events.UnitMoved.Add(NeaMountainOutMovement);
			--end);
			--UnitManager.FinishMoves(pUnit)  -iExtraMov
			
--and imove ~= 0
			--pUnit:ChangeMovesRemaining(-22)
	elseif iExtraMov ~= 0 then

        --local imovei=pUnit:GetMovementMovesRemaining()
		local iMaxMov=pUnit:GetMaxMoves();
		
		--pUnit:ChangeDamage(-iExtraMov);
		--pUnit:ChangeExtraMoves(-iExtraMov);

		--UnitManager.ChangeMovesRemaining(pUnit, -iExtraMov);
			--UnitManager.FinishMoves(pUnit)
			
--and imove ~= 0
			--pUnit:ChangeMovesRemaining(-22)
    end

end


function NeaMountainOutMovement(iPlayerID, iUnitID, PlotX, PlotY,ijj,ikk)

	

end

--Events.UnitSelectionChanged.Add(NeaMountainMovement)
Events.UnitMovementPointsRestored.Add(NeaMountainMovement)

local m_NEA_TropicClass = GameInfo.TerrainClasses["TERRAIN_CLASS_TROPIC"].Index

local m_NEA_GrassClass = GameInfo.TerrainClasses["TERRAIN_CLASS_GRASS"].Index

local m_NEA_PlainsClass = GameInfo.TerrainClasses["TERRAIN_CLASS_PLAINS"].Index

local m_NEA_TundraClass = GameInfo.TerrainClasses["TERRAIN_CLASS_TUNDRA"].Index

local m_NEA_AridClass = GameInfo.TerrainClasses["TERRAIN_CLASS_ARID"].Index

local m_NEA_DesertClass = GameInfo.TerrainClasses["TERRAIN_CLASS_DESERT"].Index

local m_NEA_SnowClass = GameInfo.TerrainClasses["TERRAIN_CLASS_SNOW"].Index


function CityClimateBulding(iPlayerID,iCityID,PlotX,PlotY)

	local pPlot = Map.GetPlot(PlotX,PlotY)
	local pCity=CityManager.GetCityAt(PlotX,PlotY) 
	
    local iTerClasIndex = pPlot:GetTerrainClassType()
	

	if (iTerClasIndex == m_NEA_TropicClass)  then
        pCity:GetBuildQueue():CreateBuilding(GameInfo.Buildings['BUILDING_NEA_TROPIC_CITYBUILDING'].Index);
	elseif (iTerClasIndex == m_NEA_GrassClass) then
		pCity:GetBuildQueue():CreateBuilding(GameInfo.Buildings['BUILDING_NEA_WARM_CITYBUILDING'].Index);
	elseif (iTerClasIndex == m_NEA_PlainsClass) then
		pCity:GetBuildQueue():CreateBuilding(GameInfo.Buildings['BUILDING_NEA_TEMPERATE_CITYBUILDING'].Index);
	elseif (iTerClasIndex == m_NEA_TundraClass) then
		pCity:GetBuildQueue():CreateBuilding(GameInfo.Buildings['BUILDING_NEA_COLD_CITYBUILDING'].Index);
	elseif (iTerClasIndex == m_NEA_AridClass) then
		pCity:GetBuildQueue():CreateBuilding(GameInfo.Buildings['BUILDING_NEA_ARID_CITYBUILDING'].Index);
	elseif (iTerClasIndex == m_NEA_DesertClass) then
		pCity:GetBuildQueue():CreateBuilding(GameInfo.Buildings['BUILDING_NEA_DESERT_CITYBUILDING'].Index);
	elseif (iTerClasIndex == m_NEA_SnowClass) then
		pCity:GetBuildQueue():CreateBuilding(GameInfo.Buildings['BUILDING_NEA_PLATEAU_CITYBUILDING'].Index);
    end

end

GameEvents.CityBuilt.Add(CityClimateBulding)