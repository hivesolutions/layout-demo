<!-- css inclusion -->
<link rel="stylesheet" type="text/css" href="{{ url_for('static', filename = 'libs/uxf/css/ux.css') }}" />
{% if session.theme %}
    {% if session.theme == 'default' %}
        <link rel="stylesheet" type="text/css" href="{{ url_for('static', filename = 'libs/layout/css/layout.css') }}" />
    {% elif session.theme == 'modern' %}
        <link rel="stylesheet" type="text/css" href="{{ url_for('static', filename = 'libs/layout/css/layout.modern.css') }}" />
    {% elif session.theme == 'webook' %}
        <link rel="stylesheet" type="text/css" href="{{ url_for('static', filename = 'libs/layout/css/layout.webook.css') }}" />
    {% endif %}
{% else %}
    <link rel="stylesheet" type="text/css" href="{{ url_for('static', filename = 'libs/layout/css/layout.css') }}" />
{% endif %}
<link rel="stylesheet" type="text/css" href="{{ url_for('static', filename = 'libs/layout/css/layout.extras.css') }}" />
<link rel="stylesheet" type="text/css" href="{{ url_for('static', filename = 'libs/layout/css/layout.data.css') }}" />
<link rel="stylesheet" type="text/css" href="{{ url_for('static', filename = 'css/layout.css') }}" />

<!-- favicon inclusion -->
<link rel="shortcut icon" href="{{ url_for('static', filename = 'images/favicon.ico') }}" />

<!-- javascript inclusion -->
{% if session.libs == "legacy" %}
    <script type="text/javascript" src="//ajax.googleapis.com/ajax/libs/jquery/1.5.1/jquery.min.js"></script>
{% elif session.libs == "next" %}
    <script type="text/javascript" src="//ajax.googleapis.com/ajax/libs/jquery/1.9.0/jquery.min.js"></script>
{% elif session.libs == "edge" %}
    <script type="text/javascript" src="//ajax.googleapis.com/ajax/libs/jquery/2.1.4/jquery.min.js"></script>
{% else %}
    <script type="text/javascript" src="//ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
{% endif %}
<script type="text/javascript" src="{{ url_for('static', filename = 'libs/uxf/js/ux.js') }}"></script>
<script type="text/javascript" src="{{ url_for('static', filename = 'libs/layout/js/layout.js') }}"></script>
<script type="text/javascript" src="{{ url_for('static', filename = 'js/main.js') }}"></script>
