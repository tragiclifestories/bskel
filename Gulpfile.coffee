gulp = require 'gulp'
browserify = require 'gulp-browserify'
watch = require 'gulp-watch'
karma = require 'gulp-karma'
concat = require 'gulp-concat'
rename = require 'gulp-rename'

gulp.task 'browserify', ->
    gulp.src "src/manifest.coffee", {read: false}
        .pipe(browserify({
            transform: ['coffeeify'], 
            extensions: ['coffee']
        }))
        .pipe(rename('app.js'))
        .pipe(gulp.dest('public/js'))

