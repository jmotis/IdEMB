# This is a file for me to start playing with code to process the JSON

def find_librarians():
    # load libraries
    import re
    
    # set search term, create and write header to output file, initialize index
    results = open('results.csv', 'w+')
    results.write('JSON DOI,Snippet Around '+search_term)
    i = 0
    
    # for each JSON file
    while (i<7):
        filename = 'data-0000'+str(i)+'-research-articles.json'
        text = open(filename, 'r')
        entry = text.readlines()
    
        # for each line in the file
        for line in entry:
            # find article ID
            start_ID_index = line.find('"doi": "') + 8
            end_ID_index = line.find('"}')
            ID = line[start_ID_index:end_ID_index]

            # find mentions of search term
            start_index = 0
            for mention in re.finditer(search_term, line):
                start_index = mention.start()
                if (start_index > 0):
                    snippet = line[start_index-30:start_index+search_term_length+30]
                    results.write(ID + ',' + snippet + '\n')

        text.close
        i = i + 1

    # close the results file
    results.close
# end function

if __name__ == "__main__":
  search_term = raw_input('What term would you like to search on? ')
  search_term_length = len(search_term)  
  find_librarians()
  print "The search function has run. WARNING: If you do not rename results.csv before re-running this program, the results.csv file will be overwritten."