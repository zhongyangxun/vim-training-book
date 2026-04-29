" Vim 训练书推荐配置 - 适合 Cursor 环境
" 将此文件内容复制到 ~/.vimrc 或 Cursor 的 Vim 设置中
" 或在 Cursor 中通过 :source 此文件测试

set nocompatible              " 关闭 vi 兼容模式
filetype plugin indent on     " 启用文件类型检测、插件和缩进

" === 基础外观与行为 ===
set number                    " 显示绝对行号
set relativenumber            " 显示相对行号 (与 number 配合超实用)
set cursorline                " 高亮当前行
set showmatch                 " 高亮匹配括号
set wildmenu                  " 命令行补全菜单
set ruler                     " 显示光标位置

" === 搜索与大小写 ===
set ignorecase                " 搜索忽略大小写
set smartcase                 " 智能大小写 (有大写时区分)
set incsearch                 " 增量搜索
set hlsearch                  " 高亮搜索结果
nnoremap <leader><space> :nohlsearch<CR>  " 清除高亮

" === 编辑体验 ===
set expandtab                 " Tab 转空格
set tabstop=4
set softtabstop=4
set shiftwidth=4
set autoindent                " 自动缩进
set smartindent

" === 提升效率映射 ===
" jj 快速退出插入模式 (非常推荐)
inoremap jj <Esc>

" 保存快捷键
nnoremap <leader>w :w<CR>
nnoremap <leader>q :q<CR>
nnoremap <leader>x :x<CR>

" 窗口导航简化
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" 快速 buffer 切换
nnoremap <leader>b :buffers<CR>:buffer<Space>

" === Text Objects 增强 (如果没有插件) ===
" 更多 text objects 可通过插件实现

" === 折叠 ===
set foldmethod=indent
set foldlevel=99              " 默认不折叠

" === Cursor 特定优化 ===
" 在 Cursor 中，LSP 和补全通常由扩展提供
" 以下设置有助于更好的 Vim 体验
set backspace=indent,eol,start
set laststatus=2
set scrolloff=8               " 光标保持 8 行距离

" === 状态栏简单定制 ===
set statusline=%f\ %h%w%m%r\ %=%-14.(%l,%c%V%)\ %P

" === 常用自动命令 ===
augroup vim_training
  autocmd!
  " Markdown 文件特定设置
  autocmd FileType markdown setlocal spell spelllang=en,cn
augroup END

" 欢迎信息
echo "Vim 训练配置已加载！使用 :help vim-training 查看更多。坚持练习 motions 和 macros！"
echo "推荐每天练习 15 分钟，2 周后你会感受到明显提升。"

" 本文件可作为起点，根据个人习惯进一步定制。
" 进阶可安装 vim-plug 并添加 surround.vim, vim-fugitive 等插件。
