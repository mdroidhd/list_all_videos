import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'list_all_videos_platform_interface.dart';

/// An implementation of [ListAllVideosPlatform] that uses method channels.
class MethodChannelListAllVideos extends ListAllVideosPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('list_all_videos');

  @override
  Future<String?> getPlatformVersion() async {
    final version =
        await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
