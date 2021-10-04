const app = require('./app.js')
const http = require('http');
const https = require('https')
const fs = require('fs')

const port = 80

const domain = 'test.abiria.dev'

https.createServer(
    {
        key: fs
            .readFileSync(`/etc/letsencrypt/live/${domain}/privkey.pem`)
            .toString(),
        cert: fs
            .readFileSync(`/etc/letsencrypt/live/${domain}/cert.pem`)
            .toString(),
        ca: fs
            .readFileSync(`/etc/letsencrypt/live/${domain}/fullchain.pem`)
            .toString(),
    },
    app,
)
// .listen(443, () => {
//     console.log('dhttp')
// })

http.createServer(app).listen(80, () => {
    console.log('http')
})
