# Mobile Auth UI Design

## Goal

Keep login/signup screens visually consistent across iOS, Android, and web mobile viewport.

## Visual Direction

- Use a bright aqua identity with soft light background.
- Keep a two-layer structure:
1. Hero banner (top illustration area)
2. Elevated auth card (form area)

## Color Tokens

Source of truth is root file: `tailwind.colors.js`.

- `primary`: `#22C7D3`
- `secondary`: `#94A3B8`
- `tertiary`: `#0F172A`
- `accent`: `#0891B2`
- `background`: `#DDF6F8`
- `surface`: `#FFFFFF`
- `error`: `#B91C1C`
- `warning`: `#F59E0B`
- `success`: `#16A34A`
- `info`: `#0EA5E9`

## Layout Rules

- Screen horizontal padding: `18`.
- Hero corner radius: `24`.
- Card corner radius: `24`.
- Card overlaps hero with negative top margin (`-14`).
- Form controls use `14` border radius and minimum touch height >= `44`.
- Keep primary CTA full width.
- Social buttons are 2-column equal width row.

## Typography Rules

- Hero title: `20`, semibold/bold.
- Card title: `26`, extra bold.
- Body/helper text: `12-14`.
- Inputs and CTA labels: semibold for readability.

## Interaction Rules

- Keep login/signup structure equivalent between screens.
- Errors display inline above primary CTA.
- Use identical spacing rhythm:
- Input vertical gap `10`
- Section spacing `14`
- Footer action spacing `10`

## Asset Rules

- Prefer vector/PNG local assets for hero illustration once available.
- During development, temporary remote placeholders are acceptable.

## Consistency Checklist

1. Same tokens on login and signup.
2. Same card width, radius, and elevation.
3. Same input and button sizing.
4. Same link style and social row style.
5. No ad hoc colors outside token list in `tailwind.colors.js`.
