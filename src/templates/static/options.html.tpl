{% extends "partials/layout.static.html.tpl" %}
{% block title %}Options{% endblock %}
{% block name %}Options{% endblock %}
{% block content %}
    <form action="{{ url_for('options_action') }}" method="post" class="form">
        <div class="label">
            <label>Theme</label>
        </div>
        <div class="input">
            <div name="theme" class="drop-field drop-field-select" value="{{ session.label }}"
                 data-error="{{ errors.theme }}">
                <ul class="data-source" data-type="local">
                    <li>Default</li>
                    <li>Modern - Default</li>
                    <li>Modern - Romantic</li>
                    <li>Webook</li>
                </ul>
            </div>
        </div>
        <span class="button" data-submit="true">Submit Options</span>
    </form>
{% endblock %}
