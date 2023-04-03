

## Edge Device

### rhel4edge
This folder contains and documents the sources used to provision the edge device.

#### RHEL-Commit + Kickstart Webserver Image

The container image to serve the commit.tar and kickstart declaration can be served by
```agsl
    (optional)
    podman pull quay.io/winter/hackfest/edge-kickstart-httpd
    
    podman run -p 8080:80 quay.io/winter/hackfest/edge-kickstart-httpd
```

### edgepos
This folder contains the systemd service generated via podman to serve the Quarkus-native executable
edgepos-Service on the edge device.
The nativ Image can be found at
```agsl
    quay.io/winter/hackfest/edgepos-native:1.0.0
```


## Single Node Openshift on Intel NUC


### Kafka-UI
The Kafka-UI Deployment is generated from the following image via "+Add -> Container-Images" dialogue.
The source Image can be found here:
````agsl
    podman pull quay.io/winter/hackfest/kafka-ui
````

### Quarkus App: mock-sensor
This Application mocks sensor data and writes it to a kafka topic. Source code can be found at
https://github.com/dowinter/hackfest-mock-sensor.git

The Deployment and Build Config was generated via new-app.




## Data Center

All deployed Services should still be accessible in the Data Center, so we did not export all the yamls.
If there is something you need, we are open to help :)

### Virtual Market Backend: Reactive Quarkus w/ Server Sent Events (SSE)
The market manager sources are available at https://github.com/dowinter/hackfest-market-manager
Pipelines and Deployments are generated via new-app

### Virtual Market UI (Angular App)
Sources are available at https://github.com/dowinter/hackfest-virtual-market

The app was built locally and bundled within the market-manager.

### Inventory-Manager (Quarkus App)
Source Code is available at https://github.com/maxkra-viada/qiot-retail-inventory-manager
### Sales-Manager (Quarkus App)
Source Code is available at https://github.com/maxkra-viada/qiot-retail-sales-manager

