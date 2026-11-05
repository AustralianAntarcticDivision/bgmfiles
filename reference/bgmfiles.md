# bgmfiles.

Raw data files are maintained here:
<https://github.com/AustralianAntarcticDivision/box-geometry-models.git>

Return the full paths to all files in the extdata/bgm/ folder of this
package.

## Usage

``` r
bgmfiles(pattern = NULL)
```

## Arguments

- pattern:

  optional pattern string to filter files returned, see
  [`list.files`](https://rdrr.io/r/base/list.files.html) for details

## Value

character vector of file paths

## Details

This package contains a simple workflow to update from that source repo
and install the raw files into extdata/ of the installed package.

## See also

Useful links:

- <https://github.com/AustralianAntarcticDivision/bgmfiles/>

- Report bugs at
  <https://github.com/AustralianAntarcticDivision/bgmfiles/issues/>

## Author

**Maintainer**: Michael D. Sumner <mdsumner@gmail.com>

Authors:

- Michael D. Sumner <mdsumner@gmail.com>

Other contributors:

- Hadley Wickham \[contributor\]

## Examples

``` r
## obtain all example files installed
bfiles <- bgmfiles()
print(basename(bfiles))
#>  [1] "AEEC_poly_projETRS89_LAEA_snapped0p002.bgm"
#>  [2] "CalCurrentV3_utm.bgm"                      
#>  [3] "Final_CAM_Boxes_8.bgm"                     
#>  [4] "GOM_BGM.bgm"                               
#>  [5] "Guam_utm1.bgm"                             
#>  [6] "JFRE_ll.bgm"                               
#>  [7] "JFRE_xy.bgm"                               
#>  [8] "NGOM.bgm"                                  
#>  [9] "Nordic02.bgm"                              
#> [10] "VMPA_setas.bgm"                            
#> [11] "ams71.bgm"                                 
#> [12] "antarctica_28.bgm"                         
#> [13] "antarctica_99.bgm"                         

## filter based on an input pattern
afiles <- bgmfiles(pattern = "^antarc")
print(basename(afiles))
#> [1] "antarctica_28.bgm" "antarctica_99.bgm"

## read all the text from all files and table raw characters
## (for no reason)
lapply(bfiles, function(x) table(unlist(strsplit(paste(readLines(x), collapse = ""), ""))))
#> [[1]]
#> 
#>    \t           #     $     (     )     +     ,     -     .     /     0     1 
#>   315 17166   862     4     1     1     9     6   269 15939     2 18970 20396 
#>     2     3     4     5     6     7     8     9     :     =     B     C     D 
#> 20741 25000 17905 18128 18683 17482 16033 17404     7     8    71     1     1 
#>     E     F     G     M     R     S     T     V     _     a     b     c     d 
#>    40   824     1     2     2     1     1     1   113  5094  3185  5842   147 
#>     e     f     g     h     i     j     l     m     n     o     p     r     s 
#>  8720  4159   827   859   252     2  1725   934  1941  2333  1651  3697   866 
#>     t     u     v     w     x     y     z 
#>  2803   860  1937     2  2287     3    71 
#> 
#> [[2]]
#> 
#>    \t           #     $     (     )     +     -     .     /     0     1     2 
#>   801  8743   480     4     1     1     8   599  9114     2  9935 11971 11599 
#>     3     4     5     6     7     8     9     :     =     B     D     E     F 
#> 10930  9537  9699  9790  9636  9297  9453     7     7   179     1   179   388 
#>     G     M     R     S     T     V     W     _     a     b     c     d     e 
#>     1     1     1     2     1     1     2    95  2692  2620  2899   184  4726 
#>     f     g     h     i     j     k     l     m     n     o     p     r     s 
#>  2033   390   477   629     2     1   960   660  1319  2328   779  2210   482 
#>     t     u     v     w     x     y     z 
#>  1643   477  1160     1  2230     4   179 
#> 
#> [[3]]
#> 
#>   \t         #    ,    -    .    0    1    2    3    4    5    6    7    8    9 
#>  882 5473  314    6  181 5953 6360 7125 6484 6658 7384 5896 5766 5777 5721 5887 
#>    :    =    B    D    E    F    G    R    S    T    _    a    b    c    d    e 
#>    2   12  197    1   89  214    1    1    2    1   94 1675 2193 1691  192 3009 
#>    f    g    h    i    j    k    l    m    n    o    p    r    s    t    u    v 
#> 1166  216  311  691    2    1  628  513 1012 2095  430 1527  317 1119  313  801 
#>    w    x    y    z 
#>    2 1989    3  198 
#> 
#> [[4]]
#> 
#>   \t         #    -    .    0    1    2    3    4    5    6    7    8    9    = 
#>  595 4143  238  224 4630 4847 5808 5431 5697 4882 4918 4653 4287 4341 4366   10 
#>    A    B    D    E    F    N    _    a    b    c    d    e    f    g    h    i 
#>    1  132    1  132  172    1   77 1302 1579 1342  138 2323  928  172  238  464 
#>    j    k    l    m    n    o    p    r    s    t    u    v    w    x    y    z 
#>    2    1  484  373  750 1474  347 1158  241  858  240  613    1 1404    1  133 
#> 
#> [[5]]
#> 
#>     \t             #      $      (      )      +      -      .      /      0 
#> 399485     56    384      4      1      1     12    279   6885      2   4625 
#>      1      2      3      4      5      6      7      8      9      :      = 
#>   7483   6921   4504   6178   5823   4222   4145   4277   4303      9      4 
#>      A      B      D      E      F      G      N      O      R      S      T 
#>      1    114      1     64    319      1      2      1      1      2      2 
#>      V      W      _      a      b      c      d      e      f      g      h 
#>      1      2     71   2152   1855   2352    133   3715   1658    321    380 
#>      i      j      l      m      n      o      p      r      s      t      u 
#>    406      2    758    496   1005   1592    642   1673    387   1247    381 
#>      v      w      x      y      z 
#>    857      1   1518      2    116 
#> 
#> [[6]]
#> 
#>   \t         #    $    (    )    +    -    .    /    0    1    2    3    4    5 
#>  459 4503  258    4    1    1    4 2103 4691    2 4994 5652 5067 6328 4595 4306 
#>    6    7    8    9    :    =    A    B    D    E    F    G    R    S    T    V 
#> 4559 5164 4781 4413    7    3    2  103    1   54  204    2    1    3    2    1 
#>    W    _    a    b    c    d    e    f    g    h    i    j    l    m    n    o 
#>    2   24 1437 1372 1535   79 2453 1074  207  256  363    2  516  362  694 1255 
#>    p    r    s    t    u    v    w    x    y    z 
#>  412 1120  260  813  257  552    1 1194    2  103 
#> 
#> [[7]]
#> 
#>   \t         #    $    (    )    +    ,    -    .    /    0    1    2    3    4 
#>  459 4506  258    4    1    1    7    6 1013 4691    2 4911 6060 5823 5065 5005 
#>    5    6    7    8    9    :    =    A    B    D    E    F    G    R    S    T 
#> 4803 5386 4293 4593 4582    7    5    2  103    1  101  204    1    2    2    2 
#>    V    _    a    b    c    d    e    f    g    h    i    j    l    m    n    o 
#>    1   24 1435 1372 1535   78 2454 1074  207  257  364    2  514  363  695 1257 
#>    p    r    s    t    u    v    w    x    y    z 
#>  412 1120  263  815  259  552    2 1194    2  104 
#> 
#> [[8]]
#> 
#>   \t         #    -    .    0    1    2    3    4    5    6    7    8    9    : 
#>  333 4164  215 1093 4331 4551 5682 5405 6264 4577 4749 4552 4412 4054 4039    2 
#>    =    B    D    E    F    J    T    _    a    b    c    d    e    f    g    h 
#>    9   75    1   75  176    1    2  100 1209 1245 1310  137 2227  919  178  213 
#>    i    j    k    l    m    n    o    p    r    s    t    u    v    w    x    y 
#>  262    2    1  430  292  639 1053  354 1090  215  840  216  622    1 1010    3 
#>    z 
#>   76 
#> 
#> [[9]]
#> 
#>   \t         #    $    (    )    -    .    /    0    1    2    3    4    5    6 
#>  540 5717  316    4    1    1  475 5897    2 6058 8117 7200 6556 6839 6780 6372 
#>    7    8    9    :    =    A    B    C    D    E    F    R    S    T    V    W 
#> 6041 5675 5821    7    9    1  121    1    1   61  253    1    1    1    1    1 
#>    _    a    b    c    d    e    f    g    h    i    j    l    m    n    o    p 
#>   69 1769 1732 1895  127 3096 1329  256  313  428    2  635  438  878 1545  509 
#>    r    s    t    u    v    w    x    y    z 
#> 1447  319 1077  315  755    1 1476    3  121 
#> 
#> [[10]]
#> 
#>   \t         #    '    (    )    *    ,    -    .    0    1    2    3    4    5 
#>  213 2095   39    1    1    1   16    6   23  832  574 1009  690  581  774  479 
#>    6    7    8    9    =    >    A    B    D    F    G    L    M    N    P    R 
#>  421  454  413  474   10    1    1   22   33    1    1    1    3   13    1    2 
#>    S    V    _    a    b    c    d    e    f    g    h    i    j    k    l    m 
#>    1    1   55  267  338  186   69  435  186   27   38   94    2    1   83   69 
#>    n    o    p    r    s    t    u    v    w    x    y    z 
#>  155  341   53  298   56  261   40  171    5  275    2   27 
#> 
#> [[11]]
#> 
#>   \t         #    (    )    +    ,    -    .    0    1    2    3    4    5    6 
#> 2149 4675  270    1    1    9    6  176 4940 3701 5181 4369 3771 3821 3430 3024 
#>    7    8    9    =    >    B    D    E    G    M    N    R    S    _    a    b 
#> 2839 3164 3180   10    1    2  264    9    1    2    2    1    1   74 1994 1811 
#>    c    d    e    f    g    h    i    j    l    m    n    o    p    r    s    t 
#> 1499  146 2536 1502  196  271  511    2  545  350  757 1902  395 1487  281 1230 
#>    u    v    w    x    y    z 
#>  202  683    2 1543    5  147 
#> 
#> [[12]]
#> 
#>   \t         #    $    (    )    +    -    .    /    0    1    2    3    4    5 
#>  252 2220  121    4    1    1    9  737 2389    2 2382 3196 2876 2519 2610 2630 
#>    6    7    8    9    :    =    B    D    E    F    G    J    R    S    T    V 
#> 2285 2462 2346 2315    7    8   57    1   55   90    2    1    1    3    2    1 
#>    W    _    a    b    c    d    e    f    g    h    i    j    l    m    n    o 
#>    2   59  664  773  691   87 1218  481   92  119  203    2  243  180  384  693 
#>    p    r    s    t    u    v    w    x    y    z 
#>  183  613  124  468  121  343    1  656    3   57 
#> 
#> [[13]]
#> 
#>    \t           #     $     (     )     +     -     .     /     0     1     2 
#>   891  7672   434     4     1     1     7  2090  8266     2 14001  9077  8120 
#>     3     4     5     6     7     8     9     :     =     B     D     E     F 
#>  7410  7907  7960  8121  7088  6615 14017     7     7   199     1   105   332 
#>     M     R     S     T     V     W     _     a     b     c     d     e     f 
#>     1     1     1     1     1     1   101  2399  2587  2527   202  4228  1761 
#>     g     h     i     j     l     m     n     o     p     r     s     t     u 
#>   335   431   699     2   868   633  1264  2364   666  2031   435  1500   431 
#>     v     w     x     y     z 
#>  1063     1  2256     3   199 
#> 
```
