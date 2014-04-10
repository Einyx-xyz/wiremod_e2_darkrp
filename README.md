#Wire Expression 2 DarkRP functions
====================================
I'm currently practising Lua and I thought it'd be nice to share some DarkRP functions for the ones that would like it.


The current functions are:

###Money printers

(Currently only support for [!!!Warlock!!!'s printers](http://steamcommunity.com/sharedfiles/filedetails/?id=105620182))

__Function__

E:isPrinter()

[Number] Returns 1 if the entity is a money printer, 0 if it isn't.


E:printedMoney()

[Number] Returns the amount of money stored in the money printer, -1 if the entity isn't a money printer.


E:printerType()

[String] Returns the type (or class) of the printer, "" if the entity isn't a money printer.


###Spawned money

__Function__

E:isMoney()

[Number] Returns 1 if the entity is spawned / dropped money, 0 if it isn't.


E:moneyAmount()

[Number] Returns the amount of money dropped.


###Shipments

__Function__

E:isShipment()

[Number] Returns 1 if the entity is a shipment, 0 if it isn't.


E:shipmentName()

[String] Returns the name of the entity in the shipment.


E:shipmentClass()

[String] Returns the type (or class) of the entity in the shipment.


E:shipmentModel()

[String] Returns the model of the entity in the shipment.


E:shipmentAmount()

[Number] Returns the amount of entities currently in the shipment.


E:shipmentID()

[Number] Returns the ID of the entity in the shipment, generated by DarkRP.


E:shipmentCost()

[Number] Returns the buy price of the shipment.


E:shipmentIndividualCost()

[Number] Returns the buy price of a single entity in the shipment


E:shipmentAvailableSeperately() 

[Number] Returns 1 if the entity in the shipment can be bought seperately


E:shipmentSpawnAmount()

[Number] Returns the amount of entities in the shipment when bought


E:shipmentPricePerUnit()

[Number] Returns the price of 1 entity, when bought in a shipment (shipmentCost / shipmentAmount)


#How to install

Place the darkrp.lua file in "wiremod/
