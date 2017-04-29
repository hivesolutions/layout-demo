{% include "partials/doctype.html.tpl" %}
<head>
    {% block head %}
        {% include "partials/content_type.html.tpl" %}
        {% include "partials/includes.html.tpl" %}
        {% include "partials/meta.html.tpl" %}
        <title>Layout / {% block title %}{% endblock %}</title>
    {% endblock %}
</head>
<body class="ux wait-load fluid grey no-footer {{ session.sub_type|default('', True) }} {{ session.theme|default('', True) }} {{ session.style|default('', True) }}" >
    {% block extras %}
        {% include "partials/extras.html.tpl" %}
    {% endblock %}
    <div id="overlay" class="overlay"></div>
    <div id="bar" class="bar">
        {% include "partials/bar.html.tpl" %}
    </div>
    <div id="header" class="header">
        {% block header %}
            {% include "partials/header.html.tpl" %}
            <div class="side-links">
                {% if link == "home" %}
                    <a href="{{ url_for('index') }}" class="active">Home</a>
                {% else %}
                    <a href="{{ url_for('index') }}">Home</a>
                {% endif %}
                {% if link == "show" %}
                    <a href="{{ url_for('show') }}" class="active">Show</a>
                {% else %}
                    <a href="{{ url_for('show') }}">Show</a>
                {% endif %}
                {% if link == "form" %}
                    <a href="{{ url_for('form') }}" class="active">Form</a>
                {% else %}
                    <a href="{{ url_for('form') }}">Form</a>
                {% endif %}
                {% if link == "table" %}
                    <a href="{{ url_for('table') }}" class="active">Table</a>
                {% else %}
                    <a href="{{ url_for('table') }}">Table</a>
                {% endif %}
                <div class="separator"></div>
                {% if link == "options" %}
                    <a href="{{ url_for('options') }}" class="active">Options</a>
                {% else %}
                    <a href="{{ url_for('options') }}">Options</a>
                {% endif %}
                {% if link == "about" %}
                    <a href="{{ url_for('about') }}" class="active">About</a>
                {% else %}
                    <a href="{{ url_for('about') }}">About</a>
                {% endif %}
                <div class="separator"></div>
                <a class="button" data-show=".side-panel">Side</a>
            </div>
        {% endblock %}
    </div>
    <div id="content" class="content {% block style %}{% endblock %}">
        <div class="content-header">
            <h1>{% block name %}{% endblock %}</h1>
            <div class="content-buttons">
                {% block buttons %}{% endblock %}
            </div>
        </div>
        <div class="content-container">
            {% block content %}{% endblock %}
        </div>
    </div>
    <div id="footer" class="footer">
        {% block footer %}
            {% include "partials/footer.html.tpl" %}
        {% endblock %}
    </div>
</body>
{% include "partials/end_doctype.html.tpl" %}
