//
//  MQTTConnection.swift
//  MQTTConnection
//
//  Created by Grant Coleman on 2/10/22.
//

import Foundation
import Moscapsule


class ConnectToKeg {
    func sendSignal() {
        // set MQTT Client Configuration
        let mqttConfig = MQTTConfig(clientId: "cid", host: "192.168.1.30", port: 1883, keepAlive: 60)
        mqttConfig.onConnectCallback = { returnCode in
            NSLog("Return Code is \(returnCode.description)")
        }
        mqttConfig.onMessageCallback = { mqttMessage in
            NSLog("MQTT Message received: payload=\(mqttMessage.payloadString)")
        }

        // create new MQTT Connection
        let mqttClient = MQTT.newConnection(mqttConfig)

        // publish and subscribe
        mqttClient.publish(string: "message123", topic: "mqtt/tester", qos: 1, retain: true)
        //mqttClient.subscribe("subscribe/topic", qos: 2)

        // disconnect
        mqttClient.disconnect()
    }
}
