## Test environments
* local Windows install, R 3.3.1
* ubuntu 12.04 (on travis-ci), R 3.3.1
* win-builder (devel)

## R CMD check results

0 errors | 0 warnings | 1 note

>  Maintainer: 'Michael D. Sumner <mdsumner@gmail.com>'
>  
>  New submission
>  
>  Possibly mis-spelled words in DESCRIPTION:
>    BGM (2:16, 7:50)
>    biogeochemical (7:124)
>  
>  Found the following (possibly) invalid URLs:
>    URL: http://atlantis.cmar.csiro.au/
>      From: README.md
>      Status: 403
>      Message: Forbidden
>    URL: https://cran.r-project.org/package=bgmfiles
>      From: README.md
>      Status: 404
>      Message: Not Found
>      

* the mis-spelled instances are an initialism "BGM", expanded in the Description, and "biogeochemical" which is listed in the Oxford English dictionary 

* the URLs are the main site for the Atlantis model, and the soon-to-exist address on CRAN

Thank you, 

Michael Sumner