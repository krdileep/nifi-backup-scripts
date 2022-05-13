Set-Location .\..\BackUp\D2
kubectl cp ./flow.xml.gz nifi-0:data/flow_configuration/ --namespace=d2-ns-nifi-app
Write-Output "Imported d2 NiFi Flows"
kubectl cp ./users.xml nifi-0:data/conf/ --namespace=d2-ns-nifi-app
Write-Output "Imported d2 NiFi Users"
kubectl cp ./authorizations.xml nifi-0:data/conf/ --namespace=d2-ns-nifi-app
Write-Output "Imported d2 NiFi Authorizations"

kubectl cp ./users-reg.xml nifi-registry-0:data/conf/users.xml --namespace=d2-ns-nifi-app
Write-Output "Imported d2 NiFi Registry Users"

kubectl cp ./authorizations-reg.xml nifi-registry-0:data/conf/authorizations.xml --namespace=d2-ns-nifi-app
Write-Output "Imported d2 NiFi Registry Authorizations"