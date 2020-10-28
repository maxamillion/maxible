maxible
#######

Adam Miller (maxamillion) ansible playbooks for various silly things.

In this repo you will find my laptop/workstation configs for both `Fedora 
Workstation`_ and `Red Hat Enterprise Linux`_ along with other random items
I configure on my workstation, laptop, or homelab machines and such.

Usage - General
---------------

Install ``ansible`` and ``git``

::

    dnf -y install ansible git

Clone this repo and install dependencies for the Playbooks

::

    git clone https://github.com/maxamillion/maxible.git
    cd maxible/
    ansible-galaxy install -r requirements.yml


Fedora 32 Workstation 
---------------------

Run the following playbook:

::

    ansible-playbook fedora32-workstation.yml

Fedora 32 KDE Plasma Spin
-------------------------

Run the following playbook:

::

    ansible-playbook fedora32-kde-plasma.yml

Red Hat Enterprise Linux 8 Workstation
--------------------------------------

Run the following playbook:

::

    ansible-playbook rhel8-workstation.yml


Fedora Rawhide ARM - Desktop XFCE
---------------------------------

Run the following playbook:

::

    ansible-playbook fedora-rawhide-arm-xfce.yml -i inventory.txt



Notes
-----
There are no dotfiles or configs included in this ansible-playbook.
Data retention is handled outside the scope of this playbook

Some of my dotfiles related to vim, tmux, and some others are available `here
<https://github.com/maxamillion/dotfiles>`_.

References
----------
`Ansible`_
`Ansible Docs`_

.. _Ansible: http://www.ansible.com/
.. _Ansible Docs: http://docs.ansible.com/ansible/index.html
.. _Fedora: https://getfedora.org/
.. _Red Hat Enterprise Linux: https://www.redhat.com/en/technologies/linux-platforms/enterprise-linux
