---
to: deploy/<%= subgraph_name %>/templates/service.yaml
---
apiVersion: v1
kind: Service
metadata:
  name: {{ include "<%= subgraph_name %>.fullname" . }}
  labels:
    {{- include "<%= subgraph_name %>.labels" . | nindent 4 }}
spec:
  type: {{ .Values.service.type }}
  ports:
    - port: {{ .Values.service.port }}
      targetPort: http
      protocol: TCP
      name: http
  selector:
    {{- include "<%= subgraph_name %>.selectorLabels" . | nindent 4 }}
