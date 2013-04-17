#!/usr/bin/python
# -*- coding: utf-8 -*-

# Hive Layout Framework
# Copyright (C) 2008-2012 Hive Solutions Lda.
#
# This file is part of Hive Layout Framework.
#
# Hive Layout Framework is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# Hive Layout Framework is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with Hive Layout Framework. If not, see <http://www.gnu.org/licenses/>.

__author__ = "João Magalhães <joamag@hive.pt>"
""" The author(s) of the module """

__version__ = "1.0.0"
""" The version of the module """

__revision__ = "$LastChangedRevision$"
""" The revision number of the module """

__date__ = "$LastChangedDate$"
""" The last change date of the module """

__copyright__ = "Copyright (c) 2008-2012 Hive Solutions Lda."
""" The copyright for the module """

__license__ = "GNU General Public License (GPL), Version 3"
""" The license for the module """

from layout_demo import app
from layout_demo import flask

@app.route("/", methods = ("GET",))
@app.route("/index", methods = ("GET",))
def index():
    return flask.render_template(
        "index.html.tpl",
        link = "home"
    )

@app.route("/form", methods = ("GET",))
def form():
    return flask.render_template(
        "form.html.tpl",
        link = "form",
        form = {},
        errors = {}
    )

@app.route("/form", methods = ("POST",))
def form_action():
    return flask.render_template(
        "form.html.tpl",
        link = "form",
        form = {},
        errors = {
            "name" : ["Invalid name"],
            "place" : ["Invalid place"],
            "country" : ["Invalid country"],
            "description" : ["Invalid description"],
            "prices" : ["Invalid prices"]
        }
    )

@app.route("/about", methods = ("GET",))
def about():
    return flask.render_template(
        "about.html.tpl",
        link = "about"
    )
