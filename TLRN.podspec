Pod::Spec.new do |s|
  s.name         = "TLRN"
  s.version      = "0.0.1"
  s.summary      = "A custom react-native repo."
  s.license      = "MIT"
  s.author             = { "Zhang Zhu" => "zebrazhu@gmail.com" }
  s.source       = { :git => "https://github.com/zhuzhang/react-native.git", :tag => "v0.0.1-dev" }
  s.homepage    = "http://zhuzhang.github.io"
  s.default_subspecs = "Core"
  s.requires_arc = true
  s.platform     = :ios, "7.0"
  s.prepare_command = "npm install --production"
  s.preserve_paths = "cli.js", "Libraries/**/*.js", "lint", "linter.js", "node_modules", "package.json", "packager", "PATENTS", "react-native-cli"
  s.header_mappings_dir = "."
  s.subspec 'Core' do |core|
    core.source_files = "React/**/*.{c,h,m}"
    core.exclude_files = "**/__tests__/*", "IntegrationTests/*"
    core.frameworks = "JavaScriptCore"
  end
  s.subspec 'ART' do |art|
    art.dependency "TLRN/Core"
    art.source_files = "Libraries/ART/**/*.{h,m}"
    art.preserve_paths = "Libraries/ART/**/*.js"
  end
  s.subspec 'RCTActionSheet' do |as|
    as.dependency "TLRN/Core"
    as.source_files = "Libraries/ActionSheetIOS/*.{h,m}"
    as.preserve_paths = "Libraries/ActionSheetIOS/*.js"
  end
  s.subspec 'RCTAdSupport' do |ad|
    ad.dependency "TLRN/Core"
    ad.source_files = "Libraries/AdSupport/*.{h,m}"
    ad.preserve_paths = "Libraries/AdSupport/*.js"
  end
  s.subspec 'RCTGeolocation' do |ad|
    ad.dependency "TLRN/Core"
    ad.source_files = "Libraries/Geolocation/*.{h,m}"
    ad.preserve_paths = "Libraries/Geolocation/*.js"
  end
  s.subspec 'RCTImage' do |ad|
    ad.dependency "TLRN/Core"
    ad.dependency "TLRN/RCTNetwork"
    ad.source_files = "Libraries/Image/*.{h,m}"
    ad.preserve_paths = "Libraries/Image/*.js"
  end
  s.subspec 'RCTNetwork' do |ad|
    ad.dependency "TLRN/Core"
    ad.source_files = "Libraries/Network/*.{h,m}"
    ad.preserve_paths = "Libraries/Network/*.js"
  end
  s.subspec 'RCTPushNotification' do |ad|
    ad.dependency "TLRN/Core"
    ad.source_files = "Libraries/PushNotificationIOS/*.{h,m}"
    ad.preserve_paths = "Libraries/PushNotificationIOS/*.js"
  end
  s.subspec 'RCTSettings' do |ad|
    ad.dependency "TLRN/Core"
    ad.source_files = "Libraries/Settings/*.{h,m}"
    ad.preserve_paths = "Libraries/Settings/*.js"
  end
  s.subspec 'RCTText' do |ad|
    ad.dependency "TLRN/Core"
    ad.source_files = "Libraries/Text/*.{h,m}"
    ad.preserve_paths = "Libraries/Text/*.js"
  end
  s.subspec 'RCTVibration' do |ad|
    ad.dependency "TLRN/Core"
    ad.source_files = "Libraries/Vibration/*.{h,m}"
    ad.preserve_paths = "Libraries/Vibration/*.js"
  end
  s.subspec 'RCTWebSocket' do |ad|
    ad.dependency "TLRN/Core"
    ad.source_files = "Libraries/WebSocket/*.{h,m}"
    ad.preserve_paths = "Libraries/WebSocket/*.js"
  end
  s.subspec 'RCTLinkingIOS' do |ad|
    ad.dependency "TLRN/Core"
    ad.source_files = "Libraries/LinkingIOS/*.{h,m}"
    ad.preserve_paths = "Libraries/LinkingIOS/*.js"
  end
end
