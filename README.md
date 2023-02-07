# bors-gen-config
Generate bors.toml for github repositories

```console
usage: bors-gen-config [-h] [-r REPO] [-o OWNER] [-b BRANCH]

options:
  -h, --help            show this help message and exit
  -r REPO, --repo REPO  The repository to fetch for (defaults to the detected repository in the
                        current directory)
  -o OWNER, --owner OWNER
                        The owner to fetch for (defaults to the detected repository in the current
                        directory)
  -b BRANCH, --branch BRANCH
                        The branch to fetch for
```


## Use with nix:

``` console
nix run github:Mic92/bors-gen-config -- 
```
