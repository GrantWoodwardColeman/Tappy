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
        let mqttConfig = MQTTConfig(clientId: "cid", host: "test.mosquitto.org", port: 1883, keepAlive: 60)
        mqttConfig.onConnectCallback = { returnCode in
            NSLog("Return Code is \(returnCode.description)")
        }
        mqttConfig.onMessageCallback = { mqttMessage in
            NSLog("MQTT Message received: payload=\(mqttMessage.payloadString)")
        }

        // create new MQTT Connection
        let mqttClient = MQTT.newConnection(mqttConfig)

        // publish and subscribe
        mqttClient.publish(string: "message", topic: "publish/topic", qos: 2, retain: false, requestCompletion: <#T##((MosqResult, Int) -> ())?##((MosqResult, Int) -> ())?##(MosqResult, Int) -> ()#>
        mqttClient.subscribe("subscribe/topic", qos: 2)

        // disconnect
        mqttClient.disconnect()
    }
}
