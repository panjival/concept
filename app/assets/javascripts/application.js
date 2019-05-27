// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require jquery.turbolinks
//= require rails-ujs
//= require turbolinks
//= require bootstrap
//= require bootstrap.min
//= require activestorage
//= require bootstrap-sprockets
//= require npm
//= require adminlte
//= require_tree .

$(document).on('ready', function() {
            if ($('.table-responsive').length > 0) {
                $('.table-responsive').responsiveTable({
                    addFocusBtn: false,
                    focusBtnIcon: 'fa fa-crosshairs',
                    stickyTableHeader: false
                });

                $('.table-responsive').mCustomScrollbar({
                    axis: "yx",
                    scrollInertia: 100,
                    mouseWheel: { scrollAmount: 75 },
                    theme: "minimal-dark",
                    autoExpandScrollbar: true,
                    callbacks: {
                        onInit: function() {
                            $(this).removeClass('mCS-autoHide');
                        }
                    }
                });
                console.log($('.table-responsive').position().top)
                resizeTable();
                $(window).resize(function() {
                    resizeTable();
                });

                function resizeTable() {
                    var contentHeight = $('body').height() - ($('.table-responsive').position().top + 180);
                    $('.table-responsive').css('max-height', contentHeight + 'px');
                }