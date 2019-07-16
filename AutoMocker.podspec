Pod::Spec.new do |s|
  s.name             = 'AutoMocker'
  s.version          = '0.1.1'
  s.summary          = 'AutoMocker is a Swift framework that leverages the type system to let you easily create mocked instances of your data types.'

  s.description      = <<-DESC
AutoMocker is a Swift framework that leverages the type system to let you easily create mocked instances of your data types.

Here's an example of how it can be used:

struct MyData {
    let bool: Bool
    let string: String
    let integers: [Int]
}

let mocked = mock(MyData.init) // a mocked instance has been created 🎉
                       DESC

  s.homepage         = 'https://github.com/vincent-pradeilles/AutoMocker'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Vincent Pradeilles' => 'vin.pradeilles+AutoMocker@gmail.com' }
  s.source           = { :git => 'https://github.com/vincent-pradeilles/AutoMocker.git', :tag => s.version.to_s }

  s.swift_version = '5.1'
  s.ios.deployment_target = '9.0'

  s.framework = 'Foundation'

  s.source_files = 'AutoMocker/**/*.swift'

end
