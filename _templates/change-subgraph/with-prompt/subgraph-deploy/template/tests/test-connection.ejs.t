---
to: deploy/<%= subgraph_name %>/templates/tests/test-connection.yaml
---
apiVersion: v1
kind: Pod
metadata:
  name: "{{ include "<%= subgraph_name %>.fullname" . }}-test-connection"
  labels:
    {{- include "<%= subgraph_name %>.labels" . | nindent 4 }}
  annotations:
    "helm.sh/hook": test
spec:
  containers:
    - name: wget
      image: busybox
      command: ['wget']
      args: ['{{ include "<%= subgraph_name %>.fullname" . }}:{{ .Values.service.port }}']
  restartPolicy: Never
