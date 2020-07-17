Clear-Host
cd \Windows\System32\inetsrv

$localhost = .\appcmd.exe list vdir

Write-Host
Foreach($lc in $localhost)
{
Write-warning "$lc"
}
Write-Host

Write-Host -NoNewLine 'Press any key to continue...';
$null = $Host.UI.RawUI.ReadKey('NoEcho,IncludeKeyDown');

#REM .\appcmd.exe set vdir "site" -physicalPath:"fullpath"