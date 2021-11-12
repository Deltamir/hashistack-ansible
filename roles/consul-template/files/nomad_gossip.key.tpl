{{ with secret "kv/nomad/config/encryption" }}
{{ .Data.key}}
{{ end }}
