# home-assistant config
My current home-assistant configuration. This is a work in progress, and the configs may contain errors.

## Devices controlled by or included in home-assistant
* Raspberry Pi
* Broadlink RM Mini 3 Universal IR Controller
* Sonos Play:5
* Amazon Echo
* Amazon Echo Dot
* Amazon Tap
* NVIDIA Shield with Kodi
* 1st Gen Chromecast
* 2nd Gen Apple TV
* LG TV
* Pioneer Receiver
* Samsung A/C
* 4x D-Link DCS-932L Cameras
* 2x TP-Link NC250 Cameras
* D-Link DCS-4602EV Camera
* QNAP NAS
* DIY Multisensor (BRUH edition: https://www.youtube.com/watch?v=jpjfVc-9IrQ&t=2s)
* Netatmo Weather Station
* MiLight Wifi Bridge
 * 4 Milight RGBWW bulbs
 * 1 Milight RGBW led strip controller

### 433Mhz
* Tellstick Duo with extra antenna
* 2x Nexa LMST-606 Door Magnets
* 2x Nexa LMDT-609 Indoor PIR Sensors
* 5x Nexa CMR-101 Built-in Dimmers
* 4x Nexa EYCR-2300 On/Off Switches
* 6x Nexa EYCR-201 Dimmer Switches
* 2x Nexa LWST-605 Lightswitches
* 4x Oregon Scientific Temperature/Hygrometer Sensors
* 2x Nexa IPT-1502 double lightswitches

### Z-wave
* Aeon Labs ZW090 Z-Stick Gen5
* 4x Fibaro FGMS001-ZW5 Motion Sensor
* 5x Fibaro FGWPE/F Wall Plug
* 2x Aeon Labs DSB29 Door/Window Sensor
* Nexa AD147 Plug-in Dimmer Module
* Nexa AN180 Plug-in ON/OFF Module

## TODO
- [ ] Bluetooth tracker on raspberry Pi
- [x] Facial recognition porch
- [ ] TTS if front door has been open for more than 1 hour
- [ ] Email from porch cam if movement detected when nobody home
- [x] Turn off TV and stereo (if on) when sleep now button is pressed
- [ ] Put the house in standby mode if nobody is home (at least turn off TV and dim some lights if on)
- [ ] Add "Away"-button. If pressed, house will go to stand-by mode

## Future
- [ ] Add z-wave door lock
- [ ] Unlock door if both bluetooth tracker detected and facial recognition positive

## Notes
### OZWCP
```
service hassd stop
cd ~/open-zwave-control-panel
./ozwcp -p 8888
Device: /dev/ttyACM0
cp zwcfg_0xc930bed8.xml /var/opt/homeassistant/
service hassd start
```

### Aeon Labs DSB29
Had some problems with these as they kept falling asleep without waking up again. 
The fix was to set the report type to 16 (for some reason). Now they are working like a charm.

### Useful links I need to check out
* https://community.home-assistant.io/t/presence-detection-with-multiple-devices-multiple-trackers/4335
* https://community.home-assistant.io/t/alarm-clock-with-sonos-philips-hue/23421
* https://community.home-assistant.io/t/follow-me-lights-automation-implementation/29139
* https://community.home-assistant.io/t/turn-off-the-switch-when-power-is-less-than-x-for-given-time/29106
* https://community.home-assistant.io/t/aeon-labs-z-wave-door-window-sensor/403/24
