
Pod::Spec.new do |s|
  s.name             = 'TestExample'
  s.version          = '0.1.0'
  s.summary          = 'A short description of TestExample.'
  s.description      = 'TestExample to show how to use Unit-Test'

  s.homepage         = 'https://github.com/bob/TestExample'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'bob' => 'bob170731@gmail.com' }
  s.source           = { :git => 'https://github.com/bob/TestExample.git', :tag => s.version.to_s }
  s.ios.deployment_target = '8.0'
  s.pod_target_xcconfig = { 
    'DEFINES_MODULE' => 'YES',
  }

  s.subspec 'Core' do |c|
    c.source_files = 'TestExample/Classes/**/*{h,m}'
    c.public_header_files = 'TestExample/Classes/*.{h}'
    c.frameworks = 'UIKit','Foundation'
  end

  s.test_spec 'Tests' do |h|
    h.source_files = 'TestExample/Tests/**/*.{h,m}'
    h.dependency 'TestExample/Core'
    h.dependency 'XcodeCoverage','>= 1.3.2'
    h.frameworks = 'UIKit','Foundation'
  end
  
end
