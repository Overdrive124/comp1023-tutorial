# The contents of the file are stored in a variable
$Content = Get-Content -Path 'textfiles/test.txt'

# If the test file contains what we want it to, it passes the check, write a successs message and succeed
if ($Content -match 'Fish') {
    Write-Output "Test file check passed"
    exit 0
}
# If it didn't pass the test than it must have failed, write an error message and fail
else {
    Write-Output "Test file check failed"
    exit 1
}
