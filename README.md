rbscreenshot
============

[![Gem Version](https://badge.fury.io/rb/rbscreenshot.svg)](http://badge.fury.io/rb/rbscreenshot)

Take a screenshot in one line.

Usage
===

1. `brew install phantomjs` if you haven't installed phantomjs yet.

2. `gem install 'rbscreenshot'`

3. require and

```ruby
RbScreenShot.take 'https://github.com/kaiinui/rbscreenshot'
```

gives `./#{timestamp}.png` where `timestamp` is like `1404631139` (`RbScreenShot.take` returns the file name.)

![](https://raw.githubusercontent.com/kaiinui/rbscreenshot/master/SS.png)
