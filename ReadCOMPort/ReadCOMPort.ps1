
function read-com  {
    
    param (
     [Parameter(Mandatory)]
     $COM
    )

    do{
      $availabe=[System.IO.Ports.SerialPort]::getportnames()
      Write-Progress -Activity "Waiting for $COM Port" -Status "Not found -- Available ports: $availabe"
      $port=[System.IO.Ports.SerialPort]::getportnames() | Select-String -Pattern $COM
    }
    while ($null -eq $port )
    
    "Found Port $COM, Listening started..."
       
    $port= new-Object System.IO.Ports.SerialPort $COM,115200,None,8,one
    $port.Open()
    do {
        $line = $port.ReadLine()
        Write-Host $line # Do stuff here
    }
    while ($port.IsOpen)
}
