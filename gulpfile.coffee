gulp   = require "gulp"
gutil  = require "gulp-util"
jshint = require "gulp-jshint"
sass   = require "gulp-sass"

gulp.task 'default', ->
  gutil.log "Gulp is running"

gulp.task "copyHtml", ->
  gulp.src("source/*.html").pipe(gulp.dest('public'))

gulp.task "jshint", ->
  gulp.src('source/js/**/*.js')
    .pipe jshint()
    .pipe jshint.reporter "jshint-stylish"



gulp.task "buildCss", ->
  gulp.src('source/scss/**/*.scss')
    .pipe(sass())
    .pipe(gulp.dest('public/assets/css'))

gulp.task "watch", ->
  gulp.watch('source/js/**/*.js', ['jshint'])
  gulp.watch('source/scss/**/*.scss', ['buildCss'])
