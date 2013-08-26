{% extends "partials/layout.html.tpl" %}
{% block title %}Random{% endblock %}
{% block name %}Random{% endblock %}
{% block content %}
    <div class="quote">Random</div>
    <div class="separator-horizontal"></div>
    <div class="input small">
        <a class="link link-confirm" href="http://hive.pt"
           data-message="Do you really want to exit to hive.pt site ?\nThis action is not reversible.">hive.pt</a>
    </div>
    <div class="input small">
        <div class="calendar"></div>
    </div>
    <div class="input small">
        <div class="calendar-range"></div>
    </div>
    <div class="input small">
        <div class="drop-list" name="list" data-value="-1">
            <div class="drop-item">Unselected</div>
            <ul class="drop-options">
                <li data-value="1">Option 1</li>
                <li data-value="2">Option 2</li>
                <li data-value="3">Option 3</li>
                <li data-value="4">Option 4</li>
                <li data-value="5">Option 5</li>
            </ul>
        </div>
    </div>
    <div class="input small">
        <div class="progress-bar"></div>
    </div>
{% endblock %}
