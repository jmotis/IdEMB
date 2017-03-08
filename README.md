# IdEMB

Code and data associated with the Mellon-funded CLIR microgrant "A Text By Any Other Citation: Identifying Early Modern Printed Books"

This code and data is made available under a CC BY-SA 4.0 license: http://creativecommons.org/licenses/by-sa/4.0/

------------
The folder "XML_files" contains XML files of Book History article citations (aka "references"). Each XML file is named according to the JSTOR unique identifier for the article in question. The citations within the file have been assembled through a combination of computational and manual extraction from PDFs of each article. They have been hand-tagged according to a descriptive schema, intended to capture and describe various elements of scholarly citations.

The folder "STC_files" contains files that enable a user to translate STC location codes into repository names, as described in http://idemb.org/data/whats-that-code-again/

The folder "python_files" contains code for search functions that were written to be run on full-text JSON files provided to IdEM B by JSTOR. These JSON files (or any similar files newly requested from JSTOR) should be placed in the same folder as the python files before attempting to run the python files.

"find_librarians.py" will search for a set of predetermined strings

"find_librarians_generalized.py" will solicit user input as to what string to search for. 

"permissions.py" is a simplified version of "find_librarians.py" that reduces the noise in searching for permissions statements in image captions

"EEBO.py" will search for two forms of references to each of three different commonly used online databases of primary source material, Early English Books Online (and its related microfilm), Eighteenth Century Collections Online, and British History Online.

"STC.py" will search for common print-based bibliographcial catalogues

"shelfmark.py" will search for the term 'shelfmark' and 'classmark'

"appendices.py" attempts to search for primary source lists at the end of works; best as a finding aid rather than to gather information from the snippet function.

"debt.py" will search for statements of obligation; noise level is moderately high
