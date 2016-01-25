// Hive Layout Framework
// Copyright (c) 2008-2015 Hive Solutions Lda.
//
// This file is part of Hive Layout Framework.
//
// Hive Layout Framework is free software: you can redistribute it and/or modify
// it under the terms of the GNU General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.
//
// Hive Layout Framework is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
// GNU General Public License for more details.
//
// You should have received a copy of the GNU General Public License
// along with Hive Layout Framework. If not, see <http://www.gnu.org/licenses/>.

// __author__    = João Magalhães <joamag@hive.pt>
// __version__   = 1.0.0
// __revision__  = $LastChangedRevision$
// __date__      = $LastChangedDate$
// __copyright__ = Copyright (c) 2008-2015 Hive Solutions Lda.
// __license__   = GNU General Public License (GPL), Version 3

(function(jQuery) {
    jQuery.fn.uapply = function(options) {
        // sets the jquery matched object
        var matchedObject = this;

        // retrieves the reference to the complete set of progress
        // bar elements and register them for the click event
        var progressBar = jQuery(".progress-bar", matchedObject);
        progressBar.click(function() {
            // retrieves the current element and sets the initial
            // percentage value to zero
            var element = jQuery(this);
            var percentage = 0;

            // creates an interaval for the update of the percentage
            // in the progress bar (using clojure)
            var interval = setInterval(function() {
                // increments the percentage value by one
                percentage += 1;

                // in case the percentage has overflow must cancel
                // the interval and return immediately
                if (percentage > 100) {
                    clearInterval(interval);
                    return;
                }

                // updates the progress bar value to the new percentage
                // value using a direct method call
                element.uxprogressbar("change", {
                    percentage: percentage
                });
            }, 20);
        });
    };
})(jQuery);

jQuery(document).ready(function() {
    var _body = jQuery("body");
    _body.bind("applied", function(event, base) {
        base.uapply();
    });
});
