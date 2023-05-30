maxible
#######

Adam Miller (maxamillion) ansible playbooks for various silly things.

In this repo you will find my laptop/workstation configs for `Fedora Silverblue`_,
`Fedora Workstation`_, `Fedora KDE Plasma`_, `Fedora XFCE Spin`_, and 
`Red Hat Enterprise Linux`_ along with other random items
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

Fedora Workstation 38
---------------------

Run the following playbook:

::

    ansible-playbook fedora38-workstation.yml

CentOS Stream 9
---------------

Run the following playbook:

::

    ansible-playbook stream9-workstation.yml
    
Fedora Silverblue 37
--------------------

First need to install a few packages in the ``rpm-ostree`` overlay:

::

    sudo rpm-ostree install tmux vim-enhanced xsel virt-manager libvirt-client gnome-tweaks
    python3 -mvenv venv_ansible
    . venv_ansible/bin/activate
    pip install ansible

Run the following playbook and enter your sudo command when prompted (if you don't, then GNOME will pop up asking for your password multiple times):

::

    ansible-playbook silverblue37.yml -K


Notes
-----
There are no dotfiles or configs included in this ansible-playbook.
Data retention is handled outside the scope of this playbook

Some of my dotfiles related to vim, tmux, and some others are available `here
<https://github.com/maxamillion/dotfiles>`_.

Initial VPN Setup on Silverblue
-------------------------------
This is admittedly a little hacky, but it gets all the configs and the cert
from the official repos without needing to script keeping up. I typically
download these from another machine and keep them in my home office on a LUKS
encrypted usb thumb drive as a backup in case I get locked out.

::

    cd /
    rpm2cpio redhat-internal-NetworkManager-openvpn-profiles-0.1-49.el7.csb.noarch.rpm | sudo cpio --extract
    rpm2cpio redhat-internal-cert-install-0.1-23.el7.csb.noarch.rpm | sudo cpio --extract


References
----------
`Ansible`_
`Ansible Docs`_

.. _Ansible: http://www.ansible.com/
.. _Ansible Docs: http://docs.ansible.com/ansible/index.html
.. _Fedora: https://getfedora.org/
.. _Fedora Workstation: https://getfedora.org/en/workstation/
.. _Fedora Silverblue: https://silverblue.fedoraproject.org/
.. _Fedora KDE Plasma: https://spins.fedoraproject.org/en/kde/
.. _Fedora XFCE Spin: https://spins.fedoraproject.org/en/xfce/
.. _Red Hat Enterprise Linux: https://www.redhat.com/en/technologies/linux-platforms/enterprise-linux
