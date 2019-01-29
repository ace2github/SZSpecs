Pod::Spec.new do |s|
  s.name         = "SZBase"
  s.version      = "0.0.1"
  s.summary      = "A short description of SZBase."

  s.description  = <<-DESC
    iOS基础开发包
                   DESC

  s.homepage     = ""
  s.license      = { :type => "MIT", :file => "FILE_LICENSE" }

  s.author             = { "ChaohuiChen" => "173141667@qq.com" }

  s.ios.deployment_target = '8.0'
  s.source       = { :git => "git@github.com:ace2github/SZBase.git", :tag => "#{s.version}" }

  s.default_subspec='All'

  s.subspec 'SZBase' do |ss|
      ss.source_files = 'SZBase/Sources/**/*'
  end

  s.subspec 'All' do |ss|
      ss.source_files = 'SZBase/Sources/*'
      ss.dependency 'SZBase/SZBase'
  end

 # s.dependency ''
end
