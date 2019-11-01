#import "GenDeviceidPlugin.h"
#import <gen_deviceid_plugin/gen_deviceid_plugin-Swift.h>

@implementation GenDeviceidPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftGenDeviceidPlugin registerWithRegistrar:registrar];
}
@end
