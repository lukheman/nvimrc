## Apa ini?

Ini adalah konfigurasi NeoVim yang terinspirasi oleh [@bandithijo](https://github.com/bandithijo/nvimrc).Perlu diketahui juga kalau konfigurasi ini dibuat khusus untuk digunakan di Android (Termux)

## Cara menggunakan

> Pasang [vim-plug](https://github.com/junegunn/vim-plug) (plugin manager)

> Cloning repo ini

```sh
$ git clone https://github.com/pandas-id/nvimrc $HOME/.config/nvim
```

> Pasang plugin

- Masuk ke NeoVim

```
$ nvim
```

- Beralih ke mode Normal dengan menekan tombol <kbd>ESC</kbd>
- Masuk ke mode perintah dengan menekan tombol <kbd>:</kbd> (titik dua)
- Mulai memasang plugin dengan perintah `PlugInstall`

![PlugInstall](https://github.com/pandas-id/nvimrc/image/gif/VID_20210413182419.gif)

Harap tunggu sampai semua proses pemasangan plugin selesai.

Plugin yang dipasang akan tersimpan di **$HOME/.local/share/nvim/plugged**

## Keybinds

**MODE**:
**N**: Normal, **I**: Insert, **C**: Command

| Fungsi                        | Mode | Key                                        |
|-------------------------------|------|--------------------------------------------|
| Leader                        | N    | <kbd>space</kbd>                           |
| Local leader                  | N    | <kbd>space</kbd>                           |
| Source vimrc                  | N    | <kbd>space</kbd> <kbd>s</kbd> <kbd>o</kbd> |
| NERDTree                      | N    | <kbd>ctrl</kbd> <kbd>n</kbd>               |
| Tabnew                        | N    | <kbd>ctrl</kbd> <kbd>t</kbd>               |
| Save change                   | N    | <kbd>s</kbd> <kbd>s</kbd>                  |
| FZF `:Buffers`                | N    | <kbd>ctrl</kbd> <kbd>p</kbd>               |
| FZF `:Files`                  | N    | <kbd>ctrl</kbd> <kbd>p</kbd>               |
| Buffer next                   | N    | <kbd>space</kbd> <kbd>n</kbd>              |
| Buffer previous               | N    | <kbd>space</kbd> <kbd>n</kbd>              |
| Buffer clone                  | N    | <kbd>space</kbd> <kbd>b</kbd> <kbd>d</kbd> |
| Strip all trailing whitespace | N    | <kbd>ctrl</kbd> <kbd>w</kbd>               |
| Easy align                    | N    | <kbd>g</kbd> <kbd>a</kbd>                  |
| Run python script             | N    | <kbd>r</kbd> <kbd>r</kbd>                  |

