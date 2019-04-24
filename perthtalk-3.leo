<?xml version="1.0" encoding="utf-8"?>
<!-- Created by Leo: http://leoeditor.com/leo_toc.html -->
<leo_file xmlns:leo="http://leoeditor.com/namespaces/leo-python-editor/1.1" >
<leo_header file_format="2"/>
<globals/>
<preferences/>
<find_panel_settings/>
<vnodes>
<v t="jaccarmac.20180301205902.3"><vh>Initial bootstrapping plan.</vh>
<v t="jaccarmac.20180301215858.1"><vh>Difficulties: images.</vh>
<v t="jaccarmac.20180301220834.1"><vh>Casaccio et al. 2011.</vh></v>
<v t="jaccarmac.20180301221928.1"><vh>Two-way bootstrap?</vh></v>
<v t="jaccarmac.20190424164813.1"><vh>Python generation from Pharo.</vh></v>
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
<t tx="jaccarmac.20180301221928.1">My distaste to boostrapping from something like Pharo is because I want to only be tied to Python 3 and Leo. However, it might not be a bad idea to have the Smalltalk boostrap code run in Pharo as well as transpile to Python (and transpile itself?). That said I'm definitely against using a tracer to dump an image in a new format. I will be following the static image generation protocol for this project.</t>
<t tx="jaccarmac.20190424164813.1">The Python3Generator just might be useful. The API seems a bit clunky; Perhaps an opportunity to explore Smalltalk's equivalent to macro magic in Lisp?

https://github.com/juliendelplanque/Python3Generator</t>
</tnodes>
</leo_file>
