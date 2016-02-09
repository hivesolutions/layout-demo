#!/usr/bin/python
# -*- coding: utf-8 -*-

# Hive Layout Framework
# Copyright (c) 2008-2016 Hive Solutions Lda.
#
# This file is part of Hive Layout Framework.
#
# Hive Layout Framework is free software: you can redistribute it and/or modify
# it under the terms of the Apache License as published by the Apache
# Foundation, either version 2.0 of the License, or (at your option) any
# later version.
#
# Hive Layout Framework is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
# Apache License for more details.
#
# You should have received a copy of the Apache License along with
# Hive Layout Framework. If not, see <http://www.apache.org/licenses/>.

__author__ = "João Magalhães <joamag@hive.pt>"
""" The author(s) of the module """

__version__ = "1.0.0"
""" The version of the module """

__revision__ = "$LastChangedRevision$"
""" The revision number of the module """

__date__ = "$LastChangedDate$"
""" The last change date of the module """

__copyright__ = "Copyright (c) 2008-2016 Hive Solutions Lda."
""" The copyright for the module """

__license__ = "Apache License, Version 2.0"
""" The license for the module """

import time

from layout_demo.main import app
from layout_demo.main import flask
from layout_demo.main import quorum

SLEEP_TIME = 3

@app.route("/", methods = ("GET",))
@app.route("/index", methods = ("GET",))
def index():
    return render_template(
        "index.html.tpl",
        link = "home"
    )

@app.route("/show", methods = ("GET",))
def show():
    return render_template(
        "show.html.tpl",
        link = "show"
    )

@app.route("/form", methods = ("GET",))
def form():
    return render_template(
        "form.html.tpl",
        link = "form",
        form = {},
        errors = {}
    )

@app.route("/form", methods = ("POST",))
def form_action():
    return render_template(
        "form.html.tpl",
        link = "form",
        form = {},
        errors = {
            "name" : ["Invalid name"],
            "birthday" : ["Invalid birthday"],
            "place" : ["Invalid place"],
            "country" : ["Invalid country"],
            "related" : ["Invalid related"],
            "occupation" : ["Invalid occupation"],
            "rating" : ["Invalid rating"],
            "description" : ["Invalid description"],
            "prices" : ["Invalid prices"]
        }
    )

@app.route("/list", methods = ("GET",))
def list():
    return render_template(
        "list.html.tpl",
        link = "list"
    )

@app.route("/list.json", methods = ("GET",), json = True)
def list_json():
    start_record = int(quorum.get_field("start_record"))
    number_records = int(quorum.get_field("number_records"))
    if start_record > 0: time.sleep(SLEEP_TIME)

    items = []
    for index in range(number_records):
        index_f = start_record + index + 1
        items.append({
            "name" : "Name %d" % index_f,
            "country" : "Country %d" % index_f
        })

    return items

@app.route("/random", methods = ("GET",))
def random():
    return render_template(
        "random.html.tpl",
        link = "random"
    )

@app.route("/data", methods = ("GET",))
def data():
    return render_template(
        "data.html.tpl",
        link = "data"
    )

@app.route("/table", methods = ("GET",))
def table():
    return render_template(
        "table.html.tpl",
        link = "table"
    )

@app.route("/options", methods = ("GET",))
def options():
    return render_template(
        "options.html.tpl",
        link = "options",
        form = {},
        errors = {}
    )

@app.route("/options", methods = ("POST",))
def options_action():
    type = quorum.get_field("type")
    theme = quorum.get_field("theme")
    libs = quorum.get_field("libs")
    type_s = type.split("-", 1)
    theme_s = theme.split("-", 1)
    type_l = len(type_s)
    theme_l = len(theme_s)

    if type_l == 1: type_s.append("")
    type_s, sub_type_s = type_s

    if theme_l == 1: theme_s.append("")
    theme_s, style_s = theme_s

    type_s = type_s.lower().strip()
    sub_type_s = sub_type_s.lower().strip()
    theme_s = theme_s.lower().strip()
    style_s = style_s.lower().strip()
    libs_s = libs.lower().strip()

    if style_s == "default": style_s = ""

    flask.session["type_label"] = type
    flask.session["type"] = type_s
    flask.session["sub_type"] = sub_type_s
    flask.session["label"] = theme
    flask.session["theme"] = theme_s
    flask.session["style"] = style_s
    flask.session["libs"] = libs_s
    flask.session["libs_label"] = libs
    flask.session.permanent = True

    return render_template(
        "options.html.tpl",
        link = "options",
        form = {},
        errors = {}
    )

@app.route("/about", methods = ("GET",))
def about():
    return render_template(
        "about.html.tpl",
        link = "about"
    )

def render_template(base, type = None, *args, **kwargs):
    type = flask.session.get("type", "static")
    return flask.render_template("%s/%s" % (type, base), *args, **kwargs)
