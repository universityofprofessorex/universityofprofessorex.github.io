# universityofprofessorex.github.io
university of professorex blog and splash page

# Forked from 'Clean Blog Jekyll'
[Clean Blog Jekyll](https://startbootstrap.com/themes/clean-blog-jekyll/) is a stylish, responsive blog theme for [Bootstrap](https://getbootstrap.com/) created by [Start Bootstrap](https://startbootstrap.com/). This theme features a blog homepage, about page, contact page, and an example post page along with a working contact form powered by [Formspree](https://formspree.io/).

This repository holds the official Jekyll version of the Clean Blog theme on Start Bootstrap!

## Preview

[![Clean Blog (Jekyll) Preview](https://assets.startbootstrap.com/img/screenshots/themes/agency.medium.webp)](http://StartBootstrap.github.io/universityofprofessorex-blog-jekyll/)

**[View Live Preview](http://StartBootstrap.github.io/universityofprofessorex-blog-jekyll/)**

## Installation & Setup

### Contributor guide

1. Install `rbenv` or `rvm`
2. install ruby 2.6.6 and set it as the global ruby.
3. `gem update --system`
4. `bundle config build.ffi --enable-system-libffi`
5. run `env NOKOGIRI_USE_SYSTEM_LIBRARIES=true bundle install --path .vendor` to insall all ruby gem dependencies in a vendored directory located in `.vendor`
6. rbenv rehash
7. Set jekyll to dev mode by running `make dev`, this makes the server available on localhost:4000
8. `make serve-watch` to start up jekyll
9. Navigate to http://localhost:4000/

### Rbenv on MacOS w/ homebrew

Set the following before compiling ruby w/ rbenv:

```
enable_compile_flags() {
  # SOURCE: https://github.com/jiansoung/issues-list/issues/13
  # Fixes: zipimport.ZipImportError: can't decompress data; zlib not available
  export PATH="/usr/local/opt/tcl-tk/bin:$PATH"
  export PATH="/usr/local/opt/bzip2/bin:$PATH"
  export PATH="/usr/local/opt/ncurses/bin:$PATH"
  export PATH="/usr/local/opt/openssl@1.1/bin:$PATH"
  # SOURCE: https://github.com/jiansoung/issues-list/issues/13
  # Fixes: zipimport.ZipImportError: can't decompress data; zlib not available
  export LDFLAGS="${LDFLAGS} -L/usr/local/opt/tcl-tk/lib"
  export CPPFLAGS="${CPPFLAGS} -I/usr/local/opt/tcl-tk/include"
  export LDFLAGS="${LDFLAGS} -L/usr/local/opt/zlib/lib"
  export CPPFLAGS="${CPPFLAGS} -I/usr/local/opt/zlib/include"
  export LDFLAGS="${LDFLAGS} -L/usr/local/opt/sqlite/lib"
  export CPPFLAGS="${CPPFLAGS} -I/usr/local/opt/sqlite/include"
  export LDFLAGS="${LDFLAGS} -L/usr/local/opt/libffi/lib"
  export CPPFLAGS="${CPPFLAGS} -I/usr/local/opt/libffi/include"
  export LDFLAGS="${LDFLAGS} -L/usr/local/opt/bzip2/lib"
  export CPPFLAGS="${CPPFLAGS} -I/usr/local/opt/bzip2/include"
  export LDFLAGS="${LDFLAGS} -L/usr/local/opt/ncurses/lib"
  export CPPFLAGS="${CPPFLAGS} -I/usr/local/opt/ncurses/include"
  export LDFLAGS="${LDFLAGS} -L/usr/local/opt/openssl@1.1/lib"
  export CPPFLAGS="${CPPFLAGS} -I/usr/local/opt/openssl@1.1/include"
  export PKG_CONFIG_PATH="${PKG_CONFIG_PATH} /usr/local/opt/zlib/lib/pkgconfig"
  export PKG_CONFIG_PATH="${PKG_CONFIG_PATH} /usr/local/opt/sqlite/lib/pkgconfig"
  export PKG_CONFIG_PATH="${PKG_CONFIG_PATH} /usr/local/opt/tcl-tk/lib/pkgconfig"
  export PKG_CONFIG_PATH="${PKG_CONFIG_PATH} /usr/local/opt/libffi/lib/pkgconfig"
  export PKG_CONFIG_PATH="${PKG_CONFIG_PATH} /usr/local/opt/ncurses/lib/pkgconfig"
  export PKG_CONFIG_PATH="${PKG_CONFIG_PATH} /usr/local/opt/openssl@1.1/lib/pkgconfig"
}
```

then run `enable_compile_flags`. This will ensure that ruby is compiled against the libraries you installed w/ homebrew.

### Using RubyGems

When installing the theme using RubyGems, demo images, posts, and pages are not included. Follow the instructions below for complete setup.

1. (Optional) Create a new Jekyll site: `jekyll new my-site`
2. Replace the current theme in your `Gemfile` with `gem "jekyll-theme-clean-blog"`.
3. Install the theme (run the command inside your site directory): `bundle install`
4. Replace the current theme in your `_config.yml` file with `theme: jekyll-theme-clean-blog`.
5. Build your site: `bundle exec jekyll serve`

Assuming there are no errors and the site is building properly, follow these steps next:

1. Create the following pages if they do not exist already (or change the extension of existing markdown files from `.md` to `.html`):

    * `index.html` - set to `layout: home`
    * `about.html` - set to `layout: page`
    * `contact.html` - set to `layout: page`
    * `posts/index.html` - set to `layout: page` (you will also need to create a `posts` directory)

2. Configure the `index.html` front matter. Example:

    ```markdown
    ---
    layout: home
    background: '/PATH_TO_IMAGE'
    ---
    ```

3. Configure the `about.html`, `contact.html`, and `posts/index.html` front matter. Example:

    ```markdown
    ---
    layout: page
    title: Page Title
    description: This is the page description.
    background: '/PATH_TO_IMAGE'
    ---
    ```

4. For each post in the `_posts` directory, update the front matter. Example:

    ```markdown
    ---
    layout: post
    title: "Post Title"
    subtitle: "This is the post subtitle."
    date: YYYY-MM-DD HH:MM:SS
    background: '/PATH_TO_IMAGE'
    ---
    ```

    For reference, look at the [demo repository](https://github.com/StartBootstrap/universityofprofessorex-blog-jekyll) to see how the files are set up.

5. Add the form to the `contact.html` page. Add the following code to your `contact.html` page:

    ```html
    <form name="sentMessage" id="contactForm" novalidate>
    <div class="control-group">
        <div class="form-group floating-label-form-group controls">
        <label>Name</label>
        <input type="text" class="form-control" placeholder="Name" id="name" required data-validation-required-message="Please enter your name.">
        <p class="help-block text-danger"></p>
        </div>
    </div>
    <div class="control-group">
        <div class="form-group floating-label-form-group controls">
        <label>Email Address</label>
        <input type="email" class="form-control" placeholder="Email Address" id="email" required data-validation-required-message="Please enter your email address.">
        <p class="help-block text-danger"></p>
        </div>
    </div>
    <div class="control-group">
        <div class="form-group col-xs-12 floating-label-form-group controls">
        <label>Phone Number</label>
        <input type="tel" class="form-control" placeholder="Phone Number" id="phone" required data-validation-required-message="Please enter your phone number.">
        <p class="help-block text-danger"></p>
        </div>
    </div>
    <div class="control-group">
        <div class="form-group floating-label-form-group controls">
        <label>Message</label>
        <textarea rows="5" class="form-control" placeholder="Message" id="message" required data-validation-required-message="Please enter a message."></textarea>
        <p class="help-block text-danger"></p>
        </div>
    </div>
    <br>
    <div id="success"></div>
    <div class="form-group">
        <button type="submit" class="btn btn-primary" id="sendMessageButton">Send</button>
    </div>
    </form>
    ```

    Make sure you have the `email` setting in your `_config.yml` file set to a working email address! Once this is set, fill out the form and then check your email, verify the email address using the link sent to you by Formspree, and then the form will be working!

6. Build your site: `bundle exec jekyll serve`

### Using Core Files

When using the core files, the demo images, posts, and pages are all included with the download. After following the instructions below, you can then go and change the content of the pages and posts.

1. [Download](https://github.com/StartBootstrap/universityofprofessorex-blog-jekyll/archive/master.zip) or Clone the repository.
2. Update the following configuration settings in your `_config.yml` file:
    - `baseurl`
    - `url`
    - `title`
    - `email` (after setting this setting to a working email address, fill out the form on the contact page and send it - then check your email and verify the address and the form will send you messages when used)
    - `description`
    - `author`
    - `twitter_username` (Optional)
    - `facebook_username` (Optional)
    - `github_username` (Optional)
    - `linkedin_username` (Optional)
    - `instagram_username` (Optional)
3. Build your site: `bundle exec jekyll serve`

## Bugs and Issues

Have a bug or an issue with this template? [Open a new issue](https://github.com/StartBootstrap/universityofprofessorex-blog-jekyll/issues) here on GitHub!

## About

Start Bootstrap is an open source library of free Bootstrap templates and themes. All of the free templates and themes on Start Bootstrap are released under the MIT license, which means you can use them for any purpose, even for commercial projects.

* <https://startbootstrap.com>
* <https://twitter.com/SBootstrap>

Start Bootstrap was created by and is maintained by **[David Miller](http://davidmiller.io/)**.

* <http://davidmiller.io>
* <https://twitter.com/davidmillerskt>
* <https://github.com/davidtmiller>

Start Bootstrap is based on the [Bootstrap](https://getbootstrap.com/) framework created by [Mark Otto](https://twitter.com/mdo) and [Jacob Thorton](https://twitter.com/fat).

## Copyright and License

Copyright 2013-2020 Start Bootstrap LLC. Code released under the [MIT](https://github.com/StartBootstrap/universityofprofessorex-blog-jekyll/blob/gh-pages/LICENSE) license.
