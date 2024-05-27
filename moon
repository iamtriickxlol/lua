URI = "https://server-u214.onrender.com/" 
local URI_Data 
if getgenv().key then
	URI_Data = game:HttpGet(URI..'?key='..getgenv().key)
	if URI_Data and string.find(URI_Data, "invalid") then
		print("invalid")
	  game:GetService('Players').LocalPlayer:Kick('invalid key')
	return end
	else
	game:GetService('Players').LocalPlayer:Kick('key not found, make sure u execute everything')
end


if getgenv().vers == nil then
print("using latest version")
loadstring(game:HttpGet("https://raw.githubusercontent.com/metauser08/lua/main/latest"))()
else
loadstring(game:HttpGet("https://raw.githubusercontent.com/metauser08/lua/main/"..getgenv().vers))()
end
