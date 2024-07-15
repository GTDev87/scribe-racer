type document
type window
// Define an external binding for the window object
@bs.val external typeof: 'a => string = "typeof"

@bs.val external window: window = "window"
@bs.val external document: document = "window.document"
// @val external window: option<Js.Obj.t> = "window"

let isBrowser = () => typeof(window) != "undefined" && typeof(document) != "undefined"