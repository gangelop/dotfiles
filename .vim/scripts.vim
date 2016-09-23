if did_filetype()
    finish
endif
if getline(1) =~ 'Hello.*'
    setf case-update
endif
