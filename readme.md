Eray's Bin Directory
===

This project contains utility scripts.

# Utilities

## Disable G300 Keyboard

This utility script is disable automatically `Logitech G300s Optical Gaming Mouse`'s keyboard functionality.

## Feh Background

This utility script is call `feh` with specific background.

## Keyboard Backlight

This utility script change backlight of keyboard. Add `kbd` alias for easy use.

Increase keyboard backlight

```
$ kbd up
```

Decrease keyboard backlight

```
$ kbd down
```

Maximize keyboard backlight

```
$ kbd max
```

or

```
$ kbd on
```

Turn off keyboard backlight

```
$ kbd off
```

Show current keyboard backlight

```
$ kbd show
3
```

Switch to `night` mode on keyboard backlight (switch to level 1)

```
$ kbd night
```

Allow users group for changing keyboard backlight

```
$ kbd allowusers
```

Disallow users group for changing keyboard backlight

```
$ kbd disallowusers
```

Set keyboard backlight to specific level

```
$ kbd 3
```

## Screencast

Record a screencast as `.mkv` and `.gif`. Require `ffmpeg`,`notify-send` and `slop`.

## Start Web

Starts web development services (`nginx`,`mariadb`,`redis`,`php-fpm`)

## Stop Web

Stops web development services (`nginx`,`mariadb`,`redis`,`php-fpm`)

# Todo

- Remove `Start Web` and `Stop Web` utilities and create an extendible `Toggle Web` script.
- Feedback changes to user on `Keyboard Backlight` utility.
- Customization feature for `Feh Background` utility.
- Add support for another region selection (`slop`) on `Screencast` utility.

