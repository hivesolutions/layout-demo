{% include "partials/doctype.html.tpl" %}
<head>
    {% block head %}
        {% include "partials/content_type.html.tpl" %}
        {% include "partials/includes.html.tpl" %}
        <title>Layout / {% block title %}{% endblock %}</title>
    {% endblock %}
</head>
<body class="ux wait-load fluid grey no-footer {{ session.style }}" >
    <div id="overlay" class="overlay"></div>
    <div id="header" class="header">
        {% include "partials/bar.html.tpl" %}
        {% include "partials/header.html.tpl" %}
        {% block header %}
            <ul class="side-links">
                {% if link == "home" %}
                    <a href="{{ url_for('index') }}" class="active">home</a>
                {% else %}
                    <a href="{{ url_for('index') }}">home</a>
                {% endif %}
                <li class="separator"></li>
                {% if link == "about" %}
                    <a href="{{ url_for('about') }}" class="active">about</a>
                {% else %}
                    <a href="{{ url_for('about') }}">about</a>
                {% endif %}
            </ul>
        {% endblock %}
    </div>
    <div id="content" class="content">
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
        {% include "partials/footer.html.tpl" %}
        {% block footer %}{% endblock %}
    </div>
</body>
{% include "partials/end_doctype.html.tpl" %}
