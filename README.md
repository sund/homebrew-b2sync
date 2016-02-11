# homebrew-b2sync
Backblaze's command line rsync-like utility for B2.

See  [Backblaze b2sync](https://www.backblaze.com/b2/docs/b2sync.html) page.

## Installing this Tap in homebrew

```bash
# update brew
brew update
brew upgrade

# install the tap
brew tap sund/b2sync
brew install/b2sync/b2sync
```

## Versioning

The format of versions follows "< backblaze-version >-< tap-version >"

## More Information

See the [b2sync_README.txt](b2sync_README.txt).

Note: you will be asked for your ```sudo``` password to setup b2sync's log directories.

```bash
myself @ Mac in ~
ttys001 7 $ brew install sund/b2sync/b2sync
==> Installing b2sync from sund/b2sync
==> Downloading https://github.com/sund/homebrew-b2sync/archive/v0.5.tar.gz
==> Downloading from https://codeload.github.com/sund/homebrew-b2sync/tar.gz/v0.5
######################################################################## 100.0%
==> sudo mkdir -p /Library/Logs/b2sync/logs
Password:
==> sudo touch /Library/Logs/b2sync/b2sync
🍺  /usr/local/Cellar/b2sync/0.5: 3 files, 1.9M, built in 13 seconds
```
