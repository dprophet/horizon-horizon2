CSS = [[
    #horizon {
      position: fixed;
      top: 0;
      left: 0;
      right: 0;
      bottom: 0;
      font-family: 'Adam';
    }
    :root {
      /* 0faea9 */
      --primary: #ae0f12;
      --secondary: #fff;
      --bg: #ffffff22;
      --bg2: #ffffff11;
      --border: 0.05em solid var(--secondary);
      --border-primary: 0.05em solid var(--primary);
      --glow: 0 0 0.25vw 0.05vw var(--primary);
      --text-glow: 0 0 0.25vw var(--primary);
      --spacing: 0.25em;
      --corner-bg: url("data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='100%25' height='10'%3E%3Csvg xmlns='http://www.w3.org/2000/svg' stroke-width='20' viewBox='0 0 100 100' preserveAspectRatio='xMinYMin meet'%3E%3Cpath d='M0 100 L0 0 100 0' fill='none' stroke='%23fff' /%3E%3C/svg%3E%3Csvg xmlns='http://www.w3.org/2000/svg' stroke-width='20' viewBox='0 0 100 100' preserveAspectRatio='xMaxYMin meet'%3E%3Cpath d='M0 0 L0 0 L100 0 L100 100' fill='none' stroke='%23fff' /%3E%3C/svg%3E%3C/svg%3E") no-repeat top center;
      --corner-bg-bottom: url("data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='100%25' height='10'%3E%3Csvg stroke-width='20' viewBox='0 0 100 100' preserveAspectRatio='xMinYMax meet'%3E%3Cpath d='M0 0 L0 100 L100 100' fill='none' stroke='%23fff' /%3E%3C/svg%3E%3Csvg stroke-width='20' viewBox='0 0 100 100' preserveAspectRatio='xMaxYMax meet'%3E%3Cpath d='M100 0 L100 100 L0 100' fill='none' stroke='%23fff' /%3E%3C/svg%3E%3C/svg%3E") no-repeat bottom center;
      --warning: url("data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' viewBox='-10 -10 120 120' preserveAspectRatio='xMidYMid meet'%3E%3Cpath d='M0 100 L50 0 L100 100 L0 100 L50 0' stroke='%23ae0f12' stroke-width='10' fill='none' /%3E%3Crect x='45' y='32' width='10' height='40' fill='%23ae0f12' /%3E%3Ccircle cx='50' cy='85' r='6' fill='%23ae0f12' /%3E%3C/svg%3E");
    }
    uicursor {
        display: block;
        position: absolute;
        width: 2vh;
        height: 2vh;
        z-index: 999;
    }
    panel {
      font-family: "adam";
      display: flex;
      flex-direction: column;
      position: absolute;
      font-size: 1.4vh;
      letter-spacing: 0.05vw;
      text-transform: uppercase;
      overflow: hidden;
      text-overflow: ellipsis;
    }
    panel.row {
      flex-direction: row;
    }
    panel:not(.row) > *:not(:last-child) {
      margin-bottom: var(--spacing);
    }
    panel.row > *:not(:last-child) {
      margin-right: var(--spacing);
    }
    panel.filled {
      box-sizing: border-box;
      padding: 1em;
      background: var(--bg) var(--corner-bg);
    }
    panel.filled::after {
      position: absolute;
      content: "";
      background: var(--corner-bg-bottom);
      top: 0;
      bottom: 0;
      left: 0;
      right: 0;
    }
    .left {
      text-align: left;
    }
    .rel {
      position: relative;
    }
    uiprogress {
      height: 0.5vw;
      border-left: var(--border);
      border-right: var(--border);
      background-color: var(--bg);
    }
    uivprogress {
      position: relative;
      border-top: var(--border);
      border-bottom: var(--border);
      background-color: var(--bg);
      width: 0.75em;
      z-index: 10;
    }
    uivprogress > inner {
      position: absolute;
      display: block;
      background-color: var(--primary);
      width: 33%;
      left: 33%;
      bottom: 0.05em;
      box-shadow: var(--glow);
      max-height: calc(100% - 0.05em);
    }
    uiprogress > inner {
      position: relative;
      display: block;
      background-color: var(--primary);
      height: 33%;
      top: 50%;
      left: 0.05em;
      transform: translateY(-33%);
      box-shadow: var(--glow);
      max-width: calc(100% - 0.05em);
      overflow: hidden;
    }
    uiprogress[data-label] {
      margin-left: 1.8em;
    }
    panel.filled > uiprogress[data-label] {
      margin-left: 2.3em;
    }
    panel.filled > uiprogress[data-label]::before {
      left: 1.5em;
    }
    uiprogress[data-label]::before {
      display: block;
      position: absolute;
      left: 0;
      content: attr(data-label);
      color: var(--secondary);
      font-size: 0.74em;
      font-weight: 500;
      padding-top: 0.05em;
      text-shadow: var(--text-glow);
    }
    uispacer {
      display: block;
      height: 1vh;
    }
    uilabel {
      color: var(--secondary);
      font-size: 1.25em;
      letter-spacing: 0;
      border-left: var(--border-primary);
      padding-left: 0.33vw;
      text-transform: uppercase;
      text-shadow: var(--text-glow);
      background: var(--bg2);
      padding-top: 0.25em;
      padding-right: 0.15em;
    }
    uiheading {
      color: var(--secondary);
      position: relative;
      text-transform: uppercase;
      text-align: center;
      font-size: 1.25em;
      padding: 0.15em;
      background: var(--bg) var(--corner-bg);
      text-overflow: ellipsis;
      overflow: hidden;
      height: 100%;
    }
    uiheading::before {
      content: "";
      left: 0;
      bottom: 0;
      display: block;
      position: absolute;
      background: var(--primary);
      width: 15%;
      height: 0.1em;
      box-shadow: var(--glow);
    }
    uiheading::after {
      content: "";
      right: 0;
      bottom: 0;
      display: block;
      position: absolute;
      background: var(--primary);
      width: calc(85% - 0.2em);
      height: 0.1em;
      box-shadow: var(--glow);
    }
    uiinstrument {
      background: var(--bg);
      border-left: var(--border);
      border-right: var(--border);
    }
    warning {
      display: inline-block;
      background: var(--warning) no-repeat center center;
      margin-bottom: 0.1em;
      height: 0.9em;
      width: 1em;
      vertical-align: bottom;
    }
    warning::after {
      content: "";
      display: inline-block;
      position: absolute;
      height: 0.9em;
      width: 1em;
      background: var(--warning) no-repeat center center;
      filter: blur(0.1em);
    }
]]

HUDObject = function (x, y, width, height, content)
    local this = {}
    local vec2 = require('cpml/vec2')
    setmetatable(this, { _name = "HUDObject" })   
    this.Enabled = false
    this.Name = nil

    this.Position = vec2(x or 0, y or 0)
    this.Offset = vec2(0, 0)

    this.Width = width or 0
    this.Height = height or 0
    this.Zindex = 0
    this.Padding = 0
    this.Class = ""
    this.Style = ""

    this.Parent = nil
    this.Children = {}
    this.Content = content or ""
    this.IsDirty = true
    this.IsHovered = false
    this.IsPressed = false
    this.Anchoring = {
        TopLeft = false,
        TopRight = false,
        BottomLeft = false,
        BottomRight = false
    }

    this.HUD = Horizon.GetModule("HUDCore")
    this.Horizon = Horizon

    this.GUID = (function ()
        math.randomseed(system.getTime() * 1000000)
        local template ='xxxxxxxx-xxxx-4xxx-yxxx-xxxxxxxxxxxx'
        return string.gsub(template, '[xy]', function (c)
            local v = (c == 'x') and math.random(0, 0xf) or math.random(8, 0xb)
            return string.format('%x', v)
        end)
    end)()

    this._wrapStart = ""
    this._wrapEnd = ""

    local wasHovered = false
    local wasClicked = false
    local buffer = ""

    function this.Contains(pos)
        local selfPos = this.GetAbsolutePos()
        selfPos.x = selfPos.x + this.Padding
        selfPos.y = selfPos.y + this.Padding

        if  pos.x >= selfPos.x and pos.x <= selfPos.x + this.Width and 
            pos.y >= selfPos.y and pos.y <= selfPos.y + this.Height then
            return true
        end
        return false
    end
    
    function this.GetAbsolutePos()
        local pos = this.Position + this.Offset
        if this.Parent then
            pos = pos + this.Parent.GetAbsolutePos()
            local pad = this.HUD.TransformSize(this.Parent.Padding)
            pos = pos + pad
        end
        return pos
    end

    function this._update()
        if this.Parent ~= nil then
            -- Recalc pos,size based on anchoring, set IsDirty if changed
        end
        if this.Contains(this.HUD.MousePos) then
            this.IsHovered = true
        else
            this.IsHovered = false
        end
        if this.IsHovered then 
            this.IsDirty = true
            this.OnEnter(this)
            wasHovered = true
        else
            if wasHovered then
                this.IsDirty = true
                wasHovered = false
                this.OnLeave(this)
            end
        end
        this.OnUpdate(this)

        for k,v in ipairs(this.Children) do
            v._update()
        end
    end

    function this.AddChild(child)
        if typeof(child) ~= "HUDObject" then 
            error("Trying to add a non-HUDObject")
            return
        end
        for k,v in ipairs(this.Children) do
            if v.GUID == child.GUID then 
                error(v.GUID.." is already a child of"..this.GUID)
                return
            end
        end
        child.Parent = this
        this.Children[#this.Children+1] = child
    end

    function this.RemoveChild(child)
        if typeof(child) ~= "HUDObject" then
            error("Trying to remove a non-HUDObject")
            return
        end
        for k,v in ipairs(this.Children) do
            if v.GUID == child.GUID then
                v.Parent = nil
                table.remove(this.Children, k)
                v.Offset = {
                    X = v.Offset.x,
                    Y = v.Offset.y
                }
                return
            end
        end
        error(v.GUID.." is not a child of"..this.GUID)
    end

    function this.SetParent(parent)
        error("NotImplemented")
    end

    function this.OnUpdate(scope) end
    function this.OnEnter(scope) end
    function this.OnLeave(scope) end
    function this.OnPress(scope) end
    function this.OnRelease(scope) end
    function this.OnClick(scope) end
    function this.OnScroll(scope, delta) end
    function this.Render(scope)
        local anyDirty = scope.IsDirty
        for k,v in ipairs(scope.Children) do
            if v.IsDirty then
                anyDirty = true
                break
            end
        end
        if anyDirty then
            buffer = template.substitute(scope._wrapStart..scope.Content.. scope._wrapEnd, scope)
            for k,v in ipairs(scope.Children) do
                buffer = buffer .. v.Render(v)
            end
            scope.IsDirty = false
        end
        return buffer
    end
    
    return this
end

HUDPanel = function (x, y, width, height, content)
    local this = HUDObject(x, y, width, height, content)
    this._wrapStart = [[<panel style="position:absolute;left:$(GetAbsolutePos().x)vw;top:$(GetAbsolutePos().y)vh;width:$(Width)vw;height:$(Height)vh;z-index:$(Zindex);$(Style)" class="$(Class)">]]
    this._wrapEnd = [[</panel>]]
    return this
end

HUDExpandable = function (x, y, content)
    local this = HUDPanel(x, y, width, height, content)
    this.Width = 0
    this.Height = 0
    local maxHeight = 0
    local maxWidth = 0

    local baseUpdate = this._update
    
    function this._update()
        for k,v in ipairs(this.Children) do
            local w = v.Position.x + v.Width
            local h = v.Position.y + v.Height
            if w > maxWidth then 
                maxWidth = w 
                this.IsDirty = true
            end
            if h > maxHeight 
            then 
                maxHeight = h 
                this.IsDirty = true
            end
        end
        if this.IsDirty then
            local pad = this.HUD.TransformSize(this.Padding) * 2
            this.Width = maxWidth + pad.x
            this.Height = maxHeight + pad.y
        end
        baseUpdate()
    end

    return this
end

HUDFillHorizontal = function (x, y, content)
    
end

HUDCore = (function(CSS) 
    local template = require('pl/template')
    local this = HorizonModule("HUDCore", "PostUpdate", true, 5)
    local vec2 = require('cpml/vec2')
    this.Tags = "hud,core"
    this.Config = {
        EnableMouse = true,
        MouseSensitivity = 1.2,
        ScreenSize = vec2(2560, 1440)
    }
    this.Widgets = {}
    this.CSS = CSS

    local header = ""
    if this.CSS then header = "<style>"..this.CSS.."</style>" end

    local MousePos = vec2(this.Config.ScreenSize.x * 0.5, this.Config.ScreenSize.y * 0.5)
    this.MousePos = vec2(this.Config.ScreenSize.x * 0.5, this.Config.ScreenSize.y * 0.5)

    system.showScreen(1)
    system.freeze(1)
    Horizon.Controller.hide()

    function contains(obj, pos)
        if  pos.x > obj.x and pos.x < obj.x + obj.Width and
            pos.y > obj.y and pos.y < obj.y + obj.Height then
            return true
        end
        return false
    end

    local function xform(pos)
        return vec2((pos.x / this.Config.ScreenSize.x) * 100, (pos.y / this.Config.ScreenSize.y) * 100)
    end

    function processMouse(x, y)
        MousePos.x = MousePos.x + (x * this.Config.MouseSensitivity)
        MousePos.y = MousePos.y + (y * this.Config.MouseSensitivity)
        if MousePos.x < 0 then MousePos.x = 0 end
        if MousePos.x > this.Config.ScreenSize.x then MousePos.x = this.Config.ScreenSize.x end
        if MousePos.y < 0 then MousePos.y = 0 end
        if MousePos.y > this.Config.ScreenSize.y then MousePos.y = this.Config.ScreenSize.y end
        this.MousePos = xform(MousePos)
    end

    function this.TransformSize(size)
        return vec2(size, size + ((size / HUDCore.Config.ScreenSize.y) * 1000))
    end
    
    function this.Update(eventType, deltaTime)
        processMouse(system.getMouseDeltaX(), system.getMouseDeltaY())
        local buffer = header .. [[<div id="horizon">]]
        for k,v in ipairs(this.Widgets) do
            v._update()
            buffer = buffer .. v.Render(v)
        end
        system.setScreen(buffer .. "</div>")
    end

    function this.AddWidget(widget)
        if typeof(widget) ~= "HUDObject" then return end
        for k,v in ipairs(this.Widgets) do
            if v.GUID == widget.GUID then 
                return
            end
        end
        table.insert(this.Widgets, widget)
    end

    function this.RemoveWidget(widget)
        if typeof(widget) ~= "HUDObject" then return end
        for k,v in ipairs(this.Widgets) do
            if v.GUID == widget.GUID then 
                table.remove(this.Widgets, k)
                return
            end
        end
    end

    -- fixes for template builtin
    debug = {traceback = traceback}
    plutils.load = function(code, name, mode, env)
        local err, fn = pcall(load(code, nil, "t", env))
        return function() return fn end, err
    end

    return this
end)(CSS)
Horizon.RegisterModule(HUDCore)

local cursor = HUDObject(50,50)
cursor.OnUpdate = function(this)
    this.Position.x = HUDCore.MousePos.x
    this.Position.y = HUDCore.MousePos.y
    this.IsDirty = true
end
cursor.Content = [[
<uicursor style="left: $(Position.x)vw;top: $(Position.y)vh">
	<svg xmlns="http://www.w3.org/2000/svg" stroke="black" stroke-width="1" preserveAspectRatio="xMidYMid" viewBox="0 0 100 100"><path fill="#ae0f12" fill-rule="evenodd" d="M30 73L0 100V0l100 100-70-27zM9 80l19-17 37 14L9 21v59z"/></svg>
</uicursor>
]]
HUDCore.AddWidget(cursor)

local mainPanel = HUDExpandable(86.4, 30)
mainPanel.Class = "filled"
mainPanel.Padding = 0.3
mainPanel.Name = "Main"
HUDCore.AddWidget(mainPanel)

local subpanel = HUDPanel(0, 0, 10, 3)
subpanel.Content = [[<uiheading>Test Section</uiheading>]]
subpanel.Name = "Head"
mainPanel.AddChild(subpanel)

local guids = HUDExpandable(0, 3.3)
guids.Class = "filled"
guids.Name = "GUIDS"
guids.Padding = 0.3
local dy = 0
local function addPanels(list, offset)
    for k,v in ipairs(list) do
        local child = HUDPanel(0 + offset, dy, 10 - offset, 3.5)
        child.Content = "$(Offset.x) $(Parent.Offset.x)"
        child.Name = "GUID "..k.." - "..offset
        child.Class = "filled"
        child.Style = "font-size: 0.65vmax"
        guids.AddChild(child)
        dy = dy + 3.8
        if #v.Children > 0 then
            addPanels(v.Children, offset + 0.5)
        end
    end
end
addPanels(HUDCore.Widgets, 0)
mainPanel.AddChild(guids)