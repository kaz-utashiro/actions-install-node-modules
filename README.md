# actions-install-node-modules

This Github action searches `package-lock.json` file under the
specified root directory, install modules and cache them for later
use.  When executed next time with same package configurations, and
any other environment are not changed, installed modules are extracted
from the cached archive.

## usage

```
# inputs:
#   root:      { required: false, type: string, default: . }
#   cache:     { required: false, type: string, default: yes }
#   cache_gen: { required: false, type: string, default: v1 }

- uses: office-tecoli/actions-use-perl-modules@v0
  with:

    # root directory
    root: .

    # Cache strategey
    #
    # yes:      activate cache
    # workflow: effective within same workflow (mainly for test)
    #
    # anything else means 'no'
    cache: yes

    #
    # Cache generation.
    # You can set any string to this parameter and different generation
    # number produces different cache key.
    #
    # Default: v1
    cache_gen: 'v1'

```
