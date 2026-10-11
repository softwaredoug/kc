# kc

A helper for working with OSX keychain for your dev secrets

A better way than keeping your secrets at rest

## Store a secret

Stored on your users keychain

```
kc OPENAI_API_KEY=`sk-...`
```

## Retrieve a secret

```
export OPENAI_API_KEY=$(kc OPENAI_API_KEY)
```

## Yes thats all it is

It's just saves me remembering this longer command

```
  security add-generic-password \
    -a "$USER" \
    -s "$name" \
    -w "$value" \
    -U
```
