= xMOD =

Author: splittingred
Updated: Feb 4th, 2013

== Description ==

Allows for loading MODs that need to register as Character/Rules scripts without colliding with other mods.

== Installation ==

Simply place in Mods/ folder, then add "xMOD" to your mods.cfg.

To adjust the mods you wish to load with xMOD, simply copy the config.cfg.sample to config.cfg, and edit the config
values there.

For example, to load the mod script "HoverMessages.as" in the builder $scripts config, just set in the config

blob_builder_scripts = HoverMessages.as;

This will then load the script HoverMessages.as when the Builder blob is loaded.