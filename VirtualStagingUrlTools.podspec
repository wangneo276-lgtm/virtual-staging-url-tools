Pod::Spec.new do |spec|
  spec.name = 'VirtualStagingUrlTools'
  spec.version = '0.1.1'
  spec.summary = 'Offline URL helpers for Virtual Staging'
  spec.description = 'Offline URL builder for Virtual Staging tool pages and rental-listing guides. Not an official SDK.'
  spec.homepage = 'https://virtual-staging.app/'
  spec.license = { :type => 'MIT', :file => 'LICENSE' }
  spec.author = { 'bbwdadfg' => 'https://virtual-staging.app/' }
  spec.source = { :git => 'https://github.com/wangneo276-lgtm/virtual-staging-url-tools.git', :tag => 'v0.1.1' }
  spec.source_files = 'swift/Sources/**/*.swift'
  spec.ios.deployment_target = '13.0'
  spec.osx.deployment_target = '10.15'
  spec.swift_version = '5.7'
end
