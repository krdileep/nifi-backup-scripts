Set-Location .\..\BackUp\D1

kubectl cp nifi-0:data/flow_configuration/flow.xml.gz ./flow.xml.gz --namespace=d1-ns-nifi-app
Write-Output "D1 NiFi Flow copied"
kubectl cp nifi-0:data/conf/users.xml ./users.xml --namespace=d1-ns-nifi-app
Write-Output "D1 NiFi Users copied"
kubectl cp nifi-0:data/conf/authorizations.xml ./authorizations.xml --namespace=d1-ns-nifi-app
Write-Output "D1 NiFi authorizations copied"

kubectl cp nifi-registry-0:data/conf/users.xml ./users-reg.xml --namespace=d1-ns-nifi-app
Write-Output "D1 NiFi registry users copied"
kubectl cp nifi-registry-0:data/conf/authorizations.xml ./authorizations-reg.xml --namespace=d1-ns-nifi-app
Write-Output "D1 NiFi registry authorizations copied"