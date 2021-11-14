# get_web_renderer

This plugin help you to detect current web renderer.

## Getting Started

This plugin provide very basic api to recognize current web renderer. This is all api for you to use:
```dart
enum CurrentRenderer { html, canvasKit, other }

bool get isHtmlRenderer => getCanvasKitRenderer == false;
bool get isCanvasKitRenderer => getCanvasKitRenderer == true;
bool get isOtherRenderer => getCanvasKitRenderer == null;
CurrentRenderer get getCurrentRenderer => isHtmlRenderer
    ? CurrentRenderer.html
    : isCanvasKitRenderer
        ? CurrentRenderer.canvasKit
        : CurrentRenderer.other;
```
