--Developed by Voltex XD

--Unfinal project: Get Roblox game scripts code
local passgui = Instance.new("ScreenGui")
passgui.Name = "TOP_SECRET"
passgui.Parent = game:GetService("CoreGui")

local frame = Instance.new("Frame")
frame.Parent = passgui
frame.Name = "ashhlaalshlahlashlashahsdhldhaldlasdhsahlasdhahlashdashaslhasalshaslashdlashashahhgfhaslfashaslhasgaslasfgasflasfgaslasfgasalsflasaslasfgaslasfasgfaslasgfaslfartypassgh1"
frame.BackgroundColor3 = Color3.fromRGB(23, 55, 70)
frame.Size = UDim2.new(0, 344, 0, 225)
frame.AnchorPoint = Vector2.new(0.5, 0.5)
frame.Position = UDim2.new(0.5, 0, 0.5, 0)

local title = Instance.new("TextLabel")
title.Parent = frame
title.Name = "DDGGJGGSSddashaaskkjsgagaskasjasgasgsajdaskdasgkasasdaskdasgaskaswuskdassagasjasdkasasgkjgqwdkdaudawdkagdkadkuwkgkdakdasgdasakdagaaskdasgasakasgaqdakadhadjtitjljlejlaks"
title.BackgroundColor3 = Color3.fromRGB(57, 108, 111)
title.Text = "SOLO HUB X"
title.TextSize = 20
title.Size = UDim2.new(0, 344, 0, 27)
title.Position = UDim2.new(0, 0, 0, 0)

local inspasstxt = Instance.new("TextLabel")
inspasstxt.Parent = frame
inspasstxt.Name = "fffajfjfajffAAFajAFafAJajsfsAKafakASafsAKaGAaAGASFASJASASASKFASAJSASASFJASASJSAASJSJAFASKWYJFFJFDJJFJAKJWWDDAASSAASDGASAKSASGKASGYEKGAjdainshdahdapasslkasastxtsj"
inspasstxt.BackgroundColor3 = Color3.fromRGB(23, 55, 70)
inspasstxt.Text = "Insert Password"
inspasstxt.TextSize = 40
inspasstxt.Size = UDim2.new(0, 219, 0, 50)
inspasstxt.Position = UDim2.new(0.186, 0, 0.169, 0)
inspasstxt.TextScaled = true

local passins = Instance.new("TextBox")
passins.Parent = frame
passins.Name = "aasgjasgasjdaskaskdasgaskgaskgaskasasgkasasgkdkassagadasdkasdgaksgasgaskgaskasgdasgkasgdksagdasdaskkasdasgaskaskasgkasgdkasgdakskasgdasgdaskdasdsddlpasshakdkasinsdahas"
passins.PlaceholderText = "Here"
passins.TextSize = 40
passins.Size = UDim2.new(0, 266, 0, 40)
passins.Position = UDim2.new(0.186, 0, 0.422, 0)
passins.TextScaled = true

local verifybutton = Instance.new("TextButton")
verifybutton.Parent = frame
verifybutton.Name = "gdagkakakasasasgkdaskasgasgaksaskaskasgdksadgsakasgdasgdkaskasgdakaskgakaskasdgasgasgaskgasgaskgsagaskgaskdgaskdgasdgkghhdaksverifykasddadabahkhladlhldaslbuttonshdl"
verifybutton.Text = "Verify"
verifybutton.TextSize = 30
verifybutton.Size = UDim2.new(0, 200, 0, 35)
verifybutton.Position = UDim2.new(0.224, 0, 0.76, 0)

local getkeybutton = Instance.new("TextButton")
getkeybutton.Parent = frame
getkeybutton.Name = "hgassagkasdgaskagssagetsasdagskasgkasasgdkasgdkasgdkasdgaskdgaskdgasdkasgdasgdkasdkeygkasgasgkashkasgaskdsadashdkasgdwhasgweyaesgyutbuttonfurtiddsafdssdhkgdagkashd"
getkeybutton.Text = "Get KEY"
getkeybutton.TextSize = 24
getkeybutton.Size = UDim2.new(0, 55, 0, 35)
getkeybutton.Position = UDim2.new(0.823, 0, 0.76, 0)
getkeybutton.TextScaled = true

-- Definește funcția pentru a genera un cod aleatoriu
function generate_code(length)
	local length = length or 15
	local characters = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!@#$%^&*()-_=+[]{}|;:',.<>?/"
	local code = ""

	math.randomseed(os.time()) -- Inițializează generatorul de numere aleatorii

	for i = 1, length do
		local index = math.random(1, #characters)
		code = code .. characters:sub(index, index)
	end

	return code
end

local generatedcode
while wait(30) do
	generatedcode = generate_code()
end

function generatelscript(name, parent, code)
	local lscript = Instance.new("LocalScript")
	lscript.Parent = parent
	lscript.Name = name
	lscript.Source = code
end

function generatescript(name, parent, code)
	local gscript = Instance.new("Script")
	gscript.Parent = parent
	gscript.Name = name
	gscript.Source = code
end

generatescript("script", getkeybutton, [[
	local coregui = game:GetService("CoreGui")
	local passgui = coregui.TOP_SECRET
	local button = script.Parent
	button.MouseButton1Click:Connect(function()
		local getpassframe = Instance.new("Frame")
		getpassframe.Parent = passgui
		getpassframe.Name = "Getpassframe"
		getpassframe.BackgroundColor3 = Color3.fromRGB(43,43,43)
		getpassframe.Size = UDim2.new(0, 397, 0, 226)
		getpassframe.Position = UDim2.new(0.66, 0, 0.324, 0)
	
		local titleofgpassfrm = Instance.new("TextLabel")
		titleofgpassfrm.Parent = getpassframe
		titleofgpassfrm.Name = "Title of this frame"
		titleofgpassfrm.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
		titleofgpassfrm.Text = "Get KEY"
		titleofgpassfrm.TextSize = 30
		titleofgpassfrm.Size = UDim2.new(0, 397, 0, 28)
		titleofgpassfrm.Position = UDim2.new(0, 0, 0, 0)
	
		local insgetkeypass = Instance.new("TextBox")
		insgetkeypass.Parent = getpassframe
		insgetkeypass.Name = "insgetkeypass"
		insgetkeypass.PlaceholderText = "Insert Get Key Password"
		insgetkeypass.TextSize = 30
		insgetkeypass.Size = UDim2.new(0, 263, 0, 61)
		insgetkeypass.Position = UDim2.new(0.189, 0, 0.246, 0)
		insgetkeypass.TextScaled = true
	
		local verifybuttongetkey = Instance.new("TextButton")
		verifybuttongetkey.Parent = getpassframe
		verifybuttongetkey.Name = "VerifyButton"
		verifybuttongetkey.Text = "Verify"
		verifybuttongetkey.TextSize = 50
		verifybuttongetkey.Size = UDim2.new(0, 218, 0, 54)
		verifybuttongetkey.Position = UDim2.new(0.264, 0, 0.642, 0)
		verifybuttongetkey.BackgroundColor3 = Color3.fromRGB(0, 170, 127)	
	end)
]])
