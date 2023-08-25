function unbak --description 'Copies backup file into original one'
    for file in $argv
        if test -f $file
           set targetfile (string split -r -m 1 . $file | head -1)
           echo Copying \'$file\' into \'$targetfile\'
           cp --backup --suffix=.before_unbak $file $targetfile
        else
           echo \'$file\' is not a file, therefore not processed.
        end
    end
end
