---
to: deploy/<%= subgraph_name %>/templates/serviceaccount.yaml
---
{{- if .Values.serviceAccount.create -}}
apiVersion: v1
kind: ServiceAccount
metadata:
  name: {{ include "<%= subgraph_name %>.serviceAccountName" . }}
  labels:
    {{- include "<%= subgraph_name %>.labels" . | nindent 4 }}
  {{- with .Values.serviceAccount.annotations }}
  annotations:
    {{- toYaml . | nindent 4 }}
  {{- end }}
{{- end }}
