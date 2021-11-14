import 'get_web_renderer_stub.dart'
    if (dart.library.html) 'get_web_renderer_web.dart';

enum CurrentRenderer { html, canvasKit, other }

bool get isHtmlRenderer => getCanvasKitRenderer == false;
bool get isCanvasKitRenderer => getCanvasKitRenderer == true;
bool get isOtherRenderer => getCanvasKitRenderer == null;
CurrentRenderer get getCurrentRenderer => isHtmlRenderer
    ? CurrentRenderer.html
    : isCanvasKitRenderer
        ? CurrentRenderer.canvasKit
        : CurrentRenderer.other;
