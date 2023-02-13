---
to: deploy/<%= subgraph_name %>/values.yaml
---
replicaCount: 3

image:
  repository: <%= repo_name %>
  pullPolicy: Always
  tag: '<%= default_tag %>'

nameOverride: '<%= subgraph_name %>-app'
fullnameOverride: '<%= subgraph_name %>-chart'

serviceAccount:
  create: false

podAnnotations: {}

securityContext: {}

podSecurityContext: {}

service:
  type: ClusterIP
  port: 4000

ingress:
  enabled: false
  className: ''
  annotations:
  hosts:
    - host: <%= subgraph_name %>.local
      paths:
        - path: /
          pathType: Prefix
  tls: []

resources:
  limits:
    cpu: 100m
    memory: 128Mi
  requests:
    cpu: 100m
    memory: 128Mi

autoscaling:
  enabled: false
  targetCPUUtilizationPercentage: 80
  minReplicas: 1
  maxReplicas: 100


