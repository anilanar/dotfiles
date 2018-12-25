let b:neomake_javascript_jest_test_maker = {
            \ 'exe': 'node',
            \ 'args': [
                \ './scripts/test.js',
                \ '%t',
                \ '--reporters=jest-simple-reporter',
                \ ],
            \ 'errorformat':
                \ '%f:%l:%c:%t:%m,' .
                \ '%-G%.%#',
            \ 'cwd': getcwd(),
            \ 'append_file': 0,
            \ }

let b:neomake_javascript_jest_enabled_makers = g:neomake_javascript_enabled_makers + ['test']
