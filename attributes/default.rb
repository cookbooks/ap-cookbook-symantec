#
# Cookbook Name:: symantec
# Attributes:: default
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
default['symantec']['appid'] = '{4ADBF5BE-7CAF-4193-A1F9-DE6820E68569}'
default['symantec']['install_source'] = "http://yum.#{node['domain']}/symantec/symantec-#{node['kernel']['machine']}-setup.exe"
default['symantec']['install_options'] = '/s /v"/qn RUNLIVEUPDATE=1 REBOOT=ReallySuppress"'
