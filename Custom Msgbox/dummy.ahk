class CustomMsgBox {
    ; Add these static properties to store ToolWindow options
    static ToolWindowStyles := Map(
        "ToolWindow", "+ToolWindow",           ; Basic tool window (smaller title bar, no minimize/maximize buttons)
        "AlwaysOnTop", "+AlwaysOnTop",        ; Keep window above others
        "Border", "-Border",                   ; Remove window border
        "Caption", "-Caption",                 ; Remove title bar completely
        "SysMenu", "-SysMenu",                ; Remove system menu
        "MinimizeBox", "-MinimizeBox",        ; Remove minimize button
        "MaximizeBox", "-MaximizeBox",        ; Remove maximize button
        "Resize", "-Resize",                  ; Make window non-resizable
        "Theme", "-Theme",                    ; Disable visual styles
        "Owner", "+Owner",                    ; Set window ownership
        "Transparent", "+E0x20",              ; Make window semi-transparent
        "NoActivate", "+E0x08000000",         ; Prevent window from becoming active
        "Disabled", "+Disabled",              ; Create disabled window
        "Popup", "-Popup"                     ; Create as popup window
    )

    ; Add these properties to store tool window state
    toolWindowOptions := []
    transparency := 255  ; 0-255, where 255 is fully opaque
    isClickThrough := false

    /**
     * Configures the window as a tool window with specified options
     * @param {Array} options Array of tool window options to enable
     * @returns {CustomMsgBox} This object for method chaining
     */
    SetToolWindow(options*) {
        this.toolWindowOptions := []
        this.toolWindowOptions.Push("+ToolWindow")  ; Base ToolWindow style
        
        for option in options {
            if CustomMsgBox.ToolWindowStyles.Has(option)
                this.toolWindowOptions.Push(CustomMsgBox.ToolWindowStyles[option])
        }
        return this
    }

    /**
     * Sets window transparency level
     * @param {Integer} level Transparency level (0-255, where 255 is fully opaque)
     * @returns {CustomMsgBox} This object for method chaining
     */
    SetTransparency(level) {
        this.transparency := Min(Max(level, 0), 255)
        return this
    }

    /**
     * Makes the window click-through (mouse clicks pass through to windows beneath)
     * @param {Boolean} enable Whether to enable click-through
     * @returns {CustomMsgBox} This object for method chaining
     */
    SetClickThrough(enable := true) {
        this.isClickThrough := enable
        if (enable)
            this.toolWindowOptions.Push("+E0x20")
        return this
    }

    /**
     * Creates a minimal tool window with commonly used options
     * @returns {CustomMsgBox} This object for method chaining
     */
    SetMinimalToolWindow() {
        return this.SetToolWindow(
            "ToolWindow",
            "AlwaysOnTop",
            "MinimizeBox",
            "MaximizeBox",
            "Resize"
        )
    }

    /**
     * Creates a floating tool window with commonly used options
     * @returns {CustomMsgBox} This object for method chaining
     */
    SetFloatingToolWindow() {
        return this.SetToolWindow(
            "ToolWindow",
            "AlwaysOnTop",
            "Border",
            "MinimizeBox",
            "MaximizeBox"
        ).SetTransparency(230)
    }

    /**
     * Creates an information tool window with commonly used options
     * @returns {CustomMsgBox} This object for method chaining
     */
    SetInfoToolWindow() {
        return this.SetToolWindow(
            "ToolWindow",
            "AlwaysOnTop",
            "MinimizeBox",
            "MaximizeBox",
            "Resize",
            "SysMenu"
        )
    }

    ; Modify the Show method to include tool window options
    Show() {
        ; Combine all options into a single string
        optString := ""
        for opt in this.toolWindowOptions
            optString .= " " opt

        ; Create GUI with combined options
        this.gui := GuiExt(optString)
        
        ; Apply transparency if set
        if (this.transparency < 255)
            WinSetTransparent(this.transparency, this.gui)

        ; Apply click-through if enabled
        if (this.isClickThrough)
            WinSetExStyle("+0x20", this.gui)  ; WS_EX_TRANSPARENT

        ; Rest of the Show method remains the same...
        this.gui.SetFont(this.BuildFontOptions(), this.fontFamily)
        this.gui.SetDarkTitle()
        this.gui.SetDarkMenu()
        this.gui.BackColor := this.bgColor
        this.gui.Title := this.title

        this.AddMessageText()
        this.AddButton1()

        if (this.closeTimer > 0)
            SetTimer(() => this.gui.Destroy(), -(this.closeTimer * 1000))

        this.gui.Show("x" this.showX " y" this.showY "AutoSize")
        WinWaitClose(this.gui)
    }
}