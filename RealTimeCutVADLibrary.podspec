Pod::Spec.new do |s|
  s.name             = 'RealTimeCutVADLibrary'
  s.version          = '1.0.0'
  s.summary          = 'A real-time VAD library for iOS'
  s.homepage         = 'https://github.com/helloooideeeeea/RealTimeCutVADLibrary'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'helloooideeeeea' => 'yasushi.sakita@gmail.com' }
  s.source           = { :git => 'https://github.com/helloooideeeeea/RealTimeCutVADLibrary.git', :tag => s.version.to_s }
  s.platforms        = { :ios => '15.6', :osx => '11.5' }
  s.swift_version    = '5.0'
  s.source_files     = 'RealTimeCutVADLibrary/src/**/*.{h,m}'
  s.public_header_files = 'RealTimeCutVADLibrary/src/include/VADWrapper.h'
  s.resources = ['RealTimeCutVADLibrary/src/Resources/**/*']
  
  s.vendored_frameworks = [
    'https://github.com/helloooideeeeea/RealTimeCutVADLibraryForXCFramework/releases/download/v1.0.0/RealTimeCutVADCXXLibrary.xcframework.zip',
    'https://github.com/helloooideeeeea/RealTimeCutVADLibraryForXCFramework/releases/download/v1.0.0/onnxruntime.xcframework.zip',
    'https://github.com/helloooideeeeea/RealTimeCutVADLibraryForXCFramework/releases/download/v1.0.0/webrtc_audio_processing.xcframework.zip'
  ]

  s.requires_arc = true

  s.pod_target_xcconfig = {
    'HEADER_SEARCH_PATHS' => '$(PODS_TARGET_SRCROOT)/RealTimeCutVADLibrary/Frameworks/RealTimeCutVADCXXLibrary.xcframework/ios-arm64/RealTimeCutVADCXXLibrary.framework/Headers',
    'EXCLUDED_ARCHS[sdk=macosx*]' => 'x86_64'
  }

end
