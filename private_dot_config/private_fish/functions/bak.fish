function bak --description 'Backups input files into timestamped copies'
    for file in $argv
	if test -f $file
           set current_date (date +%Y-%m-%d_%H-%M-%S)
           set newfile (string join '' $file . $current_date)
           echo Copying \'$file\' into \'$newfile\'
           cp --no-clobber $file $newfile
        else
           echo \'$file\' is not a file, therefore not backup.
        end
    end
end
