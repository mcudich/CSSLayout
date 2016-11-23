Pod::Spec.new do |s|
  s.name             = "CSSLayout"
  s.version          = "1.0.1"
  s.summary          = "Swift wrapper around Facebook's css-layout."
  s.description      = "CSSLayout is a tiny Swift wrapper around Facebook's css-layout framework."

  s.homepage         = "https://github.com/mcudich/CSSLayout"
  s.license          = "MIT"
  s.author           = { "Matias Cudich" => "mcudich@gmail.com" }
  s.source           = { :git => "https://github.com/mcudich/CSSLayout.git", :tag => s.version.to_s, :submodules => true }
  s.social_media_url = "https://twitter.com/mcudich"

  s.ios.deployment_target = "9.3"

  s.source_files = "Sources/**/*", "Carthage/Checkouts/css-layout/CSSLayout/*"
end
