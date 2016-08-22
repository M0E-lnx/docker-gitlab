# 32-bit version #

This repository tracks sameersbn/docker-gitlab.  The only modifications
made from the original is what is necessary to make this run on 32bit
hardware.  This involves using a 32bit docker image as a base and
changing the golang binary used to compile gitlab.

# Updates #

An effort is made to provide updates to this repository are provided as soon as they make their way
into sameersbn.

# Update Workflow #

The updates are first pushed to http://vlcore.vectorlinux.com/git/m0e.lnx/docker-gitlab
when tested there, they are pushed here.

## File names ##

``Dockerfile`` is the original 64bit file from upstream.  This file is
uploaded verbatim to vlcore.  Modifications are tracked there on the
``Dockerfile.32bit`` file, which is modified to mirror changes made to the
original file.  When this repo is pushed to github, ``Dockerfile.32bit`` is
renamed to ``Dockerfile`` and the original file is renamed to ``Dockerfile.64bit``.

A similar procedure is performed on the ``assets`` directory to track changes
necessary to make things work on 32bit.
