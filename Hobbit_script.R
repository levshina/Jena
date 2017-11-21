#1. Scan, white spaces as separators 
Hobbit <- scan("Hobbit_EN.txt", what = "character")

#top 20 most frequent strings
sort(table(Hobbit), decreasing = T)[1:20]

#clean up: remove all punctuation except for the apostrophe
Hobbit <- gsub("[^[:alnum:]']", "", Hobbit)

#replace all capital letters with small ones
Hobbit <- tolower(Hobbit)

#find the frequency of 'hobbit'
length(grep("hobbit", Hobbit))

#only hobbit, no other forms
length(grep("^hobbit$", Hobbit))

#find all string that contain 'hobbit'
Hobbit[grep("hobbit", Hobbit)]

#Find all forms of the noun "king"
Hobbit[grep("king", Hobbit)]
Hobbit[grep("^king", Hobbit)]
Hobbit[grep("^king(['s]*)$", Hobbit)]

##2. Scan by lines
Hobbit <- scan("Hobbit_EN.txt", what = "character", 
               sep = "\n")

#find all contexts with 'hobbit':
grep('hobbit', Hobbit)
Hobbit[2729] #Why?

grep('hobbit', Hobbit, ignore.case = TRUE)
hobbits <- grep('hobbit', Hobbit, ignore.case = TRUE)
Hobbit[hobbits]

#substitute all instances of a string with nothing
Hobbit <- gsub("<i>", "", Hobbit)
Hobbit <- gsub("</i>", "", Hobbit)

#substitute all numbers with nothing
Hobbit <- gsub("[:digit:]", "", Hobbit)

#split a string into tokens
strsplit(Hobbit[3], " ")
unlist(strsplit(Hobbit[3], " "))
