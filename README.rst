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


Fedora - Desktop/Workstation/Laptop GNOME
-----------------------------------------

Run the following playbook:

::

    ansible-playbook gnome.yml -i inventory.txt

Fedora - Desktop/Workstation/Laptop i3
-------------------------------------

Run the following playbook:

::

    ansible-playbook i3.yml -i inventory.txt

Fedora - https://maxamillion.sh
------------------------------

Run the following playbook:

::

    ansible-playbook site.yml -i inventory.txt

RHEL8 - Desktop/Workstation/Laptop GNOME
----------------------------------------

Run the following playbook:

::

    ansible-playbook rhel8-workstation.yml -i inventory.txt


Fedora Rawhide ARM - Desktop XFCE
---------------------------------

Run the following playbook:

::

    ansible-playbook fedora-rawhide-arm-xfce.yml -i inventory.txt



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
.. _Ansible Docs: http://docs.ansible.com/ansible/index.html
.. _Fedora netinstall: https://download.fedoraproject.org/pub/fedora/linux/releases/24/Everything/x86_64/iso/
