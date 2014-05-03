# Boothack

This is a theme for Pelican, it's a fork from [pelican-bootstrap3](https://github.com/DandyDev/pelican-bootstrap3) with some customizations.

## Screenshot

Coming soon...

## Contributing

Any form of help or contribution is encouraged, just open an issue or fork and submit a pull request.

## Installation

Easy, clone it with `git clone https://github.com/DandyDev/pelican-bootstrap3.git` and then point your THEME variable in pelicanconf.py to to `/path/to/pelican-bootstrap3`

## Usage

This theme honors the following standard Pelican settings:

* Putting feeds in the `<head>` section:
	* `FEED_ALL_ATOM`
	* `FEED_ALL_RSS`
* Template settings:
	* `DISPLAY_PAGES_ON_MENU`
	* `DISPLAY_CATEGORIES_ON_MENU`
	* `MENUITEMS`
	* `LINKS` (Blogroll will be put in the sidebar instead of the head)
* Analytics & Comments
	* `GOOGLE_ANALYTICS`
	* `DISQUS_SITENAME`
	* `PIWIK_URL`, `PIWIK_SSL_URL` and `PIWIK_SITE_ID`

It uses the `tag_cloud` variable for displaying tags in the sidebar. You can control the amount of tags shown with: `TAG_CLOUD_MAX_ITEMS`

## Features

For a list of features, take a look [here](FEATURES.md).

## Live example

Coming soon

# License

```
Copyright (C) 2013 - Magnun Leno

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program.  If not, see <http://www.gnu.org/licenses/>.
```
