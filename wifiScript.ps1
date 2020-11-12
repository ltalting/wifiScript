$i = 0
while($i -eq 0){
	$connection = Test-Connection 8.8.8.8 -Count 1 -Quiet
	echo $connection
	if($connection -eq $TRUE) { echo "" } 
	else { netsh wlan disconnect
		netsh wlan connect name=ALTING24 }
	Start-Sleep -s 5
}