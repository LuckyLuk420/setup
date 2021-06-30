# KODI

`~# apt update && apt install kodi kodi-inputstream-adaptive`  
`~$ touch ~/.kodi/userdata/advancedsettings.xml`
```
<advancedsettings>
    <services>
        <esallinterfaces>true</esallinterfaces>
        <webserver>true</webserver>
        <zeroconf>true</zeroconf>
    </services>
</advancedsettings>
```

## Netflix Plugin  
### Dependencies
`~$ apt install build-essential python-pip python-setuptools libnss3 kodi-inputstream-adaptive`  
`~$ pip install wheel pycryptodomex`

### Activate Adaptive Input Stream
> Add-ons browser > My add-ons > VideoPlayer > InputStream Adaptive

### Add Repository
* Download
  
  > KODI 18: `~# wget https://github.com/castagnait/repository.castagnait/raw/master/repository.castagnait-1.0.1.zip`  
  
  > KODI 19: `~# wget https://github.com/castagnait/repository.castagnait/raw/matrix/repository.castagnait-1.0.0.zip`

* Install
> Add-ons browser > Install from zip `repository.castagnait-1.0.x.zip`  
> Add-ons browser > Install from repository > CastagnaIT > Netflix

### Login
* Login and install vinevim
