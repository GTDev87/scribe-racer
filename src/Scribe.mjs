// Generated by ReScript, PLEASE EDIT WITH CARE

import * as ScribePage from "./pages/ScribePage.mjs";
import * as JsxRuntime from "react/jsx-runtime";

function $$default(props) {
  return JsxRuntime.jsx(ScribePage.make, {});
}

function getServerSideProps(_ctx) {
  return Promise.resolve({
              props: {
                msg: "This page was rendered with getServerSideProps. You can find the source code here: ",
                href: "https://github.com/ryyppy/nextjs-default/tree/master/src/Examples.res"
              }
            });
}

export {
  $$default as default,
  getServerSideProps ,
}
/* ScribePage Not a pure module */