Pod::Spec.new do |s|
  s.name             = 'AutoMockable'
  s.version          = '0.1'
  s.summary          = 'AutoMockable is a Swift framework that leverages the type system in order to let you easily create mocked instances of your data types.'

  s.description      = <<-DESC
AutoMockable is a Swift framework that leverages the type system in order to let you easily create mocked instances of your data types.

Here's an example of how it can be used:

struct MyData {
    let bool: Bool
    let string: String
    let integers: [Int]
}

let mocked = mock(MyData.init) // a mocked instance has been created 🎉
                       DESC

  s.homepage         = 'https://github.com/vincent-pradeilles/AutoMockable'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Vincent Pradeilles' => 'vin.pradeilles+AutoMockable@gmail.com' }
  s.source           = { :git => 'https://github.com/vincent-pradeilles/AutoMockable.git', :tag => s.version.to_s }

  s.swift_version = '5.1'
  s.ios.deployment_target = '9.0'

  s.framework = 'Foundation'

  s.source_files = 'AutoMockable/**/*.swift'

end
