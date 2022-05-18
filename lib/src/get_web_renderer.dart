import 'get_web_renderer_stub.dart'
    if (dart.library.html) 'get_web_renderer_web.dart';

/// All values of the renderer
enum CurrentRenderer { html, canvasKit, other }

/// Return true if current renderer is HTML
@Deprecated('Use `WebRenderer.isHtmlRenderer` instead')
bool get isHtmlRenderer => getCanvasKitRenderer == false;

/// Return true if current renderer is CanvasKit
@Deprecated('Use `WebRenderer.isCanvasKitRenderer` instead')
bool get isCanvasKitRenderer => getCanvasKitRenderer == true;

/// Return true if current renderer is not web platform
@Deprecated('Use `WebRenderer.isOtherRenderer` instead')
bool get isOtherRenderer => getCanvasKitRenderer == null;

/// Return current renderer as an enum
@Deprecated('Use `WebRenderer.getCurrentRenderer` instead')
CurrentRenderer get getCurrentRenderer => isHtmlRenderer
    ? CurrentRenderer.html
    : isCanvasKitRenderer
        ? CurrentRenderer.canvasKit
        : CurrentRenderer.other;

class WebRenderer {
  /// Only use this class as static class.
  WebRenderer._();

  /// Return true if current renderer is HTML
  static bool get isHtmlRenderer => getCanvasKitRenderer == false;

  /// Return true if current renderer is CanvasKit
  static bool get isCanvasKitRenderer => getCanvasKitRenderer == true;

  /// Return true if current renderer is not web platform
  static bool get isOtherRenderer => getCanvasKitRenderer == null;

  /// Return current renderer as an enum
  static CurrentRenderer get getCurrentRenderer => isHtmlRenderer
      ? CurrentRenderer.html
      : isCanvasKitRenderer
          ? CurrentRenderer.canvasKit
          : CurrentRenderer.other;
}
