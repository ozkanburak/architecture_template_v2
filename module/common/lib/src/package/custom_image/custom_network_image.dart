import 'package:cached_network_image/cached_network_image.dart';
import 'package:common/src/package/custom_mem_cache.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

// it will provier to image caching and image loading from network
final class CustomNetworkImage extends StatelessWidget {
  const CustomNetworkImage({
    super.key,
    this.imageUrl,
    this.emptyWidget,
    this.memCache = const CustomMemCache(height: 100, width: 100),
    this.boxFit,
    this.loadingWidged,
    this.size,
  });

  final String? imageUrl;

  final Widget? emptyWidget;

  final Widget? loadingWidged;

  final CustomMemCache memCache;

  final BoxFit? boxFit;

  final Size? size;

  @override
  Widget build(BuildContext context) {
    final url = imageUrl;
    if (url == null || url.isEmpty) return emptyWidget ?? const SizedBox();
    return CachedNetworkImage(
      imageUrl: url,
      memCacheHeight: memCache.height,
      memCacheWidth: memCache.width,
      fit: boxFit,
      width: size?.width,
      height: size?.height,
      errorListener: (value) {
        if (kDebugMode) debugPrint('Error: $value');
      },
      progressIndicatorBuilder: (context, url, progress) {
        return loadingWidged ??
            const Center(
              child: CircularProgressIndicator(),
            );
      },
      errorWidget: (context, url, error) {
        return emptyWidget ?? const SizedBox();
      },
    );
  }
}
