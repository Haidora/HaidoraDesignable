Pod::Spec.new do |s|
  s.name             = "HaidoraDesignable"
  s.version          = "0.1.0"
  s.summary          = "A short description of HaidoraDesignable."
  s.description      = <<-DESC
                       DESC

  s.homepage         = "https://github.com/Haidora/HaidoraDesignable"
  s.license          = 'MIT'
  s.author           = { "mrdaios" => "mrdaios@gmail.com" }
  s.source           = { :git => "https://github.com/Haidora/HaidoraDesignable.git", :tag => s.version.to_s }

  s.platform     = :ios, '8.0'
  s.requires_arc = true

  s.dependency 'NUI'
  s.subspec 'Core' do |hdCore|
      hdCore.source_files = 'Pod/Classes/Core/**/*'
  end
  s.subspec 'PlaceHolder' do |hdPlaceHolder|
      hdPlaceHolder.source_files = 'Pod/Classes/PlaceHolder/**/*'
      hdPlaceHolder.dependency 'HaidoraDesignable/Core'
  end
end
