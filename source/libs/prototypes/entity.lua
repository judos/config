
function changeEntitiesPropertyByFactor(entitiesTable, propertyName, factor)
	for _,data in pairs(entitiesTable) do
		if data[propertyName] then
			info(data.name.."."..propertyName.." * "..tostring(factor))
			data[propertyName] = data[propertyName] * factor
		else
			warn(propertyName.." does not exist for "..data.name)
		end
	end
end
