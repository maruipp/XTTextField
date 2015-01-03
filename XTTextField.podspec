Pod::Spec.new do |spec|
  spec.name             = 'XTTextField'
  spec.version          = '0.0.2'
  spec.license          = 'MIT'
  spec.summary  = 'Auto detect keyboard frame AND move to upside of keyboard'
  spec.homepage = 'https://github.com/maruipp/XTTextField'
  spec.authors          = {'hoya' => 'maruipp@gmail.com'}
  spec.summary          = 'ARC'
  spec.source           =  {:git => 'https://github.com/maruipp/XTTextField.git', :tag => '0.0.2'} 
  spec.source_files     = '*.{h,m}'
  spec.requires_arc     = true

  spec.ios.deployment_target = "6.0"
  spec.framework = 'UIKit'
end
