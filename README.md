# actions-install-node-modules

This GitHub action searches `package-lock.json` file under the
specified root directory, install modules by `npm` command and cache
all `node_modules` directory for later use.  When executed next time
with same package configurations, and any other environment are not
changed, installed modules are extracted from the cached archive.

This action assumes all package has `package-lock.json` file.
Supporting different type package manager is a future issue.

Output is same as [`@actions/cache`](https://github.com/actions/cache).

## Usage

```
# inputs:
#   root:      { required: false, type: string, default: . }
#   cache:     { required: false, type: string, default: yes }
#   cache-gen: { required: false, type: string, default: v1 }

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
    cache-gen: v1

```
