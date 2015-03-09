gulp        = require "gulp"
gutil       = require "gulp-util"
jshint      = require "gulp-jshint"
sass        = require "gulp-sass"
browserify  = require "browserify"
source      = require "vinyl-source-stream"
coffee      = require "gulp-coffee"
htmlreplace = require "gulp-html-replace"

log = console.log.bind console

gulp.task 'default', ->
  gutil.log "No default task is set. See gulpfile."

gulp.task "copyHtml", ->
  gulp.src("source/*.html").pipe(gulp.dest "public")

gulp.task "jshint", ->
  gulp.src "source/js/**/*.js"
    .pipe jshint()
    .pipe jshint.reporter "jshint-stylish"

gulp.task "buildcss", ->
  gulp.src("source/scss/**/*.scss")
    .pipe sass()
    .pipe(gulp.dest "public/assets/css" )

gulp.task "watch", ->
  gulp.watch("source/js/**/*.js", ["jshint"])
  gulp.watch("source/scss/**/*.scss", ["buildcss"])

gulp.task "hotcoffee", ->
  log "Brewing..."
  gulp.src "source/**/*.coffee"
    .pipe(coffee(bare: true).on("error", gutil.log))
    .pipe(gulp.dest "source")

gulp.task "browserify", ->
  browserify "./source/js/app.js"
    .bundle()
    .pipe(source "bundle.js")
    .pipe(gulp.dest "public/js")

gulp.task "htmlreplace", ->
  gulp.src "index.html"
    .pipe htmlreplace(
      "js": "public/js/bundle.js"
    )
    .pipe(gulp.dest "")

gulp.task "watch", ->
  gulp.watch "source/**/*.coffee", ["hotcoffee", "browserify"]
