# gcode-lathe

.. image:: https://mybinder.org/badge_logo.svg
 :target: https://mybinder.org/v2/gh/GrayCoHub/binder_lathe/main
 
 
 A Jupyter Lab notebook template (using the R kernel) creates the gcode for turning down the diameter of any size stock using a CNC lathe.  
 The gcode created for the turn-down operation includes the gcode for both the rough turn down and the finish turn down operations.
 
 The gcode generated from this notebook application is derived from the basic lathe information the user provides when prompted 
 for data by the application ( see example below ).  
 
This gcode code basically reproduces the process practiced by many who are generally unfamiliar with a CNC lathe, or just learning to use gcode. 
Rather than the very tedious and error prone process of manually entering gcode into the machine's controller interface (MDI) line by line to 
create a series of gcode commands for turning down a part, this application combines all those MDI actions into a single file of gcode.  A gcode
file to be used by a CNC lathe machine must have a file with a format:  fileName.ngc.   A gcode file with this .ngc extension gets "loaded" into 
the CNC lathe interface.  The gcode file gets evaluated for errors by the machine interface, and is then ready to be run and execute the gcode.

Most gcode controller interfaces have a text editor that can edit, make changes, and then same the gcode.ngc files. The first line of code in
the gcode file needs to be deleted.
  
The gcode created by this application is gcode designed to by used by the Sherline CNC lathe or any similar CNC lathes.  The gcode produced by 
this application does NOT include gcode for spindle speed control, coolent, tool touch off (presetter), or a tool changer.  And there is no tool 
library associated with the gcode created by this notebook template.

Example: The user entered the following values when the notebook template prompted the user for the following inputs.  The user has a small lathe
         so the user chose to make small turning cuts:

Prompt: Starting Diameter?
User: .5110
Prompt: Ending Diameter?
User: .252
Prompt: Cut size?
User:  .015
Prompt: Length of the turning cut along the turning axis? 
User: .95

The gcode for these inputs is included along with the notebook template.  Named: turn_down.ngc


 [![Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/GrayCoHub/binder_lathe/main)

