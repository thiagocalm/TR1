here::here()
setwd("TR1/HMDHFDplus")
dir()
library(devtools)

document()

# increment version number
# install_github("timriffe/TimUtils", subdir = "TimUtils")

load_all(reset=TRUE)
us = Sys.getenv("us")
pw = Sys.getenv("pw")
build(path="/home/tim/workspace/TR1/TR1/Builds")

sp <- readHMDweb("ESP", "mltper_1x1", us, pw)
# install.packages(here::here("TR1","Builds","HMDHFDplus_1.9.11.9000.tar.gz"), type = "source", repos = NULL)
# library(HMDHFDplus)
# 
#  A <- readHMDweb("USA","mltper_1x1",username=us,password=pw)
#  head(A)
#  A <- readJMDweb("02","mltper_5x5") 
#  head(A)
#  A <- readCHMDweb("alb","mltper_5x5")
#  head(A)
A <- readHFDweb("KOR","birthsRR",username=us,password=pw)
A
#  head(A)

# this one needs fixing
#  A <- readHFCweb("USA","ASFRstand_BO")
#  head(A)
#  USpop <- readHMDweb("USA","Population",username = us, password = pw)
# head(USpop)


devtools::check()
# 0 errors ✔ | 0 warnings ✔ | 0 notes ✔
sessionInfo()


# windows checks on different versions:
#  20, Jan 2025
check_win_release()    # sent OK
check_win_devel()      # sent
check_win_oldrelease() # sent OK


#devtools::install_github("r-hub/rhub")
library(rhub)
list_validated_emails()
just twiddle thumbs
rhub::check()
# need to re-validate email?

check_on_windows(email = "tim.riffe@gmail.com",show_status=FALSE)
check_mac_release(quiet=TRUE)
check_with_rdevel(email = "tim.riffe@gmail.com",show_status=FALSE)
#install.packages("spelling")
library(spelling)
spell_check()

#devtools::install_github('r-lib/revdepcheck',force=TRUE)
library(revdepcheck)
revdepcheck::revdep_check()

devtools::release()

#use_revdep()
#revdepcheck::revdep_check()

#devtools::install_github("GuangchuangYu/badger")
#library(badger)
#badge_github_version("timriffe/TR1/TR1/HMDHFDplus")
#?badge_github_version
#badger:::check_github("timriffe/TR1/TR1/HMDHFDplus")
#rvcheck:::check_github_gitlab("timriffe/TR1/TR1/HMDHFDplus")
#badger:::badge_github_version("timriffe/DemoTools","yellow")

release()

