{% extends "partials/layout.html.tpl" %}
{% block title %}Form{% endblock %}
{% block name %}Form{% endblock %}
{% block content %}
    <form action="{{ url_for('form_action') }}" method="post" class="form">
        <div class="label">
            <label>Name</label>
        </div>
        <div class="input">
            <input class="text-field focus" name="name" placeholder="eg: John Doe" value="{{ form.name }}"
                   data-error="{{ errors.name }}" />
        </div>
        <div class="label">
            <label>Place</label>
        </div>
        <div class="input">
            <div class="drop-field">
                <div class="data-source" data-type="countries"></div>
            </div>
        </div>
        <div class="label">
            <label>Country</label>
        </div>
        <div class="input">
            <div class="drop-field drop-field-select">
                <div class="data-source" data-type="countries"></div>
            </div>
        </div>
        <div class="label">
            <label>Description</label>
        </div>
        <div class="input">
            <textarea class="text-area" name="description" placeholder="eg: some words about the form"
                      data-error="{{ errors.description }}">{{ form.description }}</textarea>
        </div>
        <table class="table table-edit">
            <input name="sub_product[inventory_lines][]" type="hidden" class="table-empty-field" />
            <thead>
                <tr>
                    <th class="longer-input" data-width="382">Country</th>
                    <th data-width="80">Qty</th>
                    <th data-width="80">Price</th>
                </tr>
            </thead>
            <tbody>
                <tr class="template">
                    <td>
                        <div class="drop-field drop-field-select">
                            <div class="data-source" data-type="countries"></div>
                        </div>
                    </td>
                    <td>
                        <input type="text" class="text-field text-right" data-type="floatp" value="1" />
                    </td>
                    <td>
                        <input type="text" class="text-field text-right" data-type="floatp" data-decimal_places="2" />
                    </td>
                </tr>
            </tbody>
            <tfoot>
                <tr>
                    <td class="table-new-line-row">
                        <span class="button table-new-line">Add Line</span>
                    </td>
                </tr>
            </tfoot>
        </table>
        <div class="quote">
            By clicking Submit Form, you agree to our Service Agreement and that you have
            read and understand our Privacy Policy.
        </div>
        <span class="button" data-submit="true">Submit Form</span>
    </form>
{% endblock %}
