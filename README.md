# actions-install-node-modules

![actions-install-node-modules](https://github.com/office-tecoli/actions-install-node-modules/actions/workflows/test.yml/badge.svg)

This GitHub action searches lock files under the specified root
directory, install modules and cache all `node_modules` directory for
later use.  When executed next time with same package configurations,
and any other environment are not changed, installed modules are
extracted from the cached archive.

At this time, installation is done by next commands.

```yaml
package-lock.json:
    npm install
yarn.lock:
    yarn --check-files --frozen-lockfile --non-interactive
```

Output is same as [`@actions/cache`](https://github.com/actions/cache).

## Usage

```yaml
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

## Example

```yaml
- uses: office-tecoli/actions-install-node-modules@v0
  with:
    root: ./Script/lib/node
```
