Pod::Spec.new do |spec|

  spec.name = "CollectiveSwift"
  spec.version = "2.0.1"
  spec.summary = "A small quality-of-life enhancement for collections in Swift/UIKit."
  spec.description = <<-DESC
CollectiveSwift enables a concise syntax for setting properties on collections
of UIKit objects, e.g., outlet collections.
                   DESC
  spec.homepage = "https://github.com/gpape/CollectiveSwift"
  spec.license = "MIT"
  spec.author = "Greg Pape"
  spec.platform = :ios, "12.0"
  spec.swift_versions = ['5.1', '5.2']
  spec.source = { :git => "https://github.com/gpape/CollectiveSwift.git", :tag => "#{spec.version}" }
  spec.source_files  = "Sources/**/*.swift"

end
