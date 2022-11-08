#enter data frames manually
#elements mus be vector! data.frame(name=c())
data.frame(name=c("James","Mike","Joey"), age=c(23,24,30))

#create folder or file
dir.create("destination_folder")
file.create("new_text_file.txt")
#copy file
file.copy("new_text_file.txt","destination_folder")
#delete file
unlink("new_text_file.txt")

#create matrix have twp steps add vector and add dimension
matrix(c(4:10),ncol = 5)
#from 4 to 10 has data-length of 7, therefore, it can not fill dat-frame of 5 collum so it repeat to fullfil
