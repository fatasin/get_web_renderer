import 'get_web_renderer_stub.dart'
    if (dart.library.html) 'get_web_renderer_web.dart';

/// All values of the renderer
enum CurrentRenderer { html, canvasKit, other }

/// Return true if current renderer is HTML
bool get isHtmlRenderer => getCanvasKitRenderer == false;

/// Return true if current renderer is CanvasKit
bool get isCanvasKitRenderer => getCanvasKitRenderer == true;

/// Return true if current renderer is not web platform
bool get isOtherRenderer => getCanvasKitRenderer == null;

/// Return enum value
CurrentRenderer get getCurrentRenderer => isHtmlRenderer
    ? CurrentRenderer.html
    : isCanvasKitRenderer
        ? CurrentRenderer.canvasKit
        : CurrentRenderer.other;
