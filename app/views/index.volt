<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        {{ get_title() }}
        {{ stylesheet_link('css/bootstrap.min.css') }}
        {{ stylesheet_link('css/naked.css') }}
    </head>
    <body>
        {{ content() }}
        {{ javascript_include('js/config.js') }}
        {{ javascript_include('js/blogs.js') }}
        {{ javascript_include('js/jquery.min.js') }}
        {{ javascript_include('js/bootstrap.min.js') }}
        {{ javascript_include('js/utils.js') }}
    </body>
</html>