module.exports = (grunt) ->
    grunt.loadNpmTasks "grunt-browserify"
    grunt.loadNpmTasks "grunt-contrib-watch"

    grunt.initConfig {
        browserify:
            source:
                src: ['src/**/*.js', 'src/**/*.coffee']
                options:
                    transform: ["coffeeify"]
                    watch: true
                dest: "public/js/app.js"

        watch:
            source:
                files: ['src/**/*.*']
                tasks: ['browserify']
    }

    grunt.registerTask "default", ["browserify", "watch"]