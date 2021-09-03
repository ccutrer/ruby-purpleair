# PurpleAir Gem

This is a simple gem to pull data from a local PurpleAir sensor, and push it to MQTT.

## Usage

An MQTT bridge is provided to allow easy integration into other systems. You
will need a separate MQTT server running ([Mosquitto](https://mosquitto.org) is
a relatively easy and robust one). The MQTT topics follow the [Homie
convention](https://homieiot.github.io), making them self-describing. If you're
using a systemd Linux distribution, an example unit file is provided in
`contrib/purpleair_mqtt_bridge.service`. So a full example would be (once you have
Ruby installed):

```sh
sudo gem install purpleair
sudo curl https://github.com/ccutrer/ruby-purpleair/raw/main/contrib/purpleair_mqtt_bridge.service -L -o /etc/systemd/system/purpleair_mqtt_bridge.service
<modify the file to pass the correct IP to your sensor, and URI to your MQTT server>
<If you use MQTT authentication you can use the following format to provide login information mqtt://username:password@mqtt.domain.tld >
<Make sure to change the "User" parameters to fit your environnement>
sudo systemctl enable purpleair_mqtt_bridge
sudo systemctl start purpleair_mqtt_bridge
```
