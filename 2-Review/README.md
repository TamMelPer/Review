## README

Digital Audio Workstations

filters applied to change how tracks sound

write a band pass filters

sound wave is a sequence of frequencies, an array of integers.
min frequency and max frequency supplied
default min and max frequency, 40, 1000 respectively. Used together, never individually.

[80, 90, 100, 110, 120], lower_limit: 90, upper_limit: 110 => [90, 90, 100, 110, 110]

Input                             | Output
[90], 90, 110                     | [90]
[90, 100], 90, 110                | [90,100]
[80, 90, 100, 110, 120], 90, 120  | [90, 90, 100, 110, 120]
[80, 90, 100, 110, 120], 80, 110  | [80, 90, 100, 110, 110]
[80, 90, 100, 110, 120], 90, 110  | [90, 90, 100, 110, 110]
[30, 90, 100, 110, 1110], x, x    | [40, 90, 100, 110, 1000]
[], 40, 1000                      | "No Soundwave Found" -> Raise Exception
["a"]                             | "Wrong data type" -> Raise Type Error Exception


beatles = BandPassFilter.new(soundwave, lower_limit, upper_limit)
beatles.filter
