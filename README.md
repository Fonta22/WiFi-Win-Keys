# WiFi-Win-Keys
Tool to get the **activation key**, **SSID profiles** and **IP addresses** of a Windows computer.

## Usage

Run `main.bat`.

This will export the **SSID profiles** in **XML files**, and run `payload.vbs`, a *VBS script* which stores the **IP addresses** of the computer inside `ip.prop`, and the **Windows activation key** inside `keys.csv`.

After that, it zips all those files inside a **zip file** with the computer's name as filename.

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