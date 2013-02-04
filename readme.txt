= xMOD =

Author: splittingred
Updated: Feb 4th, 2013

== Description ==

Allows for loading MODs that need to register as Character/Rules scripts without colliding with other mods.

== Installation ==

Simply place in Mods/ folder, then add "xMOD" to your mods.cfg.

To adjust the mods you wish to load with xMOD, simply copy the "_sample" files that you want to load scripts for,
and remove the _sample in the filename.

For example, to load the mod script "HoverMessages.as" in the builder $scripts config, just copy in the xMOD dir:
Configs/Blobs/builder.x.cfg.sample ... and rename it to: Configs/Blobs/builder.x.cfg

And set the content to:

scripts = HoverMessages.as;

This will then load the script HoverMessages.as when the Builder blob is loaded.