package main

import (
	"fmt"
	"github.com/joho/godotenv"
)

func main() {
	err := godotenv.Load(fmt.Sprintf("../../config/.env"))
	if err != nil {
		fmt.Println(err)
	}
}