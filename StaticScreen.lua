local Players = game:GetService("Players")

local plr = Players.LocalPlayer
local gui = plr.PlayerGui

local screen = Instance.new("ScreenGui")
screen.IgnoreGuiInset = true
screen.ResetOnSpawn = false
screen.Name = "StaticGui"
screen.Parent = gui
local static = Instance.new("ImageLabel")
static.Position = UDim2.new(0,0,0,0)
static.Size = UDim2.new(10,0,10,0)
static.BackgroundTransparency = 1
static.Image = "rbxassetid://13439153196"
static.ImageTransparency = 0.5
static.ImageColor3 = Color3.fromRGB(255,255,255)
static.AnchorPoint = Vector2.new(0.5,0.5)
static.ScaleType = "Tile"
static.SizeConstraint = "RelativeYY"
static.TileSize = UDim2.new(0.125,0,0.125,0)
static.Parent = screen

spawn(function()
   while wait(0.025) do
       if static and static.Parent then
           --static.Rotation = math.random(-180,180)
           static.Position = UDim2.new(Random.new():NextNumber(-1,1), 0, Random.new():NextNumber(-1,1),0)
       else
           break
       end
   end
end)
