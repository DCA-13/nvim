require('luasnip.session.snippet_collection').clear_snippets 'tex'

local ls = require 'luasnip'
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node
local c = ls.choice_node
local d = ls.dynamic_node
local sn = ls.snippet_node
local extras = require 'luasnip.extras'
local rep = extras.rep
local fmt = require('luasnip.extras.fmt').fmt
local fmta = require('luasnip.extras.fmt').fmta

ls.add_snippets('tex', {
  s(
    { trig = 'beg', wordTrig = false },
    fmta(
      [[
\begin{<env>}<interior>\end{<env_rep>}
      ]],
      {
        env = i(1),
        interior = c(2, {
          { t ' ', i(1), t ' ' },
          { t { '', '  ' }, i(1), t { '', '' } },
        }),
        env_rep = rep(1),
      }
    )
  ),
  s({ trig = '=>', wordTrig = false }, t '\\implies'),
  s({ trig = 'iff', wordTrig = false }, t '\\iff'),
  s({ trig = '!>', wordTrig = false }, t '\\mapsto'),
  s({ trig = '->', wordTrig = false }, t '\\to'),
  s({ trig = '<=', wordTrig = false }, t '\\leq'),
  s({ trig = '>=', wordTrig = false }, t '\\geq'),
  s({ trig = '!=', wordTrig = false }, t '\\neq'),
  s({ trig = 'EE', wordTrig = false }, t '\\exists'),
  s({ trig = 'AA', wordTrig = false }, t '\\forall'),
  s({ trig = 'CC', wordTrig = false }, t '\\mathbb{C}'),
  s({ trig = 'RR', wordTrig = false }, t '\\mathbb{R}'),
  s({ trig = 'QQ', wordTrig = false }, t '\\mathbb{Q}'),
  s({ trig = 'ZZ', wordTrig = false }, t '\\mathbb{Z}'),
  s({ trig = 'NN', wordTrig = false }, t '\\mathbb{N}'),
  s({ trig = 'BB', wordTrig = false }, { t '\\mathbb{', i(1), t '}' }),
  s(
    { trig = 'UU', wordTrig = false },
    c(1, {
      { t '\\cup', i(1) },
      { t '\\bigcup', i(1) },
    })
  ),
  s(
    { trig = 'II', wordTrig = false },
    c(1, {
      { t '\\cap', i(1) },
      { t '\\bigcap', i(1) },
    })
  ),
  s({ trig = 'tq', wordTrig = false }, t '\\ \\big/\\ '),
  s(
    { trig = 'sum', wordTrig = false },
    c(1, {
      { t '\\sum_{', i(1), t '}^{', i(2), t '}' },
      { t '\\sum_{', i(1), t '}' },
    })
  ),
  s(
    { trig = 'prod', wordTrig = false },
    c(1, {
      { t '\\prod_{', i(1), t '}^{', i(2), t '}' },
      { t '\\prod_{', i(1), t '}' },
    })
  ),
  s(
    { trig = 'int', wordTrig = false },
    c(1, {
      { t '\\int_{', i(1), t '}^{', i(2), t '}' },
      { t '\\int ' },
    })
  ),
  s({ trig = 'frac', wordTrig = false }, { t '\\frac{', i(1), t '}{', i(2), t '}' }),
  s({ trig = 'lim', wordTrig = false }, { t '\\lim_{', i(1), t '}' }),
  s({ trig = 'int', wordTrig = false }, { t '\\int_{', i(1), t '}^{', i(2), t '}' }),
  s({ trig = 'norm', wordTrig = false }, { t '\\Vert', i(1), t '\\Vert' }),
  s({ trig = 'sin', wordTrig = false }, { t '\\sin(', i(1), t ')' }),
  s({ trig = 'cos', wordTrig = false }, { t '\\cos(', i(1), t ')' }),
  s({ trig = 'tan', wordTrig = false }, { t '\\tan(', i(1), t ')' }),
  s({ trig = 'cal', wordTrig = false }, { t '\\mathcal{', i(1), t '}' }),
  s({ trig = 'frak', wordTrig = false }, { t '\\mathfrak{', i(1), t '}' }),
  s({ trig = 'scr', wordTrig = false }, { t '\\mathscr{', i(1), t '}' }),
  s({ trig = 'mm', wordTrig = false }, { t { '\\[', '  ' }, i(1), t { '', '\\]' } }),
  s({ trig = '<>', wordTrig = false }, { t '\\langle', i(1), t '\\rangle' }),
  s({ trig = '()', wordTrig = false }, { t '\\left(', i(1), t '\\right)' }),
  s({ trig = '[]', wordTrig = false }, { t '\\left[', i(1), t '\\right]' }),
  s({ trig = '...', wordTrig = false }, { t '\\ldots' }),
  s({ trig = '···', wordTrig = false }, { t '\\cdots' }),
  s({ trig = '""', wordTrig = false }, { t '\\`\\`', i(1), t "''" }),
  s({ trig = 'inv', wordTrig = false }, { t '^{-1}' }),
  s(
    { trig = 'set', wordTrig = false },
    c(1, {
      { t '\\{', i(1), t '\\}' },
      { t '\\left\\{', i(1), t '\\right\\}' },
    })
  ),
  s({ trig = 'part', wordTrig = false }, { t '\\partial' }),
  s({ trig = 'partd', wordTrig = false }, { t '\\frac{\\partial', i(1), t '}{\\partial', i(2), t '}' }),
  s({ trig = 'app', wordTrig = false }, { t ':', i(1), t '\\to' }),
  s({ trig = 'appm', wordTrig = false }, {
    t { '\\begin{align*}', '' },
    i(1),
    t ':',
    i(2),
    t ' & \\to',
    i(3),
    t { '\\\\', '' },
    i(4),
    t ' & \\mapsto',
    i(5),
    t { '', '\\end{align*}' },
  }),
  s({ trig = 'inc', wordTrig = false }, { t ':', i(1), t '\\hookrightarrow' }),
  s({ trig = 'vac', wordTrig = false }, { t '\\emptyset' }),
  s({ trig = 'xx', wordTrig = false }, { t '\\times' }),
  s({ trig = 'l·l', wordTrig = false }, { t '\\lgem ' }),
  s({ trig = '~~', wordTrig = false }, { t '\\widetilde' }),
  s({ trig = 'o+', wordTrig = false }, { t '\\oplus' }),
  s({ trig = '--', wordTrig = false }, { t '\\setminus' }),
  s({ trig = 'ssq', wordTrig = false }, { t '\\subseteq' }),
  s({ trig = 'ssnq', wordTrig = false }, { t '\\subsetneq' }),
  s({ trig = 'snsq', wordTrig = false }, { t '\\nsubseteq' }),
  s({ trig = 'spq', wordTrig = false }, { t '\\supseteq' }),
  s({ trig = 'spnq', wordTrig = false }, { t '\\supsetneq' }),
  s({ trig = 'snpq', wordTrig = false }, { t '\\nsupseteq' }),
  s({ trig = 'bar', wordTrig = false }, { t '\\overline{', i(1), t '}' }),
  s({ trig = 'eps', wordTrig = false }, { t '\\varepsilon' }),
})
