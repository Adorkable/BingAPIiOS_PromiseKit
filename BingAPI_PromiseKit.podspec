Pod::Spec.new do |s|
  s.name         = 'BingAPI_PromiseKit'
  s.version      = '0.1.0'
  s.license      = 'MIT'
  s.homepage     = 'https://github.com/Adorkable/BingAPIiOS_PromiseKit'
  s.authors      =  { 'Ian Grossberg' => 'yo.ian.g@gmail.com' }
  s.summary      = 'Simple access to the BingAPI with PromiseKit support'

# Source Info
  s.platform     =  :ios, '8.0'
  s.source       =  { :git => 'https://github.com/Adorkable/BingAPIiOS_PromiseKit.git', :tag => '0.1.0' }
  s.source_files = 'BingAPI_PromiseKit/*.swift'

  s.dependency 'BingAPI'
  s.dependency 'PromiseKit/Swift'
  s.requires_arc = true
end