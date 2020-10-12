--script at workspace.BIOS.BIOS.Script

--By Beriff, 2020

--Functions for BIOS "API"
--Disk's module script should accept a table of those functions as an only argument

state = "fine"
monitor = false
speaker = false

function BIOSgetState()
	return state
end

function BIOSconnectDriver(drv_directive, name)
	
	if drv_directive == "monitor" then
		monitor = workspace:FindFirstChild(name)
		return true
	elseif drv_directive == "speaker" then
		speaker = workspace:FindFirstChild(name)
		return true
	else
		return false
	end
end

function sendMonitorSignal(command)
	local function changeText(text)
		for i,v in pairs (game.Players:GetChildren()) do
			v.PlayerGui.screenGUI.TextLabel.Text = text
		end
	end
end


BIOSAPIS = {
	["getState"] = BIOSgetState,
	["connectDriver"] = BIOSconnectDriver
}

--Execute boot sector
function execute(part)
	
	part:Remove()
	--print('works')
	local module = require(script.Parent.Parent.Handle.MyModule)
	sendMonitorSignal('ee')
	module.exec(BIOSAPIS)
	
end

function POST()
	
end

script.Parent.Touched:Connect(execute)
