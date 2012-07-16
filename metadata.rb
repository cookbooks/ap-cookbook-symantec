maintainer       "Eric G. Wolfe"
maintainer_email "wolfe21@marshall.edu"
license          "Apache 2.0"
description      "Installs/Configures symantec"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          "0.0.1"

%w{ windows }.each do |cb|
  depends cb
end

%w{ windows }.each do |os|
  supports os
end
