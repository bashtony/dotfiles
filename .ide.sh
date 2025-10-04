#!/bin/bash

DIRETORIO="Projetos/ReactJS/"
VITECONFIG="import { defineConfig } from 'vite';
import tailwindcss from '@tailwindcss/vite';
export default defineConfig({ plugins: [ tailwindcss(), ], })"
INDEXCSS='@import "tailwindcss";'

if [ ! -d "$DIRETORIO" ]; then
  mkdir -p "$DIRETORIO"
fi
cd "$DIRETORIO"

read -p "Nome do projeto: " projeto
if [ -z "$projeto" ]; then
	echo "Nome do projeto não foi fornecido. Saindo..."
	exit 1
fi

if [ -d $projeto ]; then
	cd "$projeto"
	tmux
else
  mkdir $projeto; cd ./$projeto; npm create vite@latest ./; npm install; npm install tailwindcss @tailwindcss/vite
		echo "$VITECONFIG" > vite.config.js
		cd src; echo "$INDEXCSS" > index.css
		cd ../
		tmux
fi
