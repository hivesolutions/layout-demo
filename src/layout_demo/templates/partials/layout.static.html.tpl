{% include "partials/doctype.html.tpl" %}
<head>
    {% block head %}
        {% include "partials/content_type.html.tpl" %}
        {% include "partials/includes.html.tpl" %}
        <title>Layout / {% block title %}{% endblock %}</title>
    {% endblock %}
</head>
<body class="ux wait-load {{ session.sub_type|default('', True) }} {{ session.style|default('', True) }}" >
    <div id="overlay" class="overlay"></div>
    <div id="header" class="header">
        {% block header %}
            {% include "partials/header.html.tpl" %}
            <h1>{% block name %}{% endblock %}</h1>
            <div class="links">
                {% if link == "home" %}
                    <a href="{{ url_for('index') }}" class="active">home</a>
                {% else %}
                    <a href="{{ url_for('index') }}">home</a>
                {% endif %}
                //
                {% if link == "show" %}
                    <a href="{{ url_for('show') }}" class="active">show</a>
                {% else %}
                    <a href="{{ url_for('show') }}">show</a>
                {% endif %}
                //
                {% if link == "form" %}
                    <a href="{{ url_for('form') }}" class="active">form</a>
                {% else %}
                    <a href="{{ url_for('form') }}">form</a>
                {% endif %}
                //
                {% if link == "options" %}
                    <a href="{{ url_for('options') }}" class="active">options</a>
                {% else %}
                    <a href="{{ url_for('options') }}">options</a>
                {% endif %}
                //
                {% if link == "about" %}
                    <a href="{{ url_for('about') }}" class="active">about</a>
                {% else %}
                    <a href="{{ url_for('about') }}">about</a>
                {% endif %}
                <div class="links-extra">
                    <ul>
                        <li>
                            {% if link == "list" %}
                                <a href="{{ url_for('list') }}" class="active">list</a>
                            {% else %}
                                <a href="{{ url_for('list') }}">list</a>
                            {% endif %}
                        </li>
                        <li>
                            {% if link == "random" %}
                                <a href="{{ url_for('random') }}" class="active">random</a>
                            {% else %}
                                <a href="{{ url_for('random') }}">random</a>
                            {% endif %}
                        </li>
                        <li>
                            {% if link == "data" %}
                                <a href="{{ url_for('data') }}" class="active">data</a>
                            {% else %}
                                <a href="{{ url_for('data') }}">data</a>
                            {% endif %}
                        </li>
                        <li>
                            {% if link == "table" %}
                                <a href="{{ url_for('table') }}" class="active">table</a>
                            {% else %}
                                <a href="{{ url_for('table') }}">table</a>
                            {% endif %}
                        </li>
                    </ul>
                </div>
                <span class="link-more">
                    //
                    <a class="link">more</a>
                </span>
            </div>
        {% endblock %}
    </div>
    <div id="content" class="content {% block style %}{% endblock %}">{% block content %}{% endblock %}</div>
    <div id="footer" class="footer">
        {% block footer %}
            {% include "partials/footer.html.tpl" %}
        {% endblock %}
    </div>
</body>
{% include "partials/end_doctype.html.tpl" %}
