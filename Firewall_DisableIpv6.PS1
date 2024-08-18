
# Synopsis : This script creates firewall rules to block specific IPv6-related protocols. 
# Created by : Dakhama Mehdi
# Version : 1.0
# Date : 08/2024


# List of protocol numbers to use for creating rules
    $protocolNumbers = @{
    '41' = 'IPv6'
    '43' = 'Route Header'
    '44' = 'Fragment Header'
    '58' = 'ICMPv6'
    '59' = 'No Next Header'
    '60' = 'Destination Options'
}

# Loop through each protocol number in the dictionary
foreach ($nprotocole in $protocolNumbers.Keys) {
    
    $protocolName = $protocolNumbers[$nprotocole]

    New-NetFirewallRule -DisplayName "No-ipv6 Protocol $protocolName Inbound" -Direction Inbound -Action Block -Protocol $nprotocole -LocalPort Any -RemotePort Any
    New-NetFirewallRule -DisplayName "No-ipv6 Protocol $protocolName Outbound" -Direction Outbound -Action Block -Protocol $nprotocole -LocalPort Any -RemotePort Any
}
