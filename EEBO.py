# This is a file for me to start playing with code to process the JSON

def find_librarians():
    # load libraries
    import re
    
    # set search term, create and write header to output file, initialize index
    results = open('resultsEEBO.csv', 'w+')
    results.write('JSON DOI,Statement_Type,Snippet\n')
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

        
            # find permission statements
            statement_type = 'EEBO'
            start_index = 0
            for mention in re.finditer('EEBO', line):
                start_index = mention.start()
                if (start_index > 0):
                    snippet = line[start_index-45:start_index+35]
                    results.write(ID + ',' + statement_type + ',' + '"' + snippet + '"' + '\n')
                    start_index = 0
            for mention in re.finditer('Early English Books', line):
                start_index = mention.start()
                if (start_index > 0):
                    snippet = line[start_index-45:start_index+35]
                    results.write(ID + ',' + statement_type + ',' + '"' + snippet + '"' + '\n')
              # find permission statements
            statement_type = 'British History Online'
            start_index = 0
            for mention in re.finditer(' BHO', line):
                start_index = mention.start()
                if (start_index > 0):
                    snippet = line[start_index-45:start_index+35]
                    results.write(ID + ',' + statement_type + ',' + '"' + snippet + '"' + '\n')
            start_index = 0
            for mention in re.finditer(' British History Online', line):
                start_index = mention.start()
                if (start_index > 0):
                    snippet = line[start_index-45:start_index+35]
                    results.write(ID + ',' + statement_type + ',' + '"' + snippet + '"' + '\n')
      		 # find permission statements
            statement_type = 'ECCO'
            start_index = 0
            for mention in re.finditer(' ECCO', line):
                start_index = mention.start()
                if (start_index > 0):
                    snippet = line[start_index-45:start_index+35]
                    results.write(ID + ',' + statement_type + ',' + '"' + snippet + '"' + '\n')
                    statement_type = 'ECCO'
            start_index = 0
            for mention in re.finditer(' Eighteenth Century Collections Online', line):
                start_index = mention.start()
                if (start_index > 0):
                    snippet = line[start_index-45:start_index+35]
                    results.write(ID + ',' + statement_type + ',' + '"' + snippet + '"' + '\n')
    		
        text.close
        i = i + 1

    # close the results file
    results.close
# end function

if __name__ == "__main__":
  find_librarians()
  print "The function to find statements about archives, libraries, repositories, etc. has run. WARNING: If you do not rename results.csv before re-running this program, the results.csv file will be overwritten."