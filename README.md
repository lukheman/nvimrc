### Apa ini?

Ini adalah konfigurasi NeoVim yang terispirasi dari @[bandithijo](https://github.com/bandithijo/nvimrc).Perlu diketahui juga bahwa konfigurasi ini dibuat khusus untuk digunakan di Android (Termux)

### Cara pemasangan

Cloning repo ini

```
git clone https://github.com/pandas-id/nvimrc $HOME/.config/nvim
```

Pasang plugin

- Pasang plugin manager
    > Di sini saya menggunakan [vim-plug](https://github.com/junegunn/vim-plug).Jadi silahkan lihat cara pemasangan vim-plug di repository aslinya.
- Masuk ke NeoVim dengan memasukan perintah `nvim` di Termux lalu tekan <kbd>enter</kbd>
- Beralih ke mode perintah dengan tombol <kbd>:</kbd>
- Masukan perintah `PlugInstall`

![](https://github.com/pandas-id/nvimrc/blob/master/image/gif/VID_20210413182419.gif)

Harap tunggu sampai semua proses instalasi selesai.
Plugin di pasang di folder **$HOME/.local/share/nvim/plugged**.

### Plugin

| Fungsi         | Plugin                                                                |
|----------------|-----------------------------------------------------------------------|
| Plugin Manager | [vim-plug](https://github.com/junegunn/vim-plug)                      |
| File Manager   | [nerdtree](https://github.com/preservim/nerdtree)                     |
| Status Line    | [lightline](https://github.com/itchyny/lightline.vim)                 |
| Status Line    | [lightline](https://github.com/itchyny/lightline.vim)                 |
| Colorscheme    | [vim-code-dark](https://github.com/tomasiser/vim-code-dark)           |
| Icon           | [vim-devicons](https://github.com/ryanoasis/vim-devicons)             |
| Git            | [vim-signify](https://github.com/mhinz/vim-signify)                   |
| Auto Complete  | [coc.nvim](https://github.com/neoclide/coc.nvim)                      |
| Lainnya        | [init.d/plugin.vim](https://github.com/pandas-id/nvimrc/blob/master/init.d/plugin.vim)