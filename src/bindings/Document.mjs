// Generated by ReScript, PLEASE EDIT WITH CARE


function isBrowser(param) {
  if (typeof(window) !== "undefined") {
    return typeof(window.document) !== "undefined";
  } else {
    return false;
  }
}

export {
  isBrowser ,
}
/* No side effect */
