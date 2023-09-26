running bundle
```bash
❯ sudo bundle
[sudo] password for pi: 
Don't run Bundler as root. Installing your bundle as root will break this application for all non-root users on this machine.
Fetching gem metadata from https://rubygems.org/...........
Resolving dependencies...
Using bundler 2.4.13
Fetching colorator 1.1.0
Fetching public_suffix 5.0.3
Installing colorator 1.1.0
Fetching concurrent-ruby 1.2.2
Installing concurrent-ruby 1.2.2
Installing public_suffix 5.0.3
Fetching eventmachine 1.2.7
Fetching http_parser.rb 0.8.0
Installing eventmachine 1.2.7 with native extensions
Installing http_parser.rb 0.8.0 with native extensions
Fetching ffi 1.15.5
Installing ffi 1.15.5 with native extensions
Fetching forwardable-extended 2.6.0
Installing forwardable-extended 2.6.0
Fetching google-protobuf 3.24.2 (x86_64-linux)
Installing google-protobuf 3.24.2 (x86_64-linux)
Fetching mercenary 0.4.0
Installing mercenary 0.4.0
Fetching racc 1.7.1
Installing racc 1.7.1 with native extensions
Fetching parallel 1.23.0
Installing parallel 1.23.0
Fetching rainbow 3.1.1
Installing rainbow 3.1.1
Fetching yell 2.2.2
Installing yell 2.2.2
Fetching rb-fsevent 0.11.2
Installing rb-fsevent 0.11.2
Using rexml 3.2.6
Fetching liquid 4.0.4
Installing liquid 4.0.4
Fetching rouge 4.1.3
Installing rouge 4.1.3
Fetching safe_yaml 1.0.5
Installing safe_yaml 1.0.5
Fetching unicode-display_width 2.4.2
Installing unicode-display_width 2.4.2
Fetching webrick 1.8.1
Installing webrick 1.8.1
Fetching jekyll-paginate 1.1.0
Installing jekyll-paginate 1.1.0
Fetching addressable 2.8.5
Installing addressable 2.8.5
Fetching i18n 1.14.1
Installing i18n 1.14.1
Fetching ethon 0.16.0
Installing ethon 0.16.0
Fetching rb-inotify 0.10.1
Installing rb-inotify 0.10.1
Fetching pathutil 0.16.2
Installing pathutil 0.16.2
Fetching sass-embedded 1.66.1 (x86_64-linux-gnu)
Installing sass-embedded 1.66.1 (x86_64-linux-gnu)
Fetching nokogiri 1.15.4 (x86_64-linux)
Installing nokogiri 1.15.4 (x86_64-linux)
Fetching kramdown 2.4.0
Installing kramdown 2.4.0
Fetching terminal-table 3.0.2
Installing terminal-table 3.0.2
Fetching typhoeus 1.4.0
Installing typhoeus 1.4.0
Fetching listen 3.8.0
Installing listen 3.8.0
Fetching jekyll-sass-converter 3.0.0
Installing jekyll-sass-converter 3.0.0
Fetching kramdown-parser-gfm 1.1.0
Installing kramdown-parser-gfm 1.1.0
Fetching html-proofer 3.19.4
Installing html-proofer 3.19.4
Fetching jekyll-watch 2.2.1
Installing jekyll-watch 2.2.1
Fetching em-websocket 0.5.3
Installing em-websocket 0.5.3
Fetching jekyll 4.3.2
Installing jekyll 4.3.2
Fetching jekyll-archives 2.2.1
Fetching jekyll-include-cache 0.2.1
Installing jekyll-include-cache 0.2.1
Installing jekyll-archives 2.2.1
Fetching jekyll-redirect-from 0.16.0
Fetching jekyll-seo-tag 2.8.0
Installing jekyll-redirect-from 0.16.0
Installing jekyll-seo-tag 2.8.0
Fetching jekyll-sitemap 1.4.0
Installing jekyll-sitemap 1.4.0
Fetching jekyll-theme-chirpy 6.1.0
Installing jekyll-theme-chirpy 6.1.0
Bundle complete! 6 Gemfile dependencies, 45 gems now installed.
Use `bundle info [gemname]` to see where a bundled gem is installed.
```
```bash
# serve live blog
bundle exec jekyll s
```
- Create posts with date in _posts directory
#github PAT 
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

---
- Update url and base_url in config yaml to get proper github pages deploy
