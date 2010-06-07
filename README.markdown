jQuery Slimbox Rails plugin
=====================

Introduction
------------

This plugin will add two helpers, to make it faster to use [Slimbox for jQuery](http://leandrovieira.com/projects/jquery/slimbox/) in Rails.

Installation
------------

In order to use Slimbox, you must satisfy it's dependencies first. Slimbox needs it's Javascript file and 
the default stylesheet in order to function correctly. These are copied to places by the plugin upon installation.
You just have to include them now.

Because this plugin embeds the slimbox.js into the `:slimbox` option to `javascript_include_tag`.
You can simply add the `:slimbox` option to an existing line or by itself.

Example:

    <%= javascript_include_tag :defaults, :slimbox, :cache => true %>

You must also include the slimbox stylesheet. Add this to the page head:

    <%= stylesheet_link_tag 'lib/slimbox' %>


Usage
-----

Use one of the two helpers provided.

    <%= slimbox_link_to "Link Name", "/path/of/your/image.png" %> 
or

    <%= slimbox_image_tag "/path/of/your/image-thumb.png", "/path/of/your/image.png", {:class=>"images"}, :title => "This is a test!", :group => "image_group" %>

The 4th argument are options for the `image_tag` and the last argument are options for the `link_to`.
