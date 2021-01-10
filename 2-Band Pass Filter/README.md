## 2. Band Pass Filter , 5 January 2021

### Client Brief:
A Digital Audio Workstations company that requires a filter that can be applied to change how tracks sound. Write a band pass filters.

### Information supplied:
- Sound wave, which is a sequence of frequencies, an array of integers.
- Min frequency and max frequency
- Default min and max frequency, 40, 1000 respectively. Used together, never individually.

### Plan:

|Input|Output  |
|--|--|
| [90], 90, 110 | [90] |
| [90, 100], 90, 110 | [90, 100]|
| [80, 90, 100, 110, 120], 90, 120  | [90, 90, 100, 110, 120]|
| [80, 90, 100, 110, 120], 80, 110 | [80, 90, 100, 110, 110] |
| [80, 90, 100, 110, 120], 90, 110 | [90, 90, 100, 110, 110] |
| [30, 90, 100, 110, 1110], x, x | [40, 90, 100, 110, 1000] |
| [], 40, 1000  | "No Soundwave Found" -> Raise Exception |
| ["a"]  | "Wrong data type" -> Raise Type Error Exception |

A class called **BandPassFilter** that takes three arguments on initialisation and a method **filter** that changes the soundwave.

Example:

    beatles = BandPassFilter.new(soundwave, lower_limit, upper_limit)
    beatles.filter
