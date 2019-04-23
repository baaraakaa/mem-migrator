# mem-migrator

## Usage

- Use the YAML build config file to add a build to Openshift.
- Build
- Deploy build into the project containing target MongoDB deployment
- Add the Mongo admin password as the `MONGODB_ADMIN_PASSWORD` env variable during deployment
- The script will run automatically, it ends in a while loop as a hack to keep the pod alive so logs are not available through log tab in Openshift, but you can find them in /script/log.txt on the pod
- Make sure to shut the deployment down as soon as you get the logs out, the busy wait ties up resources.
