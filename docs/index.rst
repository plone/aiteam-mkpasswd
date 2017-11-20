===============
aiteam-mkpasswd
===============

.. admonition:: About

   Containerised Application For Creating Passwords and SHA512 Hashes.

:Version: 0.0.1

Dependencies
============

- [Docker](https://docker.com "Homepage of docker")

Features
========

- Based on Alpine Linux
- `Tini <https://github.com/krallin/tini>`_ as `init`.
- Own ``App user``
- `su-exec <https://github.com/ncopa/su-exec>`_ for running as ``App user``.

Makking A New Release
=====================

.. note::

   You need to have permissions on Docker Hub.

Overview
--------

Development of aiteam-mkpasswd follows `semantic versioning <http://semver.org/>`_.

The ``master`` branch will always point to the most up to date development code.

For each release we have a own branch.

Workflow
--------

1. Clone the repository

.. code-block:: console

   git clone git@githublcom:plone/aiteam-mkpasswd

2. Create a branch, based on the ``master`` branch, for working in.

.. code-block:: console

   cd aiteam-mkpasswd
   git checkout -b $COOL-AND-LOGICAL-NAME

3. Work in this branch, create builds **test** them and update the docs!

4. Create a *Pull Request* against the master branch
  - Explain what you did
  - Why you did it

5. Merge $BRANCH into master

6. Update Changes.md

7. Create a *release branch* of the master

.. code-block:: console

   git checkout -b 0.0.2

8. Update version in the VERSION file

9. Tag the branch with the version nr

.. code-block:: console

   git tag 0.0.2

10. Make a release

.. code-block:: console

   make release

11. Commit to git and push to GitHub

.. code-block:: console

   git add ...
   git commit -m "Release: 0.0.2"
   git push origin 0.0.2
   git push origin --tags

12. Switch to master branch for further development

.. code-block:: console

   git checkout master

