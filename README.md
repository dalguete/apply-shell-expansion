# apply-shell-expansion

Helper utility used to expand shell variables defined in a file.

## Description

With this script, you can expand the file with env variables defined before using its contents. Originally conceived to help in the Docker container images creation, when consumer scripts expected a plain string text (for the record, `debconf-set-selections`) but you wanted to preprocess the file before using it.

Kudos to 'wjl' (http://stackoverflow.com/a/20316582)

## Folder Structure

It's really simple, aimed to enable program distribution under different formats. 

- ***src***: contains all the real code on the solution.
- ***snap***: configurations to create a snap package on the project.
- ***Makefile***: configurations to install the package but using the ubiquitous make tool.

# Makefile

Clone the project and, inside of it, run:

```
sudo make install
```

Done! For upgrades, simply clone the project again and run the previous command again.
To remove simply run `sudo make uninstall`

# Snap Package

Check **snap** folder with all configuration information ready to build a snap package. More info about snaps here https://docs.snapcraft.io/snaps/intro.

Commands to trigger package creation can be run from this project's root level.

## TODO:
- Check how to create a cleaner snap package. So far, when run `snapcraft cleanbuild` command, everything goes great, but there's a .bz2 file inside the created snap that has everything this repo has, even **.git** folder, and that's how that's published. No Bueno!

# Ubuntu PPA (legacy)

***THIS HAS BEEN DEPRECATED, NO LONGER CREATING .deb PACKAGES.***
***<br/>Left this here for future reference.***

> You can find the package as a PPA here https://launchpad.net/~dalguete/+archive/ubuntu/apply-shell-expansion
> 
> ## Sidenote: *About My Experience Creating .deb Packages Plus Ubuntu's PPA*
> 
> http://dalguete.github.io/#about-my-experiences-creating-deb-packages-plus-ubuntus-ppa
