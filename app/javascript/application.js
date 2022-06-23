// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
//= require jquery3
//= require popper
//= require bootstrap

import "controllers"
import "channels"
import "@hotwired/turbo-rails"

scroll_bot = $("#message").scrollTop($("#message")[0].scrollHeight);