package main

import "github.com/gin-gonic/gin"

func router() *gin.Engine {
	engine := gin.New()
	engine.GET("/health", func(context *gin.Context) {
		context.JSON(200, gin.H{"status": "ok"})
	})
	return engine
}

func main() {
	if err := router().Run(":8080"); err != nil {
		panic(err)
	}
}
