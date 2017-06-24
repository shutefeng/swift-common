
Pod::Spec.new do |s|

  s.name         = "swift-common"
  s.version      = "0.0.1"
  s.summary      = "A short description of swift-common."
  s.description  = <<-DESC
                    Cc
                   DESC

  s.homepage     = "https://github.com/shutefeng/swift-common"
  
  s.license      = "MIT"
  
  s.author             = { "TT" => "196159353@qq.com" }
  
  
  

  s.source       = { :git => "https://github.com/shutefeng/swift-common.git", :tag => "#{s.version}" }

  s.source_files  = "Classes", "Classes/**/*.{h,m,swift}"
  # s.exclude_files = "Classes/Exclude"

  # s.public_header_files = "Classes/**/*.h"


   s.resource  = "icon.png"
  # s.resources = "Resources/*.png"

  # s.preserve_paths = "FilesToSave", "MoreFilesToSave"


  # s.framework  = "SomeFramework"
  # s.frameworks = "SomeFramework", "AnotherFramework"

  # s.library   = "iconv"
  # s.libraries = "iconv", "xml2"

   s.requires_arc = true

  # s.xcconfig = { "HEADER_SEARCH_PATHS" => "$(SDKROOT)/usr/include/libxml2" }
  # s.dependency "JSONKit", "~> 1.4"

end
