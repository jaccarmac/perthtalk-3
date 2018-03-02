<?xml version="1.0" encoding="utf-8"?>
<!-- Created by Leo: http://leoeditor.com/leo_toc.html -->
<leo_file xmlns:leo="http://leoeditor.com/namespaces/leo-python-editor/1.1" >
<leo_header file_format="2" tnodes="0" max_tnode_index="0" clone_windows="0"/>
<globals body_outline_ratio="0.5" body_secondary_ratio="0.5">
	<global_window_position top="50" left="50" height="500" width="700"/>
	<global_log_window_position top="0" left="0" height="0" width="0"/>
</globals>
<preferences/>
<find_panel_settings/>
<vnodes>
<v t="jaccarmac.20180301205902.3" a="E"><vh>Initial bootstrapping plan.</vh>
<v t="jaccarmac.20180301215858.1" a="E"><vh>Difficulties: images.</vh>
<v t="jaccarmac.20180301220834.1"><vh>Casaccio et al. 2011.</vh></v>
</v>
</v>
</vnodes>
<tnodes>
<t tx="jaccarmac.20180301205902.3">The Squeak implementors described their process approximately as follows (Forgive my memory, I can't double check the web site at the moment.):

    1. Decide on an image format.
    2. Create a transpiler from a subset of Smalltalk to C.
    3. Compile the VM from the Blue Book.
    4. Run the compiled VM and dump an image.
    5. Refine.

The approach here shall be somewhat similar.

My first idea for the image format is to simply use a Leo document as the image. This should serve at least as a proof of concept, but may have to be scrapped to perform decently. Time will tell.

As far as 2. goes it would be nice if my Smalltalk subset were capable of compiling itself somehow. This isn't really a needed feature and caters purely to my interest in compilers. Again time will tell.</t>
<t tx="jaccarmac.20180301215858.1">I underestimated the effort of creating an image from scratch. There is some research in the area, but most previous Smalltalks (including Squeak) were bootstrapped by operating on an existing image or a translation of an existing image. This is out of scope for what I'm trying to do here, I believe.</t>
<t tx="jaccarmac.20180301220834.1">Casaccio, Ducasse, Fabresse, Arnaud, and van Ryseghm describe a GNU Smalltalk bootstrap process (very) roughly like:

    1. Stub literals, true, false, nil, characters.
    2. Stub definitions of classes and metaclasses.
    3. Compile methods.
    4. Serialize image.

They generate a small kernel with 54 classes using GNU Smalltalk. I don't like GST's syntax and want to boostrap things out of Python. How technically feasible this is remains to be seen.</t>
</tnodes>
</leo_file>
