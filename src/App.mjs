// Generated by ReScript, PLEASE EDIT WITH CARE

import * as React from "react";
import * as MainLayout from "./layouts/MainLayout.mjs";
import * as ScribePage from "./pages/ScribePage.mjs";
import * as Router from "next/router";
import * as JsxRuntime from "react/jsx-runtime";

import {css} from 'astroturf';
;

var h1Class = (css`
  @apply font-bold;
`);

function $$default(props) {
  var router = Router.useRouter();
  var content = React.createElement(props.Component, props.pageProps);
  var match = router.route;
  var tmp;
  switch (match) {
    case "/examples" :
        tmp = JsxRuntime.jsxs(JsxRuntime.Fragment, {
              children: [
                JsxRuntime.jsx("h1", {
                      children: "Examples Section",
                      className: h1Class
                    }),
                JsxRuntime.jsx("div", {
                      children: content
                    })
              ]
            });
        break;
    case "/scribe" :
        tmp = JsxRuntime.jsx(ScribePage.make, {});
        break;
    default:
      tmp = content;
  }
  return JsxRuntime.jsx(MainLayout.make, {
              children: tmp
            });
}

export {
  $$default as default,
}
/*  Not a pure module */
