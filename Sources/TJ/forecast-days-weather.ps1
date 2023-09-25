$client = New-Object System.Net.WebClient
$path = ".\icons"

$i = 0

while ($i -le 44) {
    $num = "{0:00}" -f $i
    $name = $num + ".gif"
    $uri = New-Object System.Uri("https://static.tenki.jp/images/icon/forecast-days-weather/" + $name)
    Write-Host $i $uri
    $client.DownloadFile($uri, (Join-Path $path $name))
    $i += 1
}

$i = 0

while ($i -le 44) {
    $num = "{0:00}" -f $i
    $name = $num + "_n.gif"
    $uri = New-Object System.Uri("https://static.tenki.jp/images/icon/forecast-days-weather/" + $name)
    Write-Host $i $uri
    $client.DownloadFile($uri, (Join-Path $path $name))
    $i += 1
}
