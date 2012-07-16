## v0.0.1

* Initial Symantec cookbook

The custom nature of the installer prevents the resource from operating
idempotently.  Therefore this runs as a once run recipe, removing itself
from the `run_list` after the initial run.
