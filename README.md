# Required Module for Security-Enhanced Linux on Gentoo Linux (hardened-systemd)
This module is a very disorganized set of essential allowances to do very basic and necessary things like login, let systemd run properly, and not kill the init.

This module is specifically tailored to my system and may work on yours, but don't expect it to work perfectly on your system without some edits.

To build this module,
```bash
checkmodule -m -o requiredmod.mod requiredmod.te
semodule_package -o requiredmod.pp -m requiredmod.mod
semodule -i requiredmod.pp```

Please keep in mind that you should always audit and ensure that the modules you're installing on your system are doing what they say they are.
