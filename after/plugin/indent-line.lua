require("indent_blankline").setup {
  -- for example, context is off by default, use this to turn it on
  show_current_context = true,
  show_current_context_start = true,
  char = "",
  char_highlight_list = {
    "IndentBlanklineIndent5",
    "IndentBlanklineIndent6",
  },
  space_char_highlight_list = {
    "IndentBlanklineIndent5",
    "IndentBlanklineIndent6",
  },
  show_trailing_blankline_indent = false,

  -- show_end_of_line = true,
  -- space_char_blankline = " ",
}
