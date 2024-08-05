# workstation

Windows and macOS Workstation configuration automation based on Ansible

All of the work here is based on the following roles and playbooks written by [Jeff Geerling](https://www.jeffgeerling.com/), author of [Ansible for DevOps](https://www.ansiblefordevops.com/):

- [geerlingguy/ansible-collection-mac: Collection of macOS automation tools for Ansible.](https://github.com/geerlingguy/ansible-collection-mac)
- [geerlingguy/mac-dev-playbook: Mac setup and configuration via Ansible.](https://github.com/geerlingguy/mac-dev-playbook)
- [geerlingguy/ansible-role-dotfiles: Ansible Role - Easy and flexible dotfile installation.](https://github.com/geerlingguy/ansible-role-dotfiles)
- [geerlingguy/dotfiles: My configuration. Minimalist, but helps save a few thousand keystrokes a day.](https://github.com/geerlingguy/dotfiles)

## Page Contents

- [Windows](#Windows)
- [macOS](#macOS)
- [Additional Information](#Additional-Information)

## Windows

Windows configuration will be added in the future.

## macOS

macOS configuration is documented in the [macOS README](macos/README.md).

## Additional Information

This section is contains optional documentation, resources, and questions and answers applicable to the any operating system.  Likewise, each operating system covered here also has its own "Additional Information" section with OS-specific information that should be helpful as well.

### Ansible Commands

```bash
# Generate a fully commented-out example ansible.cfg file
ansible-config init --disabled > ansible.cfg
```

<!-- EOF -->
