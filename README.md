# localstack-host
fork de localstack pour une install sans docker

# Overview

LocalStack spins up the following core Cloud APIs on your local machine:

* **API Gateway** at http://localhost:4567
* **Kinesis** at http://localhost:4568
* **DynamoDB** at http://localhost:4569
* **DynamoDB Streams** at http://localhost:4570
* **S3** at http://localhost:4572
* **Firehose** at http://localhost:4573
* **Lambda** at http://localhost:4574
* **SNS** at http://localhost:4575
* **SQS** at http://localhost:4576
* **Redshift** at http://localhost:4577
* **Elasticsearch Service** at http://localhost:4578
* **SES** at http://localhost:4579
* **Route53** at http://localhost:4580
* **CloudFormation** at http://localhost:4581
* **CloudWatch** at http://localhost:4582
* **SSM** at http://localhost:4583
* **SecretsManager** at http://localhost:4584
* **StepFunctions** at http://localhost:4585
* **CloudWatch Logs** at http://localhost:4586
* **EventBridge (CloudWatch Events)** at http://localhost:4587
* **STS** at http://localhost:4592
* **IAM** at http://localhost:4593
* **EC2** at http://localhost:4597
* **KMS** at http://localhost:4599

## port pod exposition
Le container expose les ports 4567 à 4597 et 8080 or nous n'avons exposé qu'un seul port (4572) au niveau du pod !
Il va donc falloir créer un service pour exposer tous ces ports au niveau du pod.

## Route
La route permet d'exposer une interface web aws mais il faut la lancer manuellement dans le terminal du pod :
```
# localstack web
```
