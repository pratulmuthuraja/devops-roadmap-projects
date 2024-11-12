# DevOps Roadmap Projects

Projects are part of [DevOps Roadmap](https://roadmap.sh/devops), Compiled Projects by [roadmap.sh](https://roadmap.sh/)

## Server Performance Stats

Write a script to analyse basic server performance stats.
[Project Link](https://roadmap.sh/projects/server-stats)

### Project Goal

Goal of this project is to write a script to analyse server performance stats.

You are required to write a script server-stats.sh that can analyse basic server performance stats. You should be able to run the script on any Linux server and it should give you the following stats:

- Total CPU usage
- Total memory usage (Free vs Used including percentage)
- Total disk usage (Free vs Used including percentage)
- Top 5 processes by CPU usage
- Top 5 processes by memory usage

Stretch goal: Feel free to optionally add more stats such as os version, uptime, load average, logged in users, failed login attempts etc.

Requirements: Any Linux Environment (Ubuntu, PopOS!, WSL, etc.)

### Setup

1. Navigate to the folder you want to clone the repository into.

```bash
git clone https://github.com/pratulmuthuraja/devops-roadmap-projects.git
cd devops-roadmap-projects/server-performance-stats.sh
```

2. Make file executable

```bash
sudo chmod +x server-stats.sh
```

### Usage

1. Run script

```bash
./server-stats.sh
```
## Log Archive Tool

Build a tool to archive logs from the CLI with the date and time. [Project Link](https://roadmap.sh/projects/log-archive-tool)
### Project Goal

In this project, you will build a tool to archive logs on a set schedule by compressing them and storing them in a new directory, this is especially useful for removing old logs and keeping the system clean while maintaining the logs in a compressed format for future reference. This project will help you practice your programming skills, including working with files and directories, and building a simple cli tool.

The most common location for logs on a unix based system is /var/log.

The tool should run from the command line, accept the log directory as an argument, compress the logs, and store them in a new directory. The user should be able to:

Provide the log directory as an argument when running the tool.

log-archive *log-directory*

The tool should compress the logs in a tar.gz file and store them in a new directory.
The tool should log the date and time of the archive to a file.

logs_archive_20240816_100648.tar.gz

### Setup

1. Navigate to the folder you want to clone the repository into.

```bash
git clone https://github.com/pratulmuthuraja/devops-roadmap-projects.git
cd devops-roadmap-projects/log-archive-tool/
```

2. Make file executable

```bash
sudo chmod +x log-archive.sh
```

### Usage

1. Run script

```bash
./log-archive.sh <path_to_folder>
```
## Nginx Log Analyser

Write a simple tool to analyze logs from the command line.

### Project Goal

The log file contains the following fields:

IP address
Date and time
Request method and path
Response status code
Response size
Referrer
User agent

You are required to create a shell script that reads the log file and provides the following information:

Top 5 IP addresses with the most requests
Top 5 most requested paths
Top 5 response status codes
Top 5 user agents

### Setup

1. Navigate to the folder you want to clone the repository into.

```bash
git clone https://github.com/pratulmuthuraja/devops-roadmap-projects.git
cd devops-roadmap-projects/nginx-log-analyser/
```

2. Make file executable

```bash
sudo chmod +x log-analyser.sh
```

### Usage

1. Run script

```bash
./log-archive.sh <path_to_log_file>

