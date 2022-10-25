import { person } from "./person.js";
export class students extends person {
  constructor(fname, lname, age, grade) {
    this.fname = fname;
    this.lname = lname;
    this.age = age;
    this.grade = grade;
  }

  get name() {
    console.log(this.name);
  }

  get age() {
    console.log(this.age);
  }
}
