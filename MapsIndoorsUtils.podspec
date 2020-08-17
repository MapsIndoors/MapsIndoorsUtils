#
# Be sure to run `pod lib lint MapsIndoorsUtils.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'MapsIndoorsUtils'
  s.version          = ENV['LIB_VERSION'] || '0.1.0-alpha' #fallback to first version
  s.summary          = 'A small library of utilities and helpers relevant for MapsIndoors IOS SDK.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
  In order to make it easier to work with the appearance of special icons on the MapsIndoors map, we are releasing some rendering helpers in a Utility Library for each MapsIndoors platform. We don’t want to force an app into a specific visualization, so the helpers create a sensible default, with a few options for configuration. If a developer is not happy with defaults or the ways it can be configured, it is possible to create a rendering from the scratch or create a modified rendering with this source code as a starting point.
                       DESC

  s.homepage         = 'https://github.com/MapsIndoors/MapsIndoorsUtilsIOS'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'MapsPeople' => 'mail@mapspeople.com' }
  s.source           = { :git => 'https://github.com/MapsIndoors/MapsIndoorsUtilsIOS.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '11.4'
  s.swift_version = '4.2'
  s.source_files = 'MapsIndoorsUtils/Classes/**/*'
  
  # s.resource_bundles = {
  #   'MapsIndoorsUtils' => ['MapsIndoorsUtils/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
