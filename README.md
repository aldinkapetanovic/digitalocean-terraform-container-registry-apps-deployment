```
tf init

tf workspace new cr

tf workspace select cr

tf apply
```

Rerun test, build-push jobs or commit on branches main and stage (we need images to be available before we deploy apps )

```
git checkout apps

tf init

tf workspace new apps

tf workspace select apps

tf apply

tf output
```