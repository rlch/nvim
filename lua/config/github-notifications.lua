require('telescope').load_extension 'ghn'

require('github-notifications').setup {
  cache = false,
  debounce_duration = 30,
}
