#
# Be sure to run `pod lib lint AWNibWrapper.podspec' to ensure this is a
# valid spec and remove all comments before submitting the spec.
#
# Any lines starting with a # are optional, but encouraged
#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "AWNibWrapper"
  s.version          = "0.1.0"
  s.summary          = "AWNibWrapper is a @IBDesignable view which makes nibs render in storyboards."
  s.homepage         = "https://github.com/MrAlek/AWNibWrapper"
  s.license          = 'MIT'
  s.author           = { "Alek Åström" => "alek@iosnomad.com" }
  s.source           = { :git => "https://github.com/MrAlek/AWNibWrapper.git", :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/MisterAlek'

  s.platform     = :ios, '7.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes'
  s.resource_bundles = {
    'AWNibWrapper' => ['Pod/Assets/*.png']
  }

end
