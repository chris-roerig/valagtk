# valagtk

This script generates boilerplate for a Vala based GTK+ application. 

## Features:

* Generated application include:
  * ApplicationWindow with HeaderBar
  * HeaderBar that displays a Dialog modal
* Out-of-the-box support for saving window position and size via GLib Settings
* Meson build system

## Usage:

There are 2 ways to use the generator:

1.Inline option commands

```
# valagtk <app name> <app id> <output destination>

$ valagtk MyApp com.github.chrisroerig.myapp ./Projects

```

1. Prompted 

```
$ ./valagtk

Creating new Gtk Vala Project
Project Name (ex MyApp): MyApp
Project ID (ex com.github.username.project): com.github.chrisroerig.myapp
Project destination (ex /home/username/Projects): ./Projects
```

*Note*

The script will ask to create the destination folder if it doesn't exist.

```
./Projects doesn't exist. Create it? (Y|N): 
```

## Notes:

* The template files are located in `.valagtk`
* The installation script works but is basic

