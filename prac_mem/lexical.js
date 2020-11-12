var name = "전역";
function log() {
  console.log(name);
}

function wrapper() {
  name = "내부";
  log();
}
wrapper();

var name = "전역";
function log() {
  console.log(name);
}

function wrapper() {
  let name = "내부";
  log();
}
wrapper();

let a = 10;
function foo() {
  let b = 11;
  console.log(a);
  console.log(b);
}
console.log(a);
foo();

var a = 10;
function foo() {
  var b = 10;
  function bar() {
    var c = 10;
    console.log(a + b + c);
  }
  bar();
}
foo();
