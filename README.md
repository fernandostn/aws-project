# aws-terraform

## Objetivo
Este repositório tem por objetivo apresentar uma arquitetura AWS criada através de IaaC, mas precisamente utilizando o Terraform para seu provisionamento.

![AWS Architecure - v1](./images/aws-architecture-v1.jpg)

## Detalhamento
Na primeira versão desta arquitetura teremos:
- Uma zona DNS criada no Route 53
- Um Application Load Balance para o balanceamento das requisições
- Um Auto Scaling Group para provisionamento automático das instâncias EC2
- Um banco RDS com uma réplica de escrita e outra de leitura (alta disponibilidade)
- Uma VPC
- Duas subnets públicas, uma em cada zona de disponibilidade
- Duas subnets privadas para recursos de computação, uma em cada zona de disponibilidade
- Duas subnets privadas para recursos de banco de dados, uma em cada zona de disponibilidade
- Um Internet Gateway para acesso à Internet
- Um NAT Gateway para acesso à Internet a partir das subnets privadas

## Módulos Terraform