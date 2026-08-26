#!/bin/sh
set -eu

test -f _config.yml
test -f Gemfile
test -f _pages/about.md
test -f _pages/publications.md
test -f _pages/projects.md
test -f _pages/cv.md
test -f _data/cv.yml
test -f README.md
test -f assets/img/kevin-tieu.png
test -f assets/img/kpt-monogram.png
test -f assets/pdf/KevinTieu_Resume.pdf
rg -q 'first_name: Kevin' _config.yml
rg -q 'last_name: Phat Tieu' _config.yml
rg -q 'url: https://tieuandpepper.github.io' _config.yml
rg -q 'icon: kpt-monogram.png' _config.yml
rg -q 'baseurl:' _config.yml
rg -q 'linkedin_username: kevin-phat-tieu' _data/socials.yml
rg -q 'scholar_userid: qgdKcT4AAAAJ' _data/socials.yml
rg -q 'github_username: kevin-tieu' _data/socials.yml
rg -q 'Texas A&M University' _pages/about.md
rg -q 'image: kevin-tieu.png' _pages/about.md
rg -q 'image_circular: true' _pages/about.md
rg -q 'layout: cv' _pages/cv.md
rg -q 'cv_format: rendercv' _pages/cv.md
rg -q 'Secure-and-Trustworthy-Hardware' _data/cv.yml
rg -q 'Texas A&M University' _data/cv.yml
rg -q 'Abstractions-of-Thought' _bibliography/papers.bib
rg -q 'Watermarking.*LLMs' _bibliography/papers.bib
rg -q 'How to replace your photo' README.md
rg -q 'How to update' README.md
