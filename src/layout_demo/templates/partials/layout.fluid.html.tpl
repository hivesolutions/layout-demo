{% include "partials/doctype.html.tpl" %}
<head>
    {% block head %}
        {% include "partials/content_type.html.tpl" %}
        {% include "partials/includes.html.tpl" %}
        <title>Layout / {% block title %}{% endblock %}</title>
    {% endblock %}
</head>
<body class="ux wait-load fluid grey no-footer {{ session.sub_type|default('', True) }} {{ session.style|default('', True) }}" >
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
                <div class="side-links-container">
                    {% if link == "home" %}
                        <a href="{{ url_for('index') }}" class="active">home</a>
                    {% else %}
                        <a href="{{ url_for('index') }}">home</a>
                    {% endif %}
                    {% if link == "show" %}
                        <a href="{{ url_for('show') }}" class="active">show</a>
                    {% else %}
                        <a href="{{ url_for('show') }}">show</a>
                    {% endif %}
                    {% if link == "form" %}
                        <a href="{{ url_for('form') }}" class="active">form</a>
                    {% else %}
                        <a href="{{ url_for('form') }}">form</a>
                    {% endif %}
                    {% if link == "table" %}
                        <a href="{{ url_for('table') }}" class="active">table</a>
                    {% else %}
                        <a href="{{ url_for('table') }}">table</a>
                    {% endif %}
                    <div class="separator"></div>
                    {% if link == "options" %}
                        <a href="{{ url_for('options') }}" class="active">options</a>
                    {% else %}
                        <a href="{{ url_for('options') }}">options</a>
                    {% endif %}
                    {% if link == "about" %}
                        <a href="{{ url_for('about') }}" class="active">about</a>
                    {% else %}
                        <a href="{{ url_for('about') }}">about</a>
                    {% endif %}
                    <div class="separator"></div>
                    <a class="button" data-show=".side-panel">side</a>
                </div>
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
