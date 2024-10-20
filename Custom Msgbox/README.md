# Custom Message Box for [AutoHotkey v2](https://www.autohotkey.com/)

A highly configurable and modern-looking message box library for AutoHotkey v2 that provides extensive customization options for creating stylish and functional dialog boxes.

## Why?
_I was looking for a message box solution that offers greater customization options. While the AutoHotkey message box function is functional and easy to use, I want a msgbox method that allows me to tailor the appearance and behavior of the message box to suit my needs better. Ideally, this would include options for styling, button configurations, and interactive features that enhance the user experience. That’s why I created this custom msgbox with the help of the [Claude](https://claude.ai/) AI._


## Features

- 🎨 Fully customizable appearance including colors, fonts, and button styles
- 🎯 Precise positioning control
- 🎭 Multiple pre-defined color schemes with the ability to add custom schemes
- ⚡ Easy-to-use fluent interface with method chaining
- 📏 Configurable window sizing (minimum/maximum)
- ⏲️ Auto-close timer functionality
- 🔠 Rich text formatting options
- 🖼️ Modern, flat UI design

## Dependencies

This library requires the following dependencies:
- [GuiEnhancerKit.ahk](https://github.com/nperovic/GuiEnhancerKit)
- [ColorButton.ahk](https://github.com/nperovic/ColorButton.ahk)
- [ColorSchemes.ahk](https://github.com/Aaqil101/Custom-Libraries/blob/master/Custom%20Msgbox/Lib/ColorSchemes.ahk)
- [CursorHandler.ahk](https://github.com/Aaqil101/Custom-Libraries/blob/master/Custom%20Msgbox/Lib/CursorHandler.ahk)

## Installation

1. Download all required files from the repository
2. Place them in your project directory
3. Include the main library in your script:

```AutoHotkey
#Include CustomMsgbox.ahk
```

## Basic Usage

```AutoHotkey
; Create a simple message box
msg := CustomMsgBox("Hello World!", 300, "Greeting")
msg.Show()

; Create a styled message box with method chaining
msg := CustomMsgBox()
    .SetText("Title", "This is a custom styled message")
    .SetAppearance(14, "ffffff", "313131")
    .SetFontStyle("bold", "italic")
    .SetPosition(100, 100)
    .Show()
```

## Advanced Features

### Color Schemes

```AutoHotkey
; Use a random color scheme
msg := CustomMsgBox("Random styled message")
    .RandomizeColors()
    .Show()

; Apply a specific color scheme
msg := CustomMsgBox("Custom scheme message")
    .SetColorScheme("Dark")
    .Show()

; Add your own color scheme
CustomMsgBox.AddColorScheme("MyTheme", "331111", "ffffff", "aa2031")
```

### Font Styling

```AutoHotkey
msg := CustomMsgBox()
    .SetText("Styled Text", "This text has custom styling")
    .SetFontFamily("Segoe UI")
    .SetFontStyle("bold", "italic")
    .SetFontColor("ffffff")
    .Show()
```

### Window Options

```AutoHotkey
msg := CustomMsgBox()
    .SetOptions("AlwaysOnTop", "Resize")
    .SetMinSize(200, 150)
    .SetMaxSize(800, 600)
    .Show()
```

### Auto-close Timer

```AutoHotkey
msg := CustomMsgBox("This message will close in 5 seconds")
    .SetCloseTimer(5)
    .Show()
```

### Button Customization

```AutoHotkey
msg := CustomMsgBox()
    .SetButton("Accept", 100, 30)  ; Text, width, height
    .SetButtonStyle("0xaa2031")    ; Custom color
    .Show()
```

## Customization Options

### Window Properties
- Title
- Position (X, Y coordinates)
- Background color
- Minimum/Maximum size
- Window options (AlwaysOnTop, Resize, etc.)

### Text Properties
- Content
- Width
- Font family
- Font size
- Font color
- Font styles (Bold, Italic, Strike, Underline)

### Button Properties
- Text
- Dimensions (width, height)
- Position
- Colors (normal, hover, click)
- Corner radius

## Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

## 📜 License

This project is licensed under the WTFPL License - see the [LICENSE](LICENSE) file for details.

## ✨ Contributors

- Aaqil Ilyas (Creator & Maintainer)

## 📮 Contact

- GitHub: [@Aaqil101](https://github.com/Aaqil101)

## 🙏 Acknowledgments

- Thanks to all contributors who help maintain and improve these libraries
- Special thanks to the AutoHotkey community for their support and feedback

## 📊 Project Status

This repository is actively maintained. Updates are added "regularly".

---

*Note: This repository is a collection of independent libraries. Each library may have additional dependencies or requirements. Please check individual library documentation for specific details.*
