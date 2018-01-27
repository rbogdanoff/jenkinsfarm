'use strict';

const gulp = require('gulp');
const spawn = require('child_process').spawn;

const jenkinsVer = '2.102';

gulp.task('default', defaultTask);

gulp.task('build', function() {
    return spawn('docker', ['build', '-t', 'jenkinsfarm-master', './jenkins'], {stdio: 'inherit'})
});

gulp.task('start', function() {
    return spawn('docker', ['run', '-p', '8080:8080', '--name=jenkins-master', '-d', 'jenkinsfarm-master'], {stdio: 'inherit'})
});

gulp.task('stop', function() {
    return spawn('docker', ['rm', '-f', 'jenkins-master'], {stdio: 'inherit'})
});

gulp.task('list', function() {
    return spawn('docker', ['ps', '-a'], {stdio: 'inherit'})
});

gulp.task('password', function() {
    return spawn('docker', ['exec', 'jenkins-master', 'cat', '/var/jenkins_home/secrets/initialAdminPassword'], {stdio: 'inherit'})
});

function defaultTask(done) {
  // place code for your default task here
  done();
}
