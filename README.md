tf init
tf workspace new cr

tf apply

rerun build-push jobs/commit

git checkout apps

tf workspace new apps

tf apply


TODO: tf out app links