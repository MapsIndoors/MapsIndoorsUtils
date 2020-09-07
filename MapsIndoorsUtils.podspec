#
# Be sure to run `pod lib lint MapsIndoorsUtils.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'MapsIndoorsUtils'
  s.version          = ENV['LIB_VERSION'] || '0.1.0-alpha2' #fallback to first version
  s.summary          = 'A small library of utilities and helpers relevant for MapsIndoors IOS SDK.'

  s.description      = <<-DESC
  In order to make it easier to work with the appearance of special icons on the MapsIndoors map, we are releasing some rendering helpers in a Utility Library for each MapsIndoors platform. We don’t want to force an app into a specific visualization, so the helpers create a sensible default, with a few options for configuration. If a developer is not happy with defaults or the ways it can be configured, it is possible to create a rendering from the scratch or create a modified rendering with this source code as a starting point.
                       DESC

  s.homepage         = 'https://github.com/MapsIndoors/MapsIndoorsUtils'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'MapsPeople' => 'mail@mapspeople.com' }
  s.source           = { :git => 'https://github.com/MapsIndoors/MapsIndoorsUtils.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '12.0'
  s.swift_version = '4.2'
  s.source_files = 'MapsIndoorsUtils/Classes/**/*'
  
end
