# POC-REFRESH

## Goal

This is a very particular project where the goal is to update a project on a particular OS. The update need to happen as the start of the system and on command. The hard part is the code push can come from different project at any time. So the hard part is not to use a simple git pull witha cron but to download the project and to run it through pm2.

![Last version](https://img.shields.io/github/v/tag/justalk/poc-nfc.svg?style=flat-square)
![Last version npm](https://img.shields.io/npm/v/@justalk/covid19ph-api.svg?style=flat-square)
[![Node version](https://img.shields.io/node/v/@justalk/covid19ph-api.svg?style=flat-square)](https://www.npmjs.com/package/@justalk/covid19ph-api)

## Plan of the presentation

I explain with all the details how I build the project and my way of working.

- [Goal](#goal)
- [Plan of the presentation](#plan-of-the-presentation)
- [Commands](#Commands)
- [Running](#Running)
- [System](#System)

## Organization

#### Organization of the project

    .
    ├── node_modules            # Npm modules
    ├── documentation           # Documentation files & Images for documentation
    ├── .gitignore              # Ignored files for the repository
    ├── cron.sh                 # Script run by the service
    ├── crontab                 # Cron to add to the crontab
    ├── install.sh              # Library to install on the OS
    ├── package.json            # Npm configuration file
    ├── package-lock.json       # Npm locker version for module
    ├── pm2.sh                  # Code restarting the pm2 project
    ├── refresh.js              # Code managing the refresh of the project
    ├── refreshservice          # Configuration for a systemctl service
    ├── LICENSE                 # Description of the license
    └── README.md               # Presentation for the project

## Commands

- **start**: Run the code
- **sub-start**: Start the project downloaded
- **sub-install**: Install the project downloaded

## Running

For running the code, use the following command:

```bash
$ npm run start
```

## System

Ubuntu Version: Ubuntu 20.04.1
Node Version: v20.9.0
Npm Version: v10.1.0

The version are manage with [Volta](https://docs.volta.sh/guide/getting-started).

```bash
# Get the latest version of ubuntu
$ lsb_release -a

# Get the version of node
$ node -v

# Get the version of npm
$ npm -v
```
