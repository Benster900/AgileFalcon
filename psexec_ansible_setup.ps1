$jobs=@()

function setup($pc){
  if((Test-Connection -Cn $line -BufferSize 16 -Count 1 -ea 0 -TimeToLive 3 -quiet)){
    .\PsExec.exe \\$line -u student -p student powershell -NoProfile -ExecutionPolicy Bypass -Command "iex ((new-object net.webclient).DownloadString('https://github.com/ansible/ansible/raw/devel/examples/scripts/ConfigureRemotingForAnsible.ps1'))"
  }
}

foreach ($line in Get-Content windows_hosts.txt) {
     Write-Host "starting $line" -fore green
     $sb={ "Running Job on setup($line)" }
     $jobs+=Start-Job -scriptblock $sb -Args $line -Name $line
}

Wait-Job $jobs
$jobs|Receive-Job
