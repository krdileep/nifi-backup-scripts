Set-Location .\..\BackUp\V1
kubectl cp ./flow.xml.gz nifi-0:data/flow_configuration/ --namespace=v1-ns-nifi-app
Write-Output "Imported v1 NiFi Flows for NiFi-Pod1"
kubectl cp ./users.xml nifi-0:data/conf/ --namespace=v1-ns-nifi-app
Write-Output "Imported v1 NiFi Users for NiFi-Pod1"
kubectl cp ./authorizations.xml nifi-0:data/conf/ --namespace=v1-ns-nifi-app
Write-Output "Imported v1 NiFi Authorizations for NiFi-Pod1"


kubectl cp ./flow.xml.gz nifi-1:data/flow_configuration/ --namespace=v1-ns-nifi-app
Write-Output "Imported v1 NiFi Flows for NiFi-Pod2"
kubectl cp ./users.xml nifi-1:data/conf/ --namespace=v1-ns-nifi-app
Write-Output "Imported v1 NiFi Users for NiFi-Pod2"
kubectl cp ./authorizations.xml nifi-1:data/conf/ --namespace=v1-ns-nifi-app
Write-Output "Imported v1 NiFi Authorizations for NiFi-Pod2"


kubectl cp ./flow.xml.gz nifi-2:data/flow_configuration/ --namespace=v1-ns-nifi-app
Write-Output "Imported v1 NiFi Flows for NiFi-Pod3"
kubectl cp ./users.xml nifi-2:data/conf/ --namespace=v1-ns-nifi-app
Write-Output "Imported v1 NiFi Users for NiFi-Pod3"
kubectl cp ./authorizations.xml nifi-2:data/conf/ --namespace=v1-ns-nifi-app
Write-Output "Imported v1 NiFi Authorizations for NiFi-Pod3"


kubectl cp ./users-reg.xml nifi-registry-0:data/conf/users.xml --namespace=v1-ns-nifi-app
Write-Output "Imported v1 NiFi Registry Users"

kubectl cp ./authorizations-reg.xml nifi-registry-0:data/conf/authorizations.xml --namespace=v1-ns-nifi-app
Write-Output "Imported v1 NiFi Registry Authorizations"