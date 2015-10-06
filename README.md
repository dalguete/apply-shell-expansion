# apply-shell-expansion
Helper utility used to expand shell variables defined in a file.

This way you can expand the file with env variables defined before using its contents.
Originally conceived to help in the Docker container images creation, when consumer
scripts expected a plain string text (for the record, `debconf-set-selections`)
but you wanted to preprocess the file before using it.

Kudos to 'wjl' (http://stackoverflow.com/a/20316582)

Ubuntu PPA
==========

You can find the package as a PPA here https://launchpad.net/~dalguete/+archive/ubuntu/apply-shell-expansion

Sidenote: About My Experience Creating Deb Packages Plus Ubuntu's PPA
---------------------------------------------------------------------

http://dalguete.github.io/#about-my-experiences-creating-deb-packages-plus-ubuntus-ppa
