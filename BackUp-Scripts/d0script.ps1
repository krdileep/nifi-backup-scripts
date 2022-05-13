Set-Location .\..\BackUp\D0
kubectl cp nifi-0:data/flow_configuration/flow.xml.gz ./flow.xml.gz --namespace=d0-ns-nifi-app
Write-Output "D0 NiFi Flow copied"
kubectl cp nifi-0:data/conf/users.xml ./users.xml --namespace=d0-ns-nifi-app
Write-Output "D0 NiFi Users copied"
kubectl cp nifi-0:data/conf/authorizations.xml ./authorizations.xml --namespace=d0-ns-nifi-app
Write-Output "D0 NiFi authorizations copied"

kubectl cp nifi-registry-0:data/conf/users.xml ./users-reg.xml --namespace=d0-ns-nifi-app
Write-Output "D0 NiFi registry users copied"
kubectl cp nifi-registry-0:data/conf/authorizations.xml ./authorizations-reg.xml --namespace=d0-ns-nifi-app
Write-Output "D0 NiFi registry authorizations copied"