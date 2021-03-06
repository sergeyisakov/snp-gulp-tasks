helpers = require '../lib/helpers'
$ = helpers.gulpLoad [
  'if'
  'rev'
  'flatten'
]
PROP = require '../lib/config'

module.exports = ->
  gulp.src PROP.path.fonts()
    .pipe $.if !PROP.isDev, $.rev.font()
    .pipe $.flatten()
    .pipe gulp.dest PROP.path.fonts("dest")
