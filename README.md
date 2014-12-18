## Knife Killer

Simple knife helper to fully kill nodes (including their corresponding
client data) from the chef server. It provides two commands for this:

```bash
$ knife killer execute NODE_NAME1 NODE_NAME2
```

This is used for removing instances explicitly. However, you may just want
to remove them with a search:

```bash
$ knife killer slaughter "roles:fubar"
```

Or perhaps you just want to kill things that haven't checked in for more
than 60 minutes:

```bash
$ knife killer slaughter -M 60
```

Which you can combine with the searching:

```bash
$ knife killer slaughter -M 60 "roles:fubar"
```

Pretty simple plugin just to make common process faster.

## Info
Repository: https://github.com/chrisroberts/knife-killer