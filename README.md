# WiFi-Win-Keys
Tool to get the **activation key**, **SSID profiles** and **IP addresses** of a Windows computer.

## Usage
Running `main.bat` will export the **SSID profiles** in **XML files** and execute `payload.vbs`, a *VBS script* which extracts the **IP addresses** and the **Windows activation key** of the deivice.

Once all the data is stored in different files, they all get zipped in a **zip file** with the computer's name as filename.

### Example
#### Zip file
```
📂<COMPUTER NAME>.zip
┣ 📜ip.prop
┣ 📜keys.csv
┣ 📜Wi-Fi-WIFI_1.xml
┣ 📜Wi-Fi-WIFI_2.xml
┗ 📜Wi-Fi-WIFI_3.xml
```

#### ip.prop
```
public=X.X.X.X
private=192.168.X.X
computerName=<COMPUTER NAME>
```

#### keys.csv
| OS                        | Key                           |
|---------------------------|-------------------------------|
| Microsoft Windows 10 Home | XXXXX-XXXXX-XXXXX-XXXXX-XXXXX |
