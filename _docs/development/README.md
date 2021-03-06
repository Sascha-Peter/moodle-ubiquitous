# Developing Ubiquitous

A rudimentary understanding of Salt concepts is essential: Ubiquitous is just an ordinary Salt state tree. The [Get Started tutorials](https://docs.saltstack.com/en/getstarted/) and ["Salt in ten minutes" walkthrough](https://docs.saltstack.com/en/latest/topics/tutorials/walkthrough.html) are great starting points.

### Building the documentation

The documentation is managed with the excellent [GitBook toolchain](https://toolchain.gitbook.com/) and hosted by [GitBook](https://www.gitbook.com/). To work with it locally:

```
# Install the dependencies
$ npm install

# Launch the server --- use this when making changes
$ npm run gitbook -- serve

# Or perform a one-time build to _book/
$ npm run gitbook -- build
```

## Testing with Vagrant

Prepare a VM and snapshot it:

```
$ vagrant up app-debug-1
$ vagrant snapshot save app-debug-1 pre-state
```

Then relaunch it from the snapshot, over and over:

```
$ vagrant snapshot restore app-debug-1 pre-state
$ vagrant ssh --command 'sudo salt-call -l debug state.apply' app-debug-1
```
