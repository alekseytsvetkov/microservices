package config

import "github.com/ilyakaznacheev/cleanenv"

const PATH = "configs/config.yaml"

type Config struct {
	HTTP struct {
		Address string `yaml:"address"`
	} `yaml:"http"`

	GRPC struct {
		Client struct {
			User struct {
				Address string `yaml:"address"`
			} `yaml:"user"`

			Product struct {
				Address string `yaml:"address"`
			} `yaml:"product"`

			Auth struct {
				Address string `yaml:"address"`
			} `yaml:"auth"`
		} `yaml:"client"`
	} `yaml:"grpc"`

	JWT struct {
		Secret string `yaml:"secret"`
	} `yaml:"jwt"`
}

func New() (*Config, error) {
	var cfg Config

	if err := cleanenv.ReadConfig(PATH, &cfg); err != nil {
		return nil, err
	}

	return &cfg, nil
}
