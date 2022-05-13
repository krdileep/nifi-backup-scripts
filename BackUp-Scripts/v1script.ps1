Set-Location .\..\BackUp\V1

kubectl cp nifi-0:data/flow_configuration/flow.xml.gz ./flow.xml.gz --namespace=v1-ns-nifi-app
Write-Output "v1 NiFi Flow copied"
kubectl cp nifi-0:data/conf/users.xml ./users.xml --namespace=v1-ns-nifi-app
Write-Output "v1 NiFi Users copied"
kubectl cp nifi-0:data/conf/authorizations.xml ./authorizations.xml --namespace=v1-ns-nifi-app
Write-Output "v1 NiFi authorizations copied"

kubectl cp nifi-registry-0:data/conf/users.xml ./users-reg.xml --namespace=v1-ns-nifi-app
Write-Output "v1 NiFi registry users copied"
kubectl cp nifi-registry-0:data/conf/authorizations.xml ./authorizations-reg.xml --namespace=v1-ns-nifi-app
Write-Output "v1 NiFi registry authorizations copied"