/********************************************************/
/*   It is required to use a for loop                   */
/*   when iterating over a student's array of scores.   */
/********************************************************/

class Student {
  constructor({firstName, scores}) {
    this.firstName = firstName;
    this.scores = scores;
  }

  averageScore () {
    const total = this.scores.reduce((sum, value) => sum + value);
    const avg = total / this.scores.length;
    return Math.floor(avg);
  }

  letterGrade () {
    if (this.averageScore() >= 90) {
      return "A";
    } else if (this.averageScore() >= 80) {
      return "B";
    } else if (this.averageScore() >= 70) {
      return  "C";
    } else if (this.averageScore() >= 60) {
      return "D";
    } else {
      return "F";
    }
  }

} //end of class
