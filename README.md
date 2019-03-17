# Introduction
IncBackup is a bash based project to create a TimeMachine project for linux.

TimeMachine it's a concept where the system create incrementally a backup system, making possible to restore any previous file version without any hassle. The backup system is associated to a media.

There is several backups systems, but none could:
* Only start when specific media was connected
* Easily scheduded
* Backup All system (Not only home)
* Start with the system (Systemd script and logs)
* Retrieve status

## TODO
The application it's in a very early stage of development, missing features :
* Delete backups when customized time elapsed
* Mount the disk when present

This application it's made to keep simple, with only a single job.


# Usage

You can start the application with:

systemctl enable/start incBackup

The logs can be checked at journactl.

if you run the script twice, it will return the operation status and exit. This behaviour can be used to retrieve application status for example to i3 (or connect directly to the pipe).

# Installing
## Dependencies
* Install croniter

sudo pip -G install croniter

## Application
Installing application, can be done using Makefile in the root of project

sudo make install
