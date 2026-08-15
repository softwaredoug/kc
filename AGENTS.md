## Keychain helper

The kc script here helps store and load env vars into OSX's keychain instead
of bad keys in env var

## Storage

```
kc OPENAI_API_KEY=`...`
```

## Retrieval

```
kc OPENAI_API_KEY
```

as in

```
export OPENAI_API_KEY=$(kc OPENAI_API_KEY)
```

### Keychain usage

- Default assume $USER is the active user for this shell

Wrap keychain to store:

```
security add-generic-password \
  -a "$USER" \
  -s "OPENAI_API_KEY" \
  -w 'sk-...'
```

### Loading keychain values as env vars

```
security find-generic-password \
       -a "$USER" \
       -s "$arg" \
       -w
```

## Install

Ensure we have `security` command available, which is part of macOS.
Create a script that installs `kc` for the user (ie in `/.local/bin`)
