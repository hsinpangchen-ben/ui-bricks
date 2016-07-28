Pod::Spec.new do |s|
  s.name             = "UIBricks"
  s.version          = "0.0.1"
  s.summary          = "The UI component for iOS"

  s.description      = <<-DESC
                        Useful UI Components
                       DESC

  s.homepage         = "https://github.com/hsinpangchen-ben/ui-bricks"
  s.license          = 'MIT'
  s.author           = { "Ben Chen" => "iamabang@gmail.com" }
  s.source           = { :git => "https://github.com/hsinpangchen-ben/ui-bricks.git", :tag => s.version.to_s }

  s.platform         = :ios, '7.0'
  s.requires_arc     = true

  s.source_files 			= "ui-bricks/classes/**/*"
  s.public_header_files 	= "ui-bricks/classes/**/*.h"
  s.requires_arc 			= true

  #s.dependency 'TTTAttributedLabel'

end
