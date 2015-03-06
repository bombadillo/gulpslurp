var gulp   = require('gulp'),
    gutil  = require('gulp-util'),
    jshint = require('gulp-jshint'),
    sass   = require('gulp-sass');

gulp.task('default', function() {
  return gutil.log('Gulp is running');
});

gulp.task('copyHtml', function() {
  gulp.src('source/*.html').pipe(gulp.dest('public'));
});

gulp.task('jshint', function() {
  return gulp.src('source/js/**/*.js')
    .pipe(jshint())
    .pipe(jshint.reporter('jshint-stylish'));
});

gulp.task('buildCss', function() {
  return gulp.src('source/scss/**/*.scss')
    .pipe(sass())
    .pipe(gulp.dest('public/assets/css'));
});

gulp.task('watch', function() {
  gulp.watch('source/js/**/*.js', ['jshint']);
  gulp.watch('source/scss/**/*.scss', ['buildCss']);
});
