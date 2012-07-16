# Symantec

Installs Symantec Endpoint Protection from internal package repository.

## Description

Has been tested on Windows Server 2008.  Should work on other Windows family platforms.

## Requirements

You must set up an internal package repository to distribute Symantec by HTTP.

The recipe looks for the Setup file at http://yum.($domain)/symantec/symantec-($kernel.machine)-setup.exe, by default.

## Attributes

* `symantec['appid']` - Used to build the uninstall command
* `symantec['install_source']` - Internal http repository with Symantec binary
* `symantec['install_options']` - Defaults to silent mode, with LiveUpdate, and no reboot

## Usage

### Install Symantec

Add symantec::default to your `run_list`.  The recipe will remove itself
from the `run_list` after the first successful run.  Symantec has done
a nice job creating a non-standard MSI package which is not particularly
easy to automate by resource.  This was the only way which I could guard the
recipe with idempotent installation behavior.

### Uninstall Symantec

Add symantec::undo to your `run_list`.  The recipe will remove itself
from the `run_list` after Symantec has been uninstalled.  The recipe
also requests a reboot, upon successful execution.  See the `windows_reboot`
documentation accompanying the Opscode [windows](http://github.com/opscode-cookbooks/windows)
cookbook, to disable the `windows_reboot` handler.

## License and Author

Author: Eric G. Wolfe (<wolfe21@marshall.edu>)

Copyright 2011-2012, Eric G. Wolfe

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
