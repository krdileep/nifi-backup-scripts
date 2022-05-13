Set-Location .\..\BackUp\Q1
kubectl cp ./flow.xml.gz nifi-0:data/flow_configuration/ --namespace=q1-ns-nifi-app
Write-Output "Imported q1 NiFi Flows"
kubectl cp ./users.xml nifi-0:data/conf/ --namespace=q1-ns-nifi-app
Write-Output "Imported q1 NiFi Users"
kubectl cp ./authorizations.xml nifi-0:data/conf/ --namespace=q1-ns-nifi-app
Write-Output "Imported q1 NiFi Authorizations"

kubectl cp ./users-reg.xml nifi-registry-0:data/conf/users.xml --namespace=q1-ns-nifi-app
Write-Output "Imported q1 NiFi Registry Users"

kubectl cp ./authorizations-reg.xml nifi-registry-0:data/conf/authorizations.xml --namespace=q1-ns-nifi-app
Write-Output "Imported q1 NiFi Registry Authorizations"