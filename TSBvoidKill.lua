game:GetService("StarterGui"):SetCore("SendNotification",{ 	Title = "by rk06", 	Text = "不加密的后果 源码被我开了", 	Duration = 10 }) local ScreenGui = Instance.new("ScreenGui") local MainFrame = Instance.new("Frame") local Title = Instance.new("TextLabel") local ToggleButton = Instance.new("TextButton") local EnableButton = Instance.new("TextButton") ScreenGui.Parent = game.CoreGui MainFrame.Parent = ScreenGui MainFrame.BackgroundColor3 = Color3.fromRGB(35, 35, 35) MainFrame.BorderSizePixel = 2 MainFrame.BorderColor3 = Color3.fromRGB(0, 170, 255) MainFrame.Size = UDim2.new(0, 200, 0, 100) MainFrame.Position = UDim2.new(0, 10, 0.5, -50) MainFrame.Visible = false Title.Parent = MainFrame Title.Text = "TSB虚空击杀" Title.BackgroundColor3 = Color3.fromRGB(25, 25, 25) Title.BorderSizePixel = 2 Title.BorderColor3 = Color3.fromRGB(0, 170, 255) Title.Size = UDim2.new(1, 0, 0, 40) Title.TextColor3 = Color3.fromRGB(255, 255, 255) Title.TextScaled = true ToggleButton.Parent = ScreenGui ToggleButton.Text = "+" ToggleButton.Size = UDim2.new(0, 30, 0, 30) ToggleButton.Position = UDim2.new(0, 10, 0.5, -130) ToggleButton.BackgroundColor3 = Color3.fromRGB(35, 35, 35) ToggleButton.BorderSizePixel = 2 ToggleButton.BorderColor3 = Color3.fromRGB(0, 170, 255) ToggleButton.TextColor3 = Color3.fromRGB(255, 255, 255) ToggleButton.TextScaled = true EnableButton.Parent = MainFrame EnableButton.Text = "" EnableButton.BackgroundColor3 = Color3.fromRGB(25, 25, 25) EnableButton.BorderSizePixel = 2 EnableButton.BorderColor3 = Color3.fromRGB(0, 170, 255) EnableButton.Size = UDim2.new(1, -20, 0, 30) EnableButton.Position = UDim2.new(0, 10, 0, 50) EnableButton.TextColor3 = Color3.fromRGB(255, 255, 255) EnableButton.TextScaled = true ToggleButton.MouseButton1Click:Connect(function() MainFrame.Visible = not MainFrame.Visible ToggleButton.Text = MainFrame.Visible and "关闭" or "显示" end) local scriptEnabled = false EnableButton.MouseButton1Click:Connect(function() if not scriptEnabled then workspace.FallenPartsDestroyHeight = 0/0 if getgenv().loop then coroutine.close(getgenv().loop) getgenv().loop = nil end local animations = { ["rbxassetid://12273188754"]=1.311, ["rbxassetid://12296113986"]=1.2, } function ifind(t,a) for i,v in pairs(t) do if i==a then return i end end return false end local plr = game.Players.LocalPlayer getgenv().loop = coroutine.create(function() local dothetech = false local lastcf while task.wait() do local character = plr.Character local animate = character.Humanoid.Animator for i,v in pairs(animate:GetPlayingAnimationTracks()) do if ifind(animations, v.Animation.AnimationId) then task.wait(animations[v.Animation.AnimationId]) dothetech=true lastcf = character.HumanoidRootPart.CFrame v.Stopped:Connect(function() dothetech=false end) repeat wait() workspace.Camera.CameraType = Enum.CameraType.Scriptable character.HumanoidRootPart.CFrame = CFrame.new(-1200,-460,67) character.HumanoidRootPart.AssemblyLinearVelocity = Vector3.zero character.HumanoidRootPart.AssemblyAngularVelocity = Vector3.zero until not dothetech task.wait(0.1) character.HumanoidRootPart.CFrame=lastcf workspace.Camera.CameraType = Enum.CameraType.Custom workspace.Camera.CameraSubject = character.Humanoid task.wait(1) end end end end) coroutine.resume(getgenv().loop) EnableButton.Text = "关" scriptEnabled = true else EnableButton.Text = "开" scriptEnabled = false end end)