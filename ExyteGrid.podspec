#
# Be sure to run `pod lib lint Grid.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'ExyteGrid'
  s.version          = '0.1.0'
  s.summary          = 'The most powerful Grid container missed in SwiftUI'

  s.homepage         = 'https://github.com/exyte/Grid.git'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Exyte' => 'info@exyte.com' }
  s.source           = { :git => 'https://github.com/exyte/Grid.git', :tag => s.version.to_s }
  s.social_media_url = 'http://exyte.com'

  s.ios.deployment_target = '13.0'
  s.source_files = 'Sources/**/*.swift'
  s.swift_version = "5.2"
  
end
