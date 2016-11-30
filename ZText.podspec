Pod::Spec.new do |s|
  s.name             = 'ZText'
  s.version          = '0.2.0'
  s.summary          = 'A cooler way to use NSAttributedString.'

  s.description      = <<-DESC
    Tired of using NSAttributedString the old way? ZText provides you with a simple way to apply NSAttributedString to your app
                       DESC

  s.homepage         = 'https://github.com/zelic91/ZText'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Thuong Nguyen' => 'thuongnh.uit@gmail.com' }
  s.source           = { :git => 'https://github.com/zelic91/ZText.git', :tag => s.version.to_s }

  s.ios.deployment_target = '9.0'

  s.source_files = 'ZText/Classes/**/*'
end
