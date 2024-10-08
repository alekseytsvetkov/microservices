module github.com/alekseytsvetkov/microservices/apps/gateway

go 1.22.5

replace (
	github.com/alekseytsvetkov/microservices/libs/grpc => ../../libs/grpc
	github.com/alekseytsvetkov/microservices/libs/jwt => ../../libs/jwt
	github.com/alekseytsvetkov/microservices/libs/respond => ../../libs/respond
	github.com/alekseytsvetkov/microservices/proto => ../../proto
)

require (
	github.com/99designs/gqlgen v0.17.49
	github.com/alekseytsvetkov/microservices/libs/grpc v0.0.0-00010101000000-000000000000
	github.com/alekseytsvetkov/microservices/libs/jwt v0.0.0-00010101000000-000000000000
	github.com/alekseytsvetkov/microservices/libs/respond v0.0.0-00010101000000-000000000000
	github.com/alekseytsvetkov/microservices/proto v0.0.0-00010101000000-000000000000
	github.com/google/uuid v1.6.0
	github.com/ilyakaznacheev/cleanenv v1.5.0
	github.com/vektah/gqlparser/v2 v2.5.16
	go.uber.org/fx v1.22.1
	google.golang.org/grpc v1.65.0
)

require (
	github.com/BurntSushi/toml v1.3.2 // indirect
	github.com/agnivade/levenshtein v1.1.1 // indirect
	github.com/cpuguy83/go-md2man/v2 v2.0.4 // indirect
	github.com/golang-jwt/jwt/v5 v5.2.1 // indirect
	github.com/gorilla/websocket v1.5.0 // indirect
	github.com/hashicorp/golang-lru/v2 v2.0.7 // indirect
	github.com/joho/godotenv v1.5.1 // indirect
	github.com/mitchellh/mapstructure v1.5.0 // indirect
	github.com/russross/blackfriday/v2 v2.1.0 // indirect
	github.com/sosodev/duration v1.3.1 // indirect
	github.com/urfave/cli/v2 v2.27.2 // indirect
	github.com/xrash/smetrics v0.0.0-20240521201337-686a1a2994c1 // indirect
	go.uber.org/dig v1.17.1 // indirect
	go.uber.org/multierr v1.10.0 // indirect
	go.uber.org/zap v1.26.0 // indirect
	golang.org/x/mod v0.19.0 // indirect
	golang.org/x/net v0.27.0 // indirect
	golang.org/x/sync v0.7.0 // indirect
	golang.org/x/sys v0.22.0 // indirect
	golang.org/x/text v0.16.0 // indirect
	golang.org/x/tools v0.23.0 // indirect
	google.golang.org/genproto/googleapis/rpc v0.0.0-20240528184218-531527333157 // indirect
	google.golang.org/protobuf v1.34.2 // indirect
	gopkg.in/yaml.v3 v3.0.1 // indirect
	olympos.io/encoding/edn v0.0.0-20201019073823-d3554ca0b0a3 // indirect
)
