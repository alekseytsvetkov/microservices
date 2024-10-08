package grpc

import (
	"context"
	"github.com/alekseytsvetkov/microservices/apps/user/internal/config"
	pb "github.com/alekseytsvetkov/microservices/proto/user"
	"go.uber.org/fx"
	"google.golang.org/grpc"
	"net"
)

func Run(lc fx.Lifecycle, cfg *config.Config, server *Server) {
	listener, _ := net.Listen(cfg.GRPC.Server.Network, cfg.GRPC.Server.Address)

	svr := grpc.NewServer()

	pb.RegisterUserServiceServer(svr, server)

	lc.Append(fx.Hook{
		OnStart: func(_ context.Context) error {
			go svr.Serve(listener)
			return nil
		},
		OnStop: func(_ context.Context) error {
			svr.GracefulStop()
			return nil
		},
	})
}
