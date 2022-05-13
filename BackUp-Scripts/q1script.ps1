Set-Location .\..\BackUp\Q1

kubectl cp nifi-0:data/flow_configuration/flow.xml.gz ./flow.xml.gz --namespace=q1-ns-nifi-app
Write-Output "q1 NiFi Flow copied"
kubectl cp nifi-0:data/conf/users.xml ./users.xml --namespace=q1-ns-nifi-app
Write-Output "q1 NiFi Users copied"
kubectl cp nifi-0:data/conf/authorizations.xml ./authorizations.xml --namespace=q1-ns-nifi-app
Write-Output "q1 NiFi authorizations copied"

kubectl cp nifi-registry-0:data/conf/users.xml ./users-reg.xml --namespace=q1-ns-nifi-app
Write-Output "q1 NiFi registry users copied"
kubectl cp nifi-registry-0:data/conf/authorizations.xml ./authorizations-reg.xml --namespace=q1-ns-nifi-app
Write-Output "q1 NiFi registry authorizations copied"