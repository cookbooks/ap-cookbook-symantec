#
# Cookbook Name:: symantec
# Recipe:: default
#
# Copyright 2012, Eric G. Wolfe
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Install Symantec from internal HTTP repository
windows_package "Symantec Endpoint Protection" do
  source node['symantec']['install_source'] 
  options node['symantec']['install_options']
  installer_type :custom
  action :install
end

ruby_block "remove symantec::default from run list" do
  block do
    node.run_list.remove("recipe[symantec::default]")
  end
end  
