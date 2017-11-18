const Elm = require('./Main.elm')
const mountNode = document.getElementById('root')

app = Elm.Main.embed(mountNode)

module.exports = {
  use: ['neutrino-middleware-hot']
}
