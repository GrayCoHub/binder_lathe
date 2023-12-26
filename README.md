# gcode-lathe

 A Jupyter Lab notebook using the R kernel creates the gcode for turning down the diameter of a part using a CNC lathe.  This include the 
 rough turn down operatation and the finish turn down operation.
 
 The gcode generated from this notebook application is derived from some basic dimensional information the user provides when prompted 
 for data by the application.  
 
This gcode code basically reproduces the process practiced by many who are generally unfamiliar with a CNC lathe, or just learning to use gcode. 
Rather than the very tedious and error prone process of manually entering gcode into the machine's controller interface (MDI) line by line to 
create a process of turning down a part, this application combines those MDI actions into a single file of gcode - with the .ngc extension.  
Once a gcode file is created for the turning down a part, the file is ready to get loaded into the CNC lathe controller. The gcode output file
can be run line by line - a smart practice to perform with each new file of gcode, and then run in completion by the CNC lathe.
  
The gcode created by this application is gcode designed to by used by the Sherline CNC lathe or any similar CNC lathes.  The gcode produced by 
this application does NOT include gcode for spindle speed control, coolent, tool touch off (presetter), or a tool changer.  There is no tool library 
associated with this gcode.  

A sample of the gcode created by this application is included with the other files in this repo.  The sample gcode file is named, roughing_profile.ngc.


