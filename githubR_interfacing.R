# Read file from github

ghub.link = "https://github.com/tbiggsgithub/NSF_Amazon.git"

ghub.link.trial = "https://github.com/tbiggsgithub/github_howto.git"


# https://stackoverflow.com/questions/14441729/read-a-csv-from-github-into-r
library(RCurl)
#x <- getURL("https://raw.github.com/aronlindberg/latent_growth_classes/master/LGC_data.csv")
#y <- read.csv(text = x)


#urlfile<-'https://raw.github.com/aronlindberg/latent_growth_classes/master/LGC_data.csv'
#dsin<-read.csv(urlfile)


# Does not work:  cannot open the connection
tbiggsurl = "https://raw.githubusercontent.com/tbiggsgithub/github_howto/main/data/rainfall_chirps_properties_LotIDfin_1981_2019.csv?token=GHSAT0AAAAAABU7LZK4BDFMNZ4N42SO43DCYUPTPWA"
x = read.csv(tbiggsurl)

# Does not work: file not found
xurl = getURL(tbiggsurl)
x = read.csv(text=xurl)
