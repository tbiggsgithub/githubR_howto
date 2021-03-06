# Read file from github

ghub.link = "https://github.com/tbiggsgithub/NSF_Amazon.git"

ghub.link.trial = "https://github.com/tbiggsgithub/github_howto.git"

# https://stackoverflow.com/questions/14441729/read-a-csv-from-github-into-r
library(RCurl)
library(curl)
library(httr)

# In github, find the file, choose 'View Raw", and copy the URL.

tbiggsurl = "https://raw.githubusercontent.com/tbiggsgithub/github_howto/main/data/rainfall_chirps_properties_LotIDfin_1981_2019.csv?token=GHSAT0AAAAAABU7LZK46EG7OI4DOYJP45WOYUPT77Q"
x = read.csv(tbiggsurl)
dim(x)

# After deleting rows in rainfall, this is the new token:
tbiggsurl.postupdate2 = "https://raw.githubusercontent.com/tbiggsgithub/github_howto/main/data/rainfall_chirps_properties_LotIDfin_1981_2019.csv?token=GHSAT0AAAAAABU7LZK5ZKX6H2MYO2XREE74YUPUG5A"
x2 = read.csv(tbiggsurl.postupdate2)
dim(x2)

#  Seems like the token renews every time.  May be difficult to use private repositories to share data.

# Made repo public, lets' try now:
url.public = "https://raw.githubusercontent.com/tbiggsgithub/githubR_howto/main/data/rainfall_chirps_properties_LotIDfin_1981_2019.csv"
x3 = read.csv(url.public)
dim(x3)
# 397  469
#  correct.

# Now remove lines from rainfall.csv, push to github, and reload:
x4 = read.csv(url.public)
dim(x4)
  # Did not update...not that it takes 5 minutes to update the raw files.

# Created a simple file x, y 1:10
url.simple = "https://raw.githubusercontent.com/tbiggsgithub/githubR_howto/main/data/simple.csv"
y = read.csv(url.simple)
  # Works.

# Now change the file, push to github.

