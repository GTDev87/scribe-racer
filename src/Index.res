%%raw("import {css} from 'astroturf';")

let h1Class: Astroturf.rootClass = %raw("css`
  @apply text-3xl font-semibold;
`");

let h2Class: Astroturf.rootClass = %raw("css`
  @apply text-2xl font-semibold mt-5;
`");

let pClass: Astroturf.rootClass = %raw("css`
  @apply mb-2;
`");

module P = {
  @react.component
  let make = (~children) => <p className=pClass> children </p>
}

let default = () =>
  <div>
    <h1 className=h1Class>
      {"What is this about?"->React.string}
    </h1>
    <P>
      {React.string(` This is a simple template for a Next project using ReScript & TailwindCSS.`)}
    </P>
    <h2 className=h2Class>
      {React.string("Quick Start")}
    </h2>
    <pre>
      {
        React.string(`git clone https://github.com/rescript-nextjs-template.git my-project
cd my-project
rm -rf .git`)
      } //github.com/ryyppy/nextjs-default.git my-project
    </pre>
  </div>
