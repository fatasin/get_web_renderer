# get_web_renderer

This plugin help you to detect current web renderer.

## Getting Started

This plugin provide very basic apis to recognize current web renderer.

You just need to add `get_web_renderer: ^any` to your `pubspec.yaml` and this is all apis for you to use:

```dart
/// Return true if current renderer is HTML
bool _isHtmlRenderer = isHtmlRenderer;

/// Return true if current renderer is CanvasKit
bool _isCanvasKitRenderer = isCanvasKitRenderer;

/// Return true if current renderer is not the web platform
bool _isOtherRenderer = isOtherRenderer;

// return CurrentRenderer.html, CurrentRenderer.canvasKit, CurrentRenderer.other
CurrentRenderer _currentRenderer = getCurrentRenderer; 
```
