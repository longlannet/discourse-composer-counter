# Composer Counter

Current version: `v0.1.6`

Author: Longlan

A Discourse theme component based on [`merefield/discourse-tc-character-count`](https://github.com/merefield/discourse-tc-character-count).

It shows live character counts for the composer title and body, using Discourse's existing title/body length settings.

## Features

- Title character count
- Body character count
- Default `current / minimum` display
- Custom display template, for example `5 / 15` or `还差 10 个字符`
- Red warning while below the minimum length
- Optionally hide counts after reaching the minimum length
- Toggle title/body counters separately

## Settings

- `composer_counter_hide_when_sufficient`
- `composer_counter_show_title`
- `composer_counter_show_body`
- `composer_counter_template`
  - default: `%{current} / %{minimum}`
  - available placeholders: `%{current}`, `%{minimum}`, `%{remaining}`, `%{count}`
  - examples: `%{current} / %{minimum}`, `还差 %{remaining} 个字符`

## Notes

Composer Counter does not define or enforce its own length limits. It reads the values already calculated by Discourse:

- title length from the composer title model/site settings
- body length from the composer body model/site settings

If you change Discourse's minimum title/body length settings, the counter follows those values automatically.

## Install

Install as a theme component from the Discourse admin UI using this repository URL:

```text
https://github.com/longlannet/discourse-composer-counter
```

## License

GPL-2.0-or-later. This component is based on [`merefield/discourse-tc-character-count`](https://github.com/merefield/discourse-tc-character-count).
