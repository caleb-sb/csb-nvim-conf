local status, onedark = pcall(require, "onedark")
if not status then return end

onedark.setup({
  style = "deep",
  transparent = false,
  code_style = {
    comments = "italic",
    variables = "bold",
    functions = "bold",
    strings = "none",
    keywords = "italic",
  }
})

onedark.load()
