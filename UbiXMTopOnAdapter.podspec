
Pod::Spec.new do |s|
  s.name             = 'UbiXMTopOnAdapter'
  s.version          = '1.0.0'
  s.summary          = 'UBiX聚合广告变现SDK ToponAdapter'
  s.homepage         = 'https://www.ubixai.com/product/md'
  # s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'zhugq' => 'guoqiang.zhu@ubixai.com' }
  s.source           = { :http => 'https://m-now.ubixioe.com/package_file/mediation_sdk/IOS/2.4.1/iOS_UBiX_N.O.W.SDK_2.4.0.zip' }
  s.ios.deployment_target = '10.0'

  s.static_framework = true
  s.ios.source_files = 'UbiXMTopOnAdapter/**/*.{h,m}'
  # Arc
  # s.requires_arc = 'UbiXMediation/UbiXMediation/{PublicServices,AdServices,BusinessServices,manager,SystemServices}/**/*.m'
  # Public
  s.ios.public_header_files =  'UbiXMTopOnAdapter/Public/*.h'
  # 删除引用
  # s.ios.exclude_files= 'UbiXMediation/UbiXMediation/AdServices/Adapter/{YKY,Topon}/**/*.{h,m}',
  # 'UbiXMediation/UbiXMediation/AdServices/AdnCategory/Pangle/**/*.{h,m}',
  # 'UbiXMediation/UbiXMediation/AdServices/AdnCategory/KS/KS*.{h,m}'
  # Bunlde
  # s.ios.resource_bundle = { 'UbiXMediation' => 'UbiXMediation/UbiXMediation/PrivacyInfo.xcprivacy' }

  # s.prefix_header_file = 'UbiXMediation/UbiXMediation/UbiXMediationPrefixHeader.pch'
  s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64',
    'OTHER_LINK_FLAG' => '$(inherited) -ObjC' }
  s.frameworks = 'UIKit', 'MapKit', 'WebKit', 'MediaPlayer', 'CoreLocation', 'AdSupport', 'CoreMedia', 'AVFoundation', 'CoreTelephony', 'StoreKit', 'SystemConfiguration', 'MobileCoreServices', 'CoreMotion', 'Accelerate','AudioToolbox','JavaScriptCore','Security','CoreImage','AudioToolbox','ImageIO','QuartzCore','CoreGraphics','CoreText'
  
  s.weak_frameworks = 'AppTrackingTransparency', 'DeviceCheck'
  s.libraries = 'c++', 'resolv', 'z', 'sqlite3', 'bz2', 'xml2', 'iconv', 'c++abi'
  
  s.dependency 'AnyThinkiOS','6.3.21'

  
  # 脚本
  # s.script_phase = { :name => 'Hello World', :script => '
  #   # Type a script or drag a script file from your workspace to insert its path.
  # '}
   

end
