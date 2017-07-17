#
#  Be sure to run `pod spec lint GetDeviceName.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|


  s.name         = "THGetDeviceName"
  s.version      = "1.0.0"
  s.summary      = "a get Device Name."

  s.homepage     = "https://github.com/hohua88/THGetDeviceName"
  s.license      = "MIT"
  s.author             = { "Joshua" => "784550567@qq.com" }

  s.social_media_url   = "https://github.com/hohua88"

  s.platform     = :ios, "8.0"

  s.source       = { :git => "https://github.com/hohua88/THGetDeviceName.git", :tag => s.version }

  s.source_files  = "THGetDeviceName/*.{h,m}"

  s.requires_arc = true

end
