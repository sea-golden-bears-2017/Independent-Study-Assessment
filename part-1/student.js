/********************************************************/
/*   It is required to use a for loop                   */
/*   when iterating over a student's array of scores.   */
/********************************************************/

class Student {
  constructor({firstName, scores}) {
    this.firstName = firstName;
    this.scores = scores;
  }

  averageScore() {
    let scoreAverage = this.scores.reduce((a, b) => a + b)/this.scores.length;
    return Math.trunc(scoreAverage)
  }

  letterGrade() {
    if (this.averageScore() >= 90) {
      return "A"
    }
    else if (this.averageScore() >= 80) {
      return "B"
    }
    else if (this.averageScore() >= 70) {
      return "C"
    }
    else if (this.averageScore() >= 60) {
      return "D"
    } else {
      return "F"
    }
  }

}
