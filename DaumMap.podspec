require 'json'
pjson = JSON.parse(File.read('package.json'))

Pod::Spec.new do |s|

  s.name            = "DaumMap"
  s.version         = pjson["version"]
  s.homepage        = "https://github.com/luckfellow/react-native-daummap"
  s.summary         = pjson["description"]
  s.license         = pjson["license"]
  s.author          = { "JeongHun Kang" => "asata@teamsf.co.kr" }
  
  s.ios.deployment_target = '8.0'

  s.source          = { :git => "https://github.com/luckfellow/react-native-daummap", :tag => "v#{s.version}" }
  s.source_files = "ios/**/*.{h,m}"

  s.dependency 'React'
end