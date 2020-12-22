
## PROCESS REVIEWS

 ### 1 School Report Builder, 21 December 2020
Client Brief: We assess how students did on tests. Will give a string of test results and expect back a report of the grade with a count of how many students have achieved each grade.

I asked for an example of the input and the expected output and was given "Green, Amber, Red" ⇒  "Green: 1\n Amber: 1\n Red: 1"

I enquired about whether the grades would always be given capitalised and was told it could be any combination of lower case, all caps etc. I also asked if it is possible that the grades would be spelt incorrectly or if there'd be random grades and was told that it would be possible and that I should also return a count of all the grades that had been uncounted.

I decided to start with the basics and consider the edge cases if there was time but once I opened the text editor I froze and got totally blocked.

After the review, I took a break, came back, deleted all my code and gave myself 30 minutes to start from scratch.

I was able to produce an MVP using the TDD process and can interact with it on the command line:

![School Report](https://user-images.githubusercontent.com/71432715/102894065-6fe5ab00-445a-11eb-8c91-ebfd77b600a3.png)
