{{ with secret "kv/consul/config/encryption" }}
{{ .Data.key}}
{{ end }}
