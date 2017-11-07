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
}

window.Student = Student
