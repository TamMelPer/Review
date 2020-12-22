
def report(grades)
  scorecard = []
  green = grades.scan("Green").length
  amber = grades.scan("Amber").length
  red = grades.scan("Red").length
  if green > 0
    scorecard << "Green: #{green}"
  end
  if amber > 0
    scorecard << "Amber: #{amber}"
  end
  if red > 0
    scorecard << "Red: #{red}"
  end
  scorecard.join("\n ")
end
