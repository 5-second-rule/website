# 5 Second Rule Blog

Using Jekyll-Bootstrap for ease of use.

## Usage

For all usage and documentation please see: <http://jekyllbootstrap.com>

## Create a Post

    $ rake post title="Hello World"

## Create a Page

    $ rake page name="about.md"

## Add Page to Navigation

Put `group: navigation` in the front-matter

## Publish the Site

    $ jekyll build --safe
    $ scp -r _site cse125.ucsd.edu:/path/to/site/

## Jekyll-Bootstrap Details

### Version

0.3.0 - stable and versioned using [semantic versioning](http://semver.org/).

**NOTE:** 0.3.0 introduces a new theme which is not backwards compatible in the sense it won't _look_ like the old version.
However, the actual API has not changed at all.
You might want to run 0.3.0 in a branch to make sure you are ok with the theme design changes.

### Documentation

The documentation website at <http://jekyllbootstrap.com> is maintained at https://github.com/plusjade/jekyllbootstrap.com


### License

[MIT](http://opensource.org/licenses/MIT)
