Client: Company that assesses how students did on tests.
Will be given a string of test results and return back a report
Build a School Report Builder

Input - A string of test results. Example: "Green, Amber, Red"
Output - Example: "Green: 1\n Amber: 1\n Red: 1"


Input   |   Output
"Green" |   Green: 1
"Green, Green" | Green: 2
"Green, Amber" | Green: 1\n Amber: 1
"Green, Green, Amber, Red" | Green: 2\n Amber: 1\n Red: 1

Edge Case: If not one of the grades, return as Uncounted.
