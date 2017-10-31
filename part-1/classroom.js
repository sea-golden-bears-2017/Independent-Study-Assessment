/************************************************************/
/*   It is required to use Array.prototype methods          */
/*   when iterating over a classroom's array of students.   */
/************************************************************/

class Classroom {
  constructor(students) {
    this.students = students
  }

  find(studentName) {
    nameFunction(pupil) => {
      return pupil.firstName === studentName
    };
    return this.students.find(nameFunction)
  }

  honorRollStudents() {
    // return array of student objects
  }

}
