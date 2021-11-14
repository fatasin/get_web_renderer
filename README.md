# get_web_renderer

This plugin help you to detect current web renderer.

## Getting Started

This plugin provide very basic api to recognize current web renderer. This is all api for you to use:
```dart
bool _isHtmlRenderer = isHtmlRenderer;
bool _isCanvasKitRenderer = isCanvasKitRenderer;
bool _isOtherRenderer = isOtherRenderer;

// return CurrentRenderer.html, CurrentRenderer.canvasKit, CurrentRenderer.other
CurrentRenderer _currentRenderer = getCurrentRenderer; 
```
