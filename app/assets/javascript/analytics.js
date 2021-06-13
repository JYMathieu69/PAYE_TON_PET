window.dataLayer = window.dataLayer || []
function gtag() { dataLayer.push(arguments) }

gtag('js', new Date())
gtag('config', 'GA_MEASUREMENT_ID')

fenêtre . dataLayer  =  fenêtre . dataLayer  ||  [ ]
function  gtag ( )  {  dataLayer . pousser ( arguments )  }

gtag ( 'js' ,  nouvelle  date ( ) )

const  trackGoogleAnalytics  =  ( événement )  =>  {
  gtag ( 'config' ,  'GA_MEASUREMENT_ID' ,  {
    'cookie_flags' : 'max-age=7200;secure;samesite=none'
  } )
}

documenter . addEventListener ( 'turbolinks:load' ,  trackGoogleAnalytics )
