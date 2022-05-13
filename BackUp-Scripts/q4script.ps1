Set-Location .\..\BackUp\Q4

kubectl cp nifi-0:data/flow_configuration/flow.xml.gz ./flow.xml.gz --namespace=q4-ns-nifi-app
Write-Output "q4 NiFi Flow copied"
kubectl cp nifi-0:data/conf/users.xml ./users.xml --namespace=q4-ns-nifi-app
Write-Output "q4 NiFi Users copied"
kubectl cp nifi-0:data/conf/authorizations.xml ./authorizations.xml --namespace=q4-ns-nifi-app
Write-Output "q4 NiFi authorizations copied"

kubectl cp nifi-registry-0:data/conf/users.xml ./users-reg.xml --namespace=q4-ns-nifi-app
Write-Output "q4 NiFi registry users copied"
kubectl cp nifi-registry-0:data/conf/authorizations.xml ./authorizations-reg.xml --namespace=q4-ns-nifi-app
Write-Output "q4 NiFi registry authorizations copied"