%%raw("import {css} from 'astroturf';");

module Link = Next.Link

let navClass: Astroturf.rootClass = %raw("css`
  @apply p-2 h-12 flex border-b border-gray-200 justify-between items-center text-sm;
`");

let aClass: Astroturf.rootClass = %raw("css`
  @apply flex items-center w-1/3;
`");

let imgClass: Astroturf.rootClass = %raw("css`
  @apply w-5;
`");

let spanClass: Astroturf.rootClass = %raw("css`
  @apply text-xl ml-2 align-middle font-semibold;
`");

let innerSpanClass: Astroturf.rootClass = %raw("css`
  @apply text-orange-800;
`");

let divClass: Astroturf.rootClass = %raw("css`
  @apply flex w-2/3 justify-end;
`");

let innerAClass: Astroturf.rootClass = %raw("css`
  @apply px-3 font-bold;
`");

let legacyAClass: Astroturf.rootClass = %raw("css`
  @apply px-3;
`");

let mainDivClass: Astroturf.rootClass = %raw("css`
  @apply flex lg:justify-center;
`");

let mainDivDivClass: Astroturf.rootClass = %raw("css`
  @apply max-w-5xl w-full lg:w-3/4 text-gray-900 text-base;
`");

let mainDivDivMainClass: Astroturf.rootClass = %raw("css`
  @apply mt-4 mx-4;
`");


module Navigation = {
  @react.component
  let make = () =>
    <nav className=navClass>
      <Link legacyBehavior=true href="/">
        <a className=aClass>
          <img className=imgClass src="/static/zeit-black-triangle.svg" />
          <span className=spanClass>
            {React.string("Next")} <span className=innerSpanClass> {React.string(" + ReScript")} </span>
          </span>
        </a>
      </Link>
      <div className=divClass>
        <Link legacyBehavior=true href="/">
          <a className=legacyAClass>
            {React.string("Home")}
          </a>
        </Link>
        <Link legacyBehavior=true href="/examples">
          <a className=legacyAClass>
            {React.string("Examples")}
          </a>
        </Link>
        <a
          className=innerAClass
          target="_blank"
          href="https://github.com/ryyppy/nextjs-default">
          {React.string("Github")}
        </a>
      </div>
    </nav>
}

@react.component
let make = (~children) => {
  let minWidth = ReactDOM.Style.make(~minWidth="20rem", ())
  <div style=minWidth className=mainDivClass>
    <div className=mainDivDivClass>
      <Navigation />
      <main className=mainDivDivMainClass>
        children
      </main>
    </div>
  </div>
}
