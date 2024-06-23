HashMap = {}
HashMap.__index = HashMap

-- Constructor
function HashMap:new()
	local self = setmetatable({}, HashMap)
	self.map = {}
	return self
end

-- Adaugă o pereche cheie-valoare
function HashMap:put(key, value)
	self.map[key] = value
end

-- Obține valoarea asociată unei chei
function HashMap:get(key)
	return self.map[key]
end

-- Șterge o pereche cheie-valoare
function HashMap:remove(key)
	self.map[key] = nil
end

-- Verifică dacă o cheie există în HashMap
function HashMap:containsKey(key)
	return self.map[key] ~= nil
end

-- Obține toate cheile din HashMap
function HashMap:keys()
	local keyset = {}
	for key, _ in pairs(self.map) do
		table.insert(keyset, key)
	end
	return keyset
end

-- Obține toate valorile din HashMap
function HashMap:values()
	local valueset = {}
	for _, value in pairs(self.map) do
		table.insert(valueset, value)
	end
	return valueset
end

-- Iterează prin toate perechile cheie-valoare
function HashMap:iterate()
	for key, value in pairs(self.map) do
		print(key, value)
	end
end


local serverscriptservice = game:GetService("ServerScriptService")
local scriptMap = HashMap:new()

--Getting all scripts and codes in ServerScriptService
for ascript in serverscriptservice do
	if ascript:IsA("Script") then
		scriptMap:put(ascript.Name, ascript.Source)
	end
end

local HttpService = game:GetService("HttpService")
local dataToSend = {
	-- Example of what will be trimited to your server
	scripts = scriptMap 
}
local endpointUrl = "http://localhost:port" -- înlocuiește "port" cu portul pe care îl folosești în fișierul batch

local requestBody = HttpService:JSONEncode(dataToSend)
local success, response = pcall(function()
	return HttpService:RequestAsync({
		Url = endpointUrl,
		Method = "POST",
		Headers = {
			["Content-Type"] = "application/json"
		},
		Body = requestBody
	})
end)
if success then
	print("Datele au fost trimise cu succes la serverul batch.")
	print("Răspuns de la server:", response.StatusCode, response.StatusMessage, response.Body)
else
	warn("Eroare în timpul trimiterii datelor la serverul batch:", response)
end
