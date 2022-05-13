Set-Location .\..\BackUp\D1
kubectl cp ./flow.xml.gz nifi-0:data/flow_configuration/ --namespace=d1-ns-nifi-app
Write-Output "Imported D1 NiFi Flows"
kubectl cp ./users.xml nifi-0:data/conf/ --namespace=d1-ns-nifi-app
Write-Output "Imported D1 NiFi Users"
kubectl cp ./authorizations.xml nifi-0:data/conf/ --namespace=d1-ns-nifi-app
Write-Output "Imported D1 NiFi Authorizations"

kubectl cp ./users-reg.xml nifi-registry-0:data/conf/users.xml --namespace=d1-ns-nifi-app
Write-Output "Imported D1 NiFi Registry Users"

kubectl cp ./authorizations-reg.xml nifi-registry-0:data/conf/authorizations.xml --namespace=d1-ns-nifi-app
Write-Output "Imported D1 NiFi Registry Authorizations"