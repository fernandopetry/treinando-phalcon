<!DOCTYPE html>
<html>
<head>
    <!-- Standard Meta -->
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0">

    <!-- Site Properties -->
    <title>Falcão</title>
    <link rel="stylesheet" type="text/css" href="assets/components/reset.css">
    <link rel="stylesheet" type="text/css" href="assets/components/site.css">

    <link rel="stylesheet" type="text/css" href="assets/components/container.css">
    <link rel="stylesheet" type="text/css" href="assets/components/grid.css">
    <link rel="stylesheet" type="text/css" href="assets/components/header.css">
    <link rel="stylesheet" type="text/css" href="assets/components/image.css">
    <link rel="stylesheet" type="text/css" href="assets/components/menu.css">

    <link rel="stylesheet" type="text/css" href="assets/components/divider.css">
    <link rel="stylesheet" type="text/css" href="assets/components/dropdown.css">
    <link rel="stylesheet" type="text/css" href="assets/components/segment.css">
    <link rel="stylesheet" type="text/css" href="assets/components/button.css">
    <link rel="stylesheet" type="text/css" href="assets/components/list.css">
    <link rel="stylesheet" type="text/css" href="assets/components/icon.css">
    <link rel="stylesheet" type="text/css" href="assets/components/sidebar.css">
    <link rel="stylesheet" type="text/css" href="assets/components/transition.css">
    <link rel="stylesheet" type="text/css" href="assets/components/form.css">
    <style type="text/css">

        .hidden.menu {
            display: none;
        }

        .masthead.segment {
            min-height: 700px;
            padding: 1em 0em;
        }
        .masthead .logo.item img {
            margin-right: 1em;
        }
        .masthead .ui.menu .ui.button {
            margin-left: 0.5em;
        }
        .masthead h1.ui.header {
            margin-top: 3em;
            margin-bottom: 0em;
            font-size: 4em;
            font-weight: normal;
        }
        .masthead h2 {
            font-size: 1.7em;
            font-weight: normal;
        }

        .ui.vertical.stripe {
            padding: 8em 0em;
        }
        .ui.vertical.stripe h3 {
            font-size: 2em;
        }
        .ui.vertical.stripe .button + h3,
        .ui.vertical.stripe p + h3 {
            margin-top: 3em;
        }
        .ui.vertical.stripe .floated.image {
            clear: both;
        }
        .ui.vertical.stripe p {
            font-size: 1.33em;
        }
        .ui.vertical.stripe .horizontal.divider {
            margin: 3em 0em;
        }

        .quote.stripe.segment {
            padding: 0em;
        }
        .quote.stripe.segment .grid .column {
            padding-top: 5em;
            padding-bottom: 5em;
        }

        .footer.segment {
            padding: 5em 0em;
        }

        .secondary.pointing.menu .toc.item {
            display: none;
        }

        @media only screen and (max-width: 700px) {
            .ui.fixed.menu {
                display: none !important;
            }
            .secondary.pointing.menu .item,
            .secondary.pointing.menu .menu {
                display: none;
            }
            .secondary.pointing.menu .toc.item {
                display: block;
            }
            .masthead.segment {
                min-height: 350px;
            }
            .masthead h1.ui.header {
                font-size: 2em;
                margin-top: 1.5em;
            }
            .masthead h2 {
                margin-top: 0.5em;
                font-size: 1.5em;
            }
        }
    </style>

    <script>
        $(document)
            .ready(function() {

                // fix menu when passed
                $('.masthead')
                    .visibility({
                        once: false,
                        onBottomPassed: function() {
                            $('.fixed.menu').transition('fade in');
                        },
                        onBottomPassedReverse: function() {
                            $('.fixed.menu').transition('fade out');
                        }
                    })
                ;

                // create sidebar and attach to menu open
                $('.ui.sidebar')
                    .sidebar('attach events', '.toc.item')
                ;

            })
        ;
    </script>
</head>
<body>

<!-- Page Contents -->
<div class="pusher">
    {#<div class="ui inverted vertical masthead center aligned segment">#}

        {#<div class="ui container">#}
            {#<div class="ui large secondary inverted pointing menu">#}
                {#<a class="toc item">#}
                    {#<i class="sidebar icon"></i>#}
                {#</a>#}
                {#<a class="active item">Casa</a>#}
                {#<a class="item">Phalcon</a>#}
            {#</div>#}
        {#</div>#}

        {#<div class="ui text container">#}
            {#<h1 class="ui inverted header">#}
                {#Treinamento Phalcon#}
            {#</h1>#}
            {#<h2>Façam os exercícios sempre </h2>#}
            {#<div class="ui huge primary button">Tá esperando o que? <i class="right arrow icon"></i></div>#}
        {#</div>#}

    {#</div>#}

    <div class="ui vertical stripe segment">

        {% block conteudo %}{% endblock %}

    </div>


</div>

</body>

</html>
