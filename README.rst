maxible
#######

Adam Miller (maxamillion) ansible playbooks for various silly things.

In this repo you will find my laptop/workstation configs for both `GNOME`_ and
`i3`_ setups as well as `maxamillion.sh`_.

Usage - General
---------------

Install ``ansible`` and ``git``

::

    dnf -y install ansible git

Clone this repo and run the ansible-playbook (run the ``bootstrap-fedora`` if
running Fedora 23 or later).

::

    git clone https://github.com/maxamillion/ansible-maxamillion-workstation.git
    cd ansible-maxamillion-workstation

    # Run this if you have Fedora 23+ (Hope you do, but nobody is perfect)
    ansible-playbook bootstrap-fedora.yml -i inventory.txt

Usage - GNOME
-------------

Run the following playbook:

::

    ansible-playbook gnome.yml -i inventory.txt

Usage - i3
----------

Run the following playbook:

::

    ansible-playbook i3.yml -i inventory.txt

Usage - maxamillion.sh
----------------------

Run the following playbook:

::

    ansible-playbook site.yml -i inventory.txt

Notes
-----
There are no dotfiles or configs included in this ansible-playbook.
Data retention is handled outside the scope of this playbook

Some of my dotfiles related to i3, i3status, dunst, and tmux are available `here
<https://github.com/maxamillion/dotfiles>`_.

References
----------
`Ansible`_
`Ansible Docs`_

.. _i3: https://i3wm.org/
.. _GNOME: https://www.gnome.org/
.. _Ansible: http://www.ansible.com/
.. _Ansible Doc: http://docs.ansible.com/ansible/index.html
.. _Fedora netinstall: https://download.fedoraproject.org/pub/fedora/linux/releases/24/Everything/x86_64/iso/
