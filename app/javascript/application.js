// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"
import "jquery"

$(document).on('turbo:load', function() {
    const themeToggle = document.querySelector('.theme-toggle')
    const htmlTag = document.documentElement
    themeToggle.addEventListener('click', () => {
        if (htmlTag.getAttribute('data-theme') === 'dark') {
            htmlTag.setAttribute('data-theme', 'light')
        }
        else {
            htmlTag.setAttribute('data-theme', 'dark')
        }
    })
})