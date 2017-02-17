#
# Be sure to run `pod lib lint ToastNotification.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'ToastNotification'
  s.version          = '0.1.0'
  s.summary          = 'A short description of ToastNotification.'

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/rajanshahsa/ToastNotification'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'rajanshahsa' => 'rajan.shah@solutionanalysts.com' }
  s.source           = { :git => 'https://github.com/rajanshahsa/ToastNotification.git', :tag => s.version.to_s }

  s.ios.deployment_target = '8.0'

  s.source_files = 'ToastNotification/Classes/**/*'
 end
