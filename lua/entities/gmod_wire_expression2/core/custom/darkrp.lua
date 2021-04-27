E2Lib.RegisterExtension("DarkRP Functions", true, "Adds various useful functions for use in the DarkRP gamemode")

printerClass = "sent_elegant_printer" -- change to your servers printers class ( some functions below will not work if you're not using elegant printers, so just remove them :D )

-- Printers
e2function number entity:isPrinter()
	if not IsValid(this) then  return 0 end
	if this:GetClass() == printerClass then
		return 1
	else
		return 0
	end
end

e2function number entity:printerAmount()
	if not IsValid(this) then  return -1 end
	if this:GetClass() == printerClass then
		return this:GetMoney()
	else
		return -1
	end
end

e2function string entity:printerType()
	if not IsValid(this) then return "" end
	if this:GetClass() == printerClass then
		return this:GetClass()
	else
		return ""
	end
end

e2function entity entity:printerOwner()
	if not IsValid(this) then return end
	if this:GetClass() == printerClass then
		return this:Getowning_ent()
	end
end

e2function string entity:printerTier()
	if not IsValid(this) then return end
	if this:GetClass() == printerClass then
		return this:GetTier()
	end
end

e2function number entity:printerInkAmount()
	if not IsValid(this) then return end
	if this:GetClass() == printerClass then
		return this:GetInk()
	end
end

e2function number entity:printerInkMax()
	if not IsValid(this) then return end
	if this:GetClass() == printerClass then
		return this:GetMaxInk()
	end
end

e2function number entity:printerHealth()
	if not IsValid(this) then return end
	if this:GetClass() == printerClass then
		return this:GetDurability()
	end
end

e2function number entity:printerHQCooling()
	if not IsValid(this) then return end
	if this:GetClass() == printerClass then
		if this:GetHQCooling() == 1 then
			return 1
		else
			return 0
		end
	end
end

-- Spawned money
e2function number entity:isMoney()
	if not IsValid(this) then return 0 end
	if this:GetClass() == "spawned_money" then
		return 1
	else
		return 0
	end
end

e2function number entity:moneyAmount()
	if not IsValid(this) then return 0 end
	if this:GetClass() == "spawned_money" then
		return this:Getamount()
	else
		return 0
	end
end

-- Spawned shipment
e2function number entity:isShipment()
	if not IsValid(this) then return 0 end
	if this:GetClass() == "spawned_shipment" then 
		return 1
	else
		return 0
	end
end

e2function string entity:shipmentName()
	if not IsValid(this) then return "" end
	if this:GetClass() == "spawned_shipment" then 
		return CustomShipments[this:Getcontents()].name
	else
		return ""
	end
end

e2function string entity:shipmentClass()
	if not IsValid(this) then return "" end
	if this:GetClass() == "spawned_shipment" then 
		return CustomShipments[this:Getcontents()].entity
	else
		return ""
	end
end

e2function string entity:shipmentModel()
	if not IsValid(this) then return "" end
	if this:GetClass() == "spawned_shipment" then 
		return CustomShipments[this:Getcontents()].model
	else
		return ""
	end
end

e2function number entity:shipmentAmount()
	if not IsValid(this) then return -1 end
	if this:GetClass() == "spawned_shipment" then 
		return this:Getcount()
	else
		return -1
	end
end

e2function number entity:shipmentID()
	if not IsValid(this) then return -1 end
	if this:GetClass() == "spawned_shipment" then 
		return this:Getcontents()
	else
		return -1
	end
end

e2function number entity:shipmentCost()
	if not IsValid(this) then return -1 end
	if this:GetClass() == "spawned_shipment" then 
		return CustomShipments[this:Getcontents()].price
	else
		return -1
	end
end

e2function number entity:shipmentIndividualCost()
	if not IsValid(this) then return -1 end
	if this:GetClass() == "spawned_shipment" then 
		return CustomShipments[this:Getcontents()].pricesep
	else
		return -1
	end
end

e2function number entity:shipmentAvailableSeperately()
	if not IsValid(this) then return -1 end
	if this:GetClass() == "spawned_shipment" then 
		if CustomShipments[this:Getcontents()].separate == true then
			return 1
		else
			return 0
		end
	else
		return -1
	end
end

e2function number entity:shipmentSpawnAmount()
	if not IsValid(this) then return -1 end
	if this:GetClass() == "spawned_shipment" then 
		return CustomShipments[this:Getcontents()].amount
	else
		return -1
	end
end

e2function number entity:shipmentPricePerUnit()
	if not IsValid(this) then return -1 end
	if this:GetClass() == "spawned_shipment" then 
		return CustomShipments[this:Getcontents()].price / CustomShipments[this:Getcontents()].amount
	else
		return -1
	end
end
