/************************************************************/
/*   It is required to use Array.prototype methods          */
/*   when iterating over a classroom's array of students.   */
/************************************************************/
class Classroom {
  constructor(students) {
    this.students = students;
  }

  find (name) {
    return this.students.find(student => student.firstName === name);
  }


} //end of class
