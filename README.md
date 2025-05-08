# Generate a custom license 

1. required ```pip install cryptography``` on the Host or in the Container

2. ```license.lic``` file should be located in _/usr/share/app/license_ or in another folder mounted to app container (```-v /path/to/license:/license```)

3. ```create_license.sh``` - script creates license automatically (must be run on the target host)

4. ```create_license_input.sh``` - script creates license from the given UUID ( ```sudo dmidecode -t 1|grep UUID``` )

https://limewire.com/d/ZFC63#oK55lkaARA
