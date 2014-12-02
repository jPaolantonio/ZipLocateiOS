Pod::Spec.new do |s|

  s.name         = "JPZipLocation"
  s.version      = "0.0.2"
  s.summary      = "An iOS Client for ZipLocate"

  s.description  = <<-DESC
                   An iOS Client for JPZipLocation (https://github.com/nathancahill/ziplocate)
                   DESC

  s.homepage     = "https://github.com/jPaolantonio/ZipLocateiOS"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author    = "James Paolantonio"
  s.social_media_url   = "http://twitter.com/jPaolantonio"
  s.platform     = :ios, "8.0"
  s.source       = { :git => "https://github.com/jPaolantonio/ZipLocateiOS.git", :tag => "0.0.1" }
  s.source_files  = "ZipLocate", "ZipLocate/**/*.{h,m}"
  s.requires_arc = true

end
