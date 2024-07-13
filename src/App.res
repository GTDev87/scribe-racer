%%raw("import {css} from 'astroturf';")
// This type is based on the getInitialProps return value.
// If you are using getServerSideProps or getStaticProps, you probably
// will never need this
// See https://nextjs.org/docs/advanced-features/custom-app

let h1Class: Astroturf.rootClass = %raw("css`
  @apply font-bold;
`");
type pageProps

module PageComponent = {
  type t = React.component<pageProps>
}

type props = {
  @as("Component")
  component: PageComponent.t,
  pageProps: pageProps,
}


// We are not using `@react.component` since we will never
// use <App/> within our ReScript code.
// It's only used within `pages/_app.js`
let default = (props: props): React.element => {
  let {component, pageProps} = props

  let router = Next.Router.useRouter()

  let content = React.createElement(component, pageProps)

  <MainLayout>
    {
      switch router.route {
      | "/examples" =>
        <>
          <h1 className=h1Class>
            {React.string("Examples Section")}
          </h1>
          <div>
            content
          </div>
        </>
      | _ => content
      }
    }
  </MainLayout>
}
