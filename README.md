# 🎨 vim-osaka-solarized-theme

<div align="center">

![Vim](https://img.shields.io/badge/VIM-%2311AB00.svg?style=for-the-badge&logo=vim&logoColor=white)
[![License](https://img.shields.io/badge/license-MIT-blue.svg?style=for-the-badge)](LICENSE)
![Maintenance](https://img.shields.io/maintenance/yes/2024?style=for-the-badge)
![GitHub last commit](https://img.shields.io/github/last-commit/ioksc/vim-osaka-solarized-theme?style=for-the-badge)

**Este tema para Vim esta inspirado en la paleta de colores de [Solarized Osaka](https://github.com/craftzdog/solarized-osaka.nvim), creado [craftzdog](https://github.com/craftzdog).**
He adaptado el tema para ofrecer una experiencia visual atractiva y coherente para Vim, Manteniendo la escencia y estetica del tema original.

[📸 Screenshots](#-screenshots) •
[🚀 Installation](#-installation) •
[⚡ Features](#-features) •
[🎨 Usage](#-usage) •
[💝 Credits](#-credits)

</div>

## 📸 Screenshots

<div align="center">


</div>

## 🚀 Installation

### Usando [vim-plug](https://github.com/junegunn/vim-plug)

```vim
Plug 'ioksc/vim-osaka-solarized-theme'
```
### Instalación manual
```sh
git clone https://github.com/ioksc/vim-osaka-solarized-theme.git
cd vim-osaka-solarized-theme
cp colors/* ~/.vim/colors/
cp autoload/airline/themes/* ~/.vim/autoload/airline/themes/

```

## ⚡ Features
### 🎯 Soporte para diferente plugins
- [GitGutter](https://github.com/airblade/vim-gitgutter)
- [ALE](https://github.com/dense-analysis/ale)
- [NERDTree](https://github.com/preservim/nerdtree)

## 🎨 Usage
### Configuración:

Añade a tu ~/.vimrc:

```vim
" Configurar el tema
colorscheme osaka_solarized

" Configurar airline
let g:airline_theme='solarized_osaka'
```



## 💝 Credits
Este tema está inspirado en:
- [Solarized Osaka](https://github.com/craftzdog/solarized-osaka.nvim)
- [Paleta de Colores](https://www.figma.com/file/6Wp5Puqtz7hbMJgYqOOJzb/Solarized-Osaka?type=design&node-id=0%3A1&mode=design&t=vEaGptGFJOLAafmB-1)

📜 License
Este proyecto está bajo la Licencia MIT - consulta el archivo LICENSE para más detalles.