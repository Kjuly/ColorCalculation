Pod::Spec.new do |spec|
  spec.name         = "ColorCalculation"
  spec.version      = "1.1.0"
  spec.summary      = "A color extension library for calculating hex, brightness, etc."
  spec.license      = "MIT"
  spec.source       = { :git => "https://github.com/Kjuly/ColorCalculation.git", :tag => spec.version.to_s }
  spec.homepage     = "https://github.com/Kjuly/ColorCalculation"

  spec.author             = { "Kjuly" => "dev@kjuly.com" }
  spec.social_media_url   = "https://twitter.com/kJulYu"

  spec.ios.deployment_target = "15.5"
  spec.osx.deployment_target = "12.0"
  spec.watchos.deployment_target = "6.0"

  spec.swift_version = '5.0'

  spec.source_files  = "ColorCalculation"
  spec.exclude_files = "ColorCalculation/ColorCalculation.docc"

  spec.requires_arc = true
end
