$VerbosePreference="Continue"
clear-host
write-host -ForegroundColor yellow -nonewline ("Checking connection to ")
write-host -foregroundcolor cyan -nonewline $env:computername
write-host -ForegroundColor yellow -nonewline (" ... ")
if (Test-Connection $env:computername -count 1) {
write-host -foregroundcolor green ("Pass.")
write-verbose ("host {0} available - send to logfile" -f $env:computername)
} else {
write-host -foregroundcolor red ("Fail.")
write-verbose ("host {0} unavailable - send to logfile" -f $env:computername)
}


