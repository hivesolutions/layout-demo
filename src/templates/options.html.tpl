{% extends "partials/layout.html.tpl" %}
{% block title %}Options{% endblock %}
{% block name %}Options{% endblock %}
{% block content %}
    <form action="{{ url_for('options_action') }}" method="post" class="form">
        <div class="label">
            <label>Theme</label>
        </div>
        <div class="input">
            <div name="theme" class="drop-field drop-field-select" data-error="{{ errors.country }}">
                <ul class="data-source" data-type="local">
                    <li>
                        <span name="name">Default</span>
                        <span name="id">layout.css</span>
                    </li>
                    <li>
                        <span name="name">Modern</span>
                        <span name="id">layout_modern.css</span>
                    </li>
                </ul>
            </div>
        </div>
        <span class="button" data-submit="true">Submit Options</span>
    </form>
{% endblock %}
