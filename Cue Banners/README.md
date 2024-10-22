# 🎨 CueBanners.ahk

**CueBanners** is an [AutoHotkey v2](https://www.autohotkey.com/v2) script that allows you to set placeholder text (cue banners) for `Edit` and `ComboBox` controls for AutoHotkey v2 GUIs.

## ✨ Features

- 📝 Set cue banners (placeholder text) for both `Edit` and `ComboBox` controls.
- 👀 Supports keeping the placeholder visible even when the control has focus.
- ⚡ Simple and lightweight integration into any AutoHotkey GUI project.
- 🔄 Converted from AutoHotkey v1 to v2, with additional comments and improvements.
- 🎯 Supports [generic set method](https://github.com/Aaqil101/Custom-Libraries/tree/master/Cue%20Banners#example-setting-a-cue-banner-for-a-combobox-control).

## 📋 Requirements

- [**AutoHotkey v2.0**](https://www.autohotkey.com/download/ahk-v2.exe) or higher

## 🚀 Installation

1. Download the script and place it in your project directory.
2. Include it in your AutoHotkey script by using the `#Include` function.

   ```AutoHotkey
   #Include CueBanners.ahk
   ```

## 🛠️ Usage

### Example: Setting a Cue Banner for an Edit Control

```AutoHotkey
; Create the GUI
myGui := Gui("AlwaysOnTop")

; Set normal cue banners for the Edit control
edit1 := myGui.Add("Edit", "w200")
CueBanners.SetEdit(edit1, "Edit with normal cue banners...")

; Set focus cue banners for the Edit control
edit2 := myGui.Add("Edit", "w200")
CueBanners.SetEdit(edit2, "Edit with focus cue banners...", true)

; Show the GUI
myGui.Show()
```

### Example: Setting a Cue Banner for a ComboBox Control

```AutoHotkey
; Create the GUI
myGui := Gui("AlwaysOnTop")

; Set normal cue banners for the ComboBox control
combo1 := myGui.Add("ComboBox", "w200")
CueBanners.SetComboBox(combo1, "ComboBox with normal cue banners...")

; Show the GUI
myGui.Show()
```

### Example: Setting a Cue Banner for any Control

```AutoHotkey
; Using generic Set method:
CueBanners.Set(anyCtrl, "Enter value...", true)    ; Works with either type
```

### Parameters

- `ctrl`: The control object or handle. This can be either an `Edit` or `ComboBox` control.
- `text`: The placeholder text to display in the control.
- `stayOnFocus`: If `true`, the placeholder text will stay visible even when the control has focus (default is `false`).

## 📚 Credits

- **Original author: [jNizM](https://github.com/jNizM)**
- Converted and modified by: [Aaqil Ilyas](https://github.com/Aaqil101/Time-Calculator)

### 📝 License

This script is released under the **WTFPL** license. Feel free to do whatever the fuck you want with it!