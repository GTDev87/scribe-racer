type props = {
  msg: string,
  href: string,
}

let default = (props: props) => <ScribePage />

let getServerSideProps = _ctx => {
  let props = {
    msg: "This page was rendered with getServerSideProps. You can find the source code here: ",
    href: "https://github.com/ryyppy/nextjs-default/tree/master/src/Examples.res",
  }
  Js.Promise.resolve({"props": props})
}
