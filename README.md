# Composer Counter

Current version: `v0.1.5`

A Discourse theme component based on `merefield/discourse-tc-character-count`.

It shows live character counts for composer title and body, with a few extra settings inspired by the official `discourse-characters-required` plugin.

## Features

- Title character count
- Body character count
- `current / minimum` format
- Custom display template, for example `5 / 15` or `还差 10 个字符`
- Red warning while below the minimum
- Optionally hide counts after reaching the minimum
- Toggle title/body counts separately

## Settings

- `composer_counter_hide_when_sufficient`
- `composer_counter_show_title`
- `composer_counter_show_body`
- `composer_counter_template`
  - default: `%{current} / %{minimum}`
  - available placeholders: `%{current}`, `%{minimum}`, `%{remaining}`, `%{count}`
  - examples: `%{current} / %{minimum}`, `还差 %{remaining} 个字符`

## Install

Install as a theme component from the Discourse admin UI using this repository URL:

```text
https://github.com/longlannet/discourse-composer-counter
```


## License

GPL-2.0-or-later. This component is based on [`merefield/discourse-tc-character-count`](https://github.com/merefield/discourse-tc-character-count).
