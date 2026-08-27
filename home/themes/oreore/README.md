# 自作テーマ

## palette.nix
### 基本 UI
| 項目 | 意味 |
|---|---|
| `cursor` | カーソルの色 |
| `bg-main` | メインとなる背景色 |
| `bg-dim` | 少し暗くした背景色 |
| `bg-alt` | 代替的に使用する背景色 |
| `fg-main` | メインとなる文字色 |
| `fg-dim` | 控えめ・補助的な文字色 |
| `fg-alt` | 代替的に使用する文字色 |
| `bg-active` | アクティブな UI 要素の背景色 |
| `bg-inactive` | 非アクティブな UI 要素の背景色 |
| `border` | 境界線・枠線の色 |

### 基本色
| 項目 | 意味 |
|---|---|
| `red` | 基本的な赤色 |
| `red-warmer` | 赤より暖色寄りの色。オレンジ・コーラル方向 |
| `red-cooler` | 赤より寒色寄りの色。ピンク・紫方向 |
| `red-faint` | 彩度・明度を抑えた控えめな赤 |
| `green` | 基本的な緑色 |
| `green-warmer` | 緑より暖色寄りの色。黄緑方向 |
| `green-cooler` | 緑より寒色寄りの色。青緑方向 |
| `green-faint` | 彩度・明度を抑えた控えめな緑 |
| `yellow` | 基本的な黄色 |
| `yellow-warmer` | 黄色より暖色寄りの色。橙・茶方向 |
| `yellow-cooler` | 黄色より寒色寄りの色。黄土・ベージュ方向 |
| `yellow-faint` | 彩度・明度を抑えた控えめな黄色 |
| `blue` | 基本的な青色 |
| `blue-warmer` | 青より暖色寄りの色。紫方向 |
| `blue-cooler` | 青より寒色寄りの色。青・青緑方向 |
| `blue-faint` | 彩度・明度を抑えた控えめな青 |
| `magenta` | 基本的なマゼンタ色 |
| `magenta-warmer` | マゼンタより暖色寄り。ピンク・赤方向 |
| `magenta-cooler` | マゼンタより寒色寄り。紫方向 |
| `magenta-faint` | 彩度・明度を抑えた控えめなマゼンタ |
| `cyan` | 基本的なシアン・青緑色 |
| `cyan-warmer` | シアンより暖色寄り。青方向 |
| `cyan-cooler` | シアンより寒色寄り。青緑方向 |
| `cyan-faint` | 彩度・明度を抑えた控えめなシアン |

### Intense Backgrounds
| 項目 | 意味 |
|---|---|
| `bg-red-intense` | 強調用の赤系背景 |
| `bg-green-intense` | 強調用の緑系背景 |
| `bg-yellow-intense` | 強調用の黄色系背景 |
| `bg-blue-intense` | 強調用の青系背景 |
| `bg-magenta-intense` | 強調用のマゼンタ系背景 |
| `bg-cyan-intense` | 強調用のシアン系背景 |

### Subtle Backgrounds
| 項目 | 意味 |
|---|---|
| `bg-red-subtle` | 控えめな赤系背景 |
| `bg-green-subtle` | 控えめな緑系背景 |
| `bg-yellow-subtle` | 控えめな黄色系背景 |
| `bg-blue-subtle` | 控えめな青系背景 |
| `bg-magenta-subtle` | 控えめなマゼンタ系背景 |
| `bg-cyan-subtle` | 控えめなシアン系背景 |

### Git
| 項目 | 意味 |
|---|---|
| `bg-added` | 追加された箇所の背景 |
| `bg-added-faint` | 追加された箇所の控えめな背景 |
| `bg-added-refine` | 追加箇所の詳細な変更部分の背景 |
| `fg-added` | 追加された箇所の文字色 |
| `bg-changed` | 変更された箇所の背景 |
| `bg-changed-faint` | 変更箇所の控えめな背景 |
| `bg-changed-refine` | 変更箇所の詳細部分の背景 |
| `fg-changed` | 変更された箇所の文字色 |
| `bg-removed` | 削除された箇所の背景 |
| `bg-removed-faint` | 削除箇所の控えめな背景 |
| `bg-removed-refine` | 削除箇所の詳細部分の背景 |
| `fg-removed` | 削除された箇所の文字色 |

### UI
| `bg-mode-line-active` | アクティブな Mode Line の背景 |
| `fg-mode-line-active` | アクティブな Mode Line の文字色 |
| `bg-completion` | 補完候補の背景 |
| `bg-popup` | ポップアップ UI の背景 |
| `bg-hover` | マウスホバー時の背景 |
| `bg-hover-secondary` | 2次的なホバー状態の背景 |
| `bg-hl-line` | 現在行のハイライト背景 |
| `bg-paren-match` | 対応する括弧を強調する背景 |
| `bg-err` | エラー表示用の背景 |
| `bg-warning` | 警告表示用の背景 |
| `bg-info` | 情報表示用の背景 |
| `bg-region` | 選択範囲の背景 |

## palette-mapping.nix

### 状態・メッセージ
| 項目 | 意味 |
|---|---|
| `err` | エラー・エラーメッセージ |
| `warning` | 警告・注意メッセージ |
| `info` | 情報メッセージ |

### UI / 一般
| 項目 | 意味 |
|---|---|
| `fg-link` | リンクの文字色 |
| `fg-link-visited` | 訪問済みリンクの文字色 |
| `name` | 名前・名称を表す文字色 |
| `keybind` | キーバインド・キー操作の文字色 |
| `identifier` | 識別子の文字色 |
| `fg-prompt` | プロンプトの文字色 |

### Syntax Highlighting
| 項目 | 意味 |
|---|---|
| `builtin` | 組み込み関数・組み込みシンボル |
| `comment` | コメント |
| `constant` | 定数 |
| `fnname` | 関数定義の名前 |
| `fnname-call` | 関数呼び出し |
| `keyword` | プログラミング言語のキーワード |
| `preprocessor` | プリプロセッサ命令など |
| `docstring` | ドキュメント文字列 |
| `string` | 文字列リテラル |
| `type` | 型 |
| `variable` | 変数 |
| `variable-use` | 変数の使用箇所 |
| `rx-backslash` | 正規表現中のバックスラッシュなどの特殊エスケープ |
| `rx-construct` | 正規表現の特殊構文・構造 |

### Accent
| 項目 | 意味 |
|---|---|
| `accent-0` | 第1アクセントカラー |
| `accent-1` | 第2アクセントカラー |
| `accent-2` | 第3アクセントカラー |
| `accent-3` | 第4アクセントカラー |

### Prose / 文書
| 項目 | 意味 |
|---|---|
| `fg-prose-code` | 文書中のコード |
| `prose-done` | 完了済みのタスク・項目 |
| `fg-prose-macro` | 文書中のマクロ |
| `prose-metadata` | 文書のメタデータ |
| `prose-metadata-value` | メタデータの値 |
| `prose-table` | 文書中の表 |
| `prose-table-formula` | 表中の数式・計算式 |
| `prose-tag` | 文書中のタグ |
| `prose-todo` | TODO・未完了項目 |
| `fg-prose-verbatim` | verbatim / そのまま表示するテキスト |

### Search
| 項目 | 意味 |
|---|---|
| `bg-search-static` | 通常の検索結果の背景 |
| `bg-search-current` | 現在選択されている検索結果の背景 |
| `bg-search-lazy` | 遅延検索で得られた結果の背景 |
| `bg-search-replace` | 置換対象の背景 |
| `bg-search-rx-group-0` | 正規表現検索のグループ0の背景 |
| `bg-search-rx-group-1` | 正規表現検索のグループ1の背景 |
| `bg-search-rx-group-2` | 正規表現検索のグループ2の背景 |
| `bg-search-rx-group-3` | 正規表現検索のグループ3の背景 |
| `bg-space-err` | 不正・不要な空白などのエラー表示背景 |

### Rainbow
| 項目 | 意味 |
|---|---|
| `rainbow-0` | Rainbow Delimiters の第1レベル |
| `rainbow-1` | Rainbow Delimiters の第2レベル |
| `rainbow-2` | Rainbow Delimiters の第3レベル |
| `rainbow-3` | Rainbow Delimiters の第4レベル |
| `rainbow-4` | Rainbow Delimiters の第5レベル |
| `rainbow-5` | Rainbow Delimiters の第6レベル |
| `rainbow-6` | Rainbow Delimiters の第7レベル |
| `rainbow-7` | Rainbow Delimiters の第8レベル |
| `rainbow-8` | Rainbow Delimiters の第9レベル |
