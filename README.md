TeamCity Test Runner script
---------------------------


A tiny `bash` script to run test programs and report result to TeamCity via Service Messages.

The script scans `test` folder near it's own location and start every file in there. Zero exit code
means test success, failure otherwise. Tests are named after file names. 

License
-------

MIT.

You may just use it the way you like.


