# POC-REFRESH

## Goal

This project is a bit unique, the goal is to update an application on a specific operating system. The update is required both at the initiation of the system and upon command. The complexity arises from the fact that code push can be initiated from various projects at any given time. The problem is, I could not employ a straightforward 'git pull' with a cron job, but I had to orchestrate the download of the project and executing it through pm2. The reason is the code and commit can be done by someone else directly on the machine with no information for me to know about it.

In this project, I use *Node.js* in order to run my project as module. Employing pm2, I ensure seamless background execution, while services are utilized to establish a task within the systemctl framework.

![Last version](https://img.shields.io/github/v/tag/justalk/poc-nfc.svg?style=flat-square)

## Plan of the presentation

I explain with all the details how I build the project and my way of working.

- [Goal](#goal)
- [Plan of the presentation](#plan-of-the-presentation)
- [Flowchart](#flowchart)
- [Dependencies](#dependencies)
- [Commands](#commands)
- [Running](#running)
- [System](#system)

## Flowchart

The current process for updating the project to the latest version is as follows: I employ the cron from the crontab to initiate the service. Once the service is activated, I execute the refresh.js script. This script verifies the SHA of the project (with plans for future implementation to check tags on specific projects). If the SHA values differ, the script downloads the project's zip file, unpacks it, and performs the installation. Subsequently, I reload the pm2 project to implement the modifications. The entire process has been succinctly outlined in the flowchart below.

![Alt text](documentation/images/poc-nfc.png?raw=true "1")

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

## Dependencies

- **decompress**: The package decompress is use to unzip the zip of the project

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
