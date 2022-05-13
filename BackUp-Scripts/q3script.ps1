Set-Location .\..\BackUp\Q3

kubectl cp nifi-0:data/flow_configuration/flow.xml.gz ./flow.xml.gz --namespace=q3-ns-nifi-app
Write-Output "q3 NiFi Flow copied"
kubectl cp nifi-0:data/conf/users.xml ./users.xml --namespace=q3-ns-nifi-app
Write-Output "q3 NiFi Users copied"
kubectl cp nifi-0:data/conf/authorizations.xml ./authorizations.xml --namespace=q3-ns-nifi-app
Write-Output "q3 NiFi authorizations copied"

kubectl cp nifi-registry-0:data/conf/users.xml ./users-reg.xml --namespace=q3-ns-nifi-app
Write-Output "q3 NiFi registry users copied"
kubectl cp nifi-registry-0:data/conf/authorizations.xml ./authorizations-reg.xml --namespace=q3-ns-nifi-app
Write-Output "q3 NiFi registry authorizations copied"