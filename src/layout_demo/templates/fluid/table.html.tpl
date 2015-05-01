{% extends "partials/layout.fluid.html.tpl" %}
{% block title %}Table{% endblock %}
{% block name %}Table{% endblock %}
{% block style %}no-header no-padding{% endblock %}
{% block content %}
    <table class="filter" data-no_input="1">
        <thead>
            <tr class="table-row table-header">
                <th class="text-left" data-width="190">Sender</th>
                <th class="text-left">Subject</th>
                <th class="text-right" data-width="190">Last Login</th>
            </tr>
        </thead>
        <tbody class="filter-contents">
            <tr class="table-row">
                <td class="text-left">
                    <a href="#">João Magalhães</a>
                </td>
                <td class="text-left">Next music events @ FNAC</td>
                <td class="text-right timestamp" data-width="190">Porto</td>
            </tr>
            <tr class="table-row">
                <td class="text-left">
                    <a href="#">Tiago Magalhães</a>
                </td>
                <td class="text-left">Pending things for the Oiôba website</td>
                <td class="text-right timestamp" data-width="190">Porto</td>
            </tr>
            <tr class="table-row">
                <td class="text-left">
                    <a href="#">Tiago Magalhães</a>
                </td>
                <td class="text-left">Next dancing events @ FNAC</td>
                <td class="text-right timestamp" data-width="190">Porto</td>
            </tr>
            <tr class="table-row">
                <td class="text-left">
                    <a href="#">António Gouveia</a>
                </td>
                <td class="text-left">Implement the wrap_exception_flag method</td>
                <td class="text-right timestamp" data-width="190">Porto</td>
            </tr>
        </tbody>
    </table>
{% endblock %}
