# IdEMB

Code associated with the Mellon-funded CLIR microgrant "A Text By Any Other Citation: Identifying Early Modern Printed Books"

This code is made available under a CC BY-SA 4.0 license: http://creativecommons.org/licenses/by-sa/4.0/

The search funtions "find_librarians.py" and "find_librarians_generalized.py" are intended to run on the JSON files provided to IdEM B by JSTOR. These files should be placed in the same folder as the python files before attempting to run the python files. "find_librarians.py" will search for a set of predetermined strings while "find_librarians_generalized.py" will solicit user input as to what string to search for.

------------
Additional flavors of preloaded searches:
permissions.py is a simplified version of find_librarians.py that reduces the noise in searching for permissions statements in image captions. 

EEBO.py is preloaded to search for two forms of references to each of three different commonly used online databases of primary source material, Early English Books Online (and its related microfilm), Eighteenth Century Collections Online, and British History Online.

STC.py is preloaded to search for common print-based bibliographcial catalogues

shelfmark.py is preloaded to search for the term 'shelfmark' and 'classmark'

appendices.py attempts to search for primary source lists at the end of works; best as a finding aid rather than to gather information from the snippet function.
