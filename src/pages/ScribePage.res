%%raw("import {css} from 'astroturf';")

@react.component
let make = () => {

  let message = "Hello, this is a test message!"

  let (isBrowser, setIsBrowser) = React.useState(() => false);


  React.useEffect(() => {
    // if (Js.Global.undefined != Js.Undefined.fromOption(Js.Global.window)) {
    if(Document.isBrowser()) {
      setIsBrowser(_ => true)
    }
    None
  }, []);

  switch(isBrowser){
  | true => 
    <div>
      <h1>
        {React.string("Scribe Section")}
      </h1>
      <ReactSay pitch=1.1 rate=1.5 volume=0.8 text=message />
    </div>
  | _ => <div />
  }

  
  // <div />
}
