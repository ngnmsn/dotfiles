-- ============================================================================
-- 基本設定
-- ============================================================================

local opt = vim.opt

-- ============================================================================
-- 表示設定
-- ============================================================================

-- 行番号を表示
opt.number = true
-- 相対行番号を表示（現在行からの距離）
opt.relativenumber = true

-- カーソル行をハイライト
opt.cursorline = true

-- サインカラム（左端のマーカー領域）を常に表示
opt.signcolumn = "yes"

-- コマンドラインの高さ
opt.cmdheight = 1

-- スクロール時の余白行数
opt.scrolloff = 8
opt.sidescrolloff = 8

-- 不可視文字の表示
opt.list = true
opt.listchars = {
  tab = "→ ",
  trail = "·",
  extends = "»",
  precedes = "«",
  nbsp = "␣"
}

-- 行の折り返し
opt.wrap = true
opt.linebreak = true -- 単語の途中で折り返さない

-- ============================================================================
-- 編集設定
-- ============================================================================

-- タブとインデント
opt.tabstop = 4        -- タブ文字の表示幅
opt.shiftwidth = 4     -- 自動インデントの幅
opt.softtabstop = 4    -- タブキー押下時の挿入幅
opt.expandtab = true   -- タブをスペースに展開
opt.smartindent = true -- スマートインデント
opt.autoindent = true  -- 自動インデント

-- クリップボード統合（システムクリップボードと連携）
opt.clipboard = "unnamedplus"

-- バックスペースの挙動
opt.backspace = "indent,eol,start"

-- アンドゥファイルを保存（再起動後もアンドゥ可能）
opt.undofile = true
opt.undolevels = 10000

-- スワップファイルとバックアップ
opt.swapfile = false
opt.backup = false
opt.writebackup = false

-- 更新時間（ミリ秒）
opt.updatetime = 250

-- タイムアウト時間
opt.timeoutlen = 300

-- ============================================================================
-- 検索設定
-- ============================================================================

-- 検索時の大文字小文字を無視
opt.ignorecase = true
-- 大文字を含む場合は区別する
opt.smartcase = true

-- インクリメンタルサーチ
opt.incsearch = true

-- 検索結果をハイライト
opt.hlsearch = true

-- ============================================================================
-- ウィンドウ分割
-- ============================================================================

-- 新しいウィンドウを右に開く
opt.splitright = true
-- 新しいウィンドウを下に開く
opt.splitbelow = true

-- ============================================================================
-- その他
-- ============================================================================

-- マウスを有効化
opt.mouse = "a"

-- コマンドライン補完を拡張
opt.wildmenu = true
opt.wildmode = "longest:full,full"

-- ビープ音を無効化
opt.errorbells = false
opt.visualbell = true

-- エンコーディング
opt.encoding = "utf-8"
opt.fileencoding = "utf-8"

-- 自動読み込み
opt.autoread = true

-- 隠れバッファを許可
opt.hidden = true

-- コマンドラインでタブ補完
opt.wildignore = "*.o,*.obj,*.bin,*.dll,*.exe"
opt.wildignore:append("*/.git/*,*/.svn/*,*/__pycache__/*,*/build/**")
opt.wildignore:append("*.jpg,*.png,*.jpeg,*.bmp,*.gif,*.tiff,*.svg,*.ico")
opt.wildignore:append("*.pyc,*.pkl")
opt.wildignore:append("*.DS_Store")
opt.wildignore:append("*.aux,*.bbl,*.blg,*.brf,*.fls,*.fdb_latexmk,*.synctex.gz,*.xdv")

-- ファイル形式検出とインデント設定を有効化
vim.cmd([[
  filetype plugin indent on
  syntax enable
]])

-- カラースキーム（デフォルトのテーマ）
vim.cmd([[
  colorscheme habamax
]])

-- 背景色を暗くする
opt.background = "dark"

-- True color サポート
if vim.fn.has("termguicolors") == 1 then
  opt.termguicolors = true
end
