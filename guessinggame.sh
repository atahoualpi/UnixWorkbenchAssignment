numf=$(ls -l | wc -l)
let numf=$numf-1
response=""

function check_response {
	if [[ $1 -eq $2 ]]
	then
		echo "Congratulations! You found the correct amount of files in the folder!"
	else
		if [[ $1 -gt $2 ]]
		then
			echo "Too high"
		else
			echo "Too low"
		fi
		echo "Try again..."
	fi
}

while [[ $response -ne $numf ]]
do
	echo "Guess number of files in the folder"
	read response
	check_response $response $numf
done
