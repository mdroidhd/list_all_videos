import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'list_all_videos_method_channel.dart';

abstract class ListAllVideosPlatform extends PlatformInterface {
  /// Constructs a ListAllVideosPlatform.
  ListAllVideosPlatform() : super(token: _token);

  static final Object _token = Object();

  static ListAllVideosPlatform _instance = MethodChannelListAllVideos();

  /// The default instance of [ListAllVideosPlatform] to use.
  ///
  /// Defaults to [MethodChannelListAllVideos].
  static ListAllVideosPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [ListAllVideosPlatform] when
  /// they register themselves.
  static set instance(ListAllVideosPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
