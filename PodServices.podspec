Pod::Spec.new do |spec|

  spec.name         = "PodServices"
  spec.version      = "2.2.2.1"
  spec.summary      = "Pods de servicios"

  spec.description  = <<-DESC
Delivery: Se agrega nuevo header a token con lógica
                   DESC

  spec.homepage     = "https://github.com/lissetarely/ServiceMovie"
  spec.license      = { :type => "MIT", :file => "LICENSE" }


  spec.author             = { "Liset Martinez" => "lissb88@gmail.com" }
  spec.social_media_url   = "https://github.com/lissetarely"


  spec.platform     = :ios
  spec.ios.deployment_target = "13.0"

  spec.source       = { :git => "https://github.com/lissetarely/ServiceMovie.git", :tag => "#{spec.version}" }


  spec.source_files  = "PodServices", "PodServices/*/.{h,m,swift}"

  spec.exclude_files = "Classes/Exclude"
  #spec.resource_bundle = { "SBServiceResources" => ["SBService/Main/Assets/Localization/.lproj/.strings"] }

  spec.requires_arc = true
  spec.swift_versions = "5.2"

end
