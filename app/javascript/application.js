// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"
import "jquery"
import "channels"

let scrollBottom = () => {
    let field = $('.messages-field')
    if (field.length > 0) {
        field.scrollTop(field[0].scrollHeight)
    }
}

$(document).on('turbo:load', () => {
    const htmlTag = document.documentElement

    $('.theme-toggle').on('click', () => {
        if (htmlTag.getAttribute('data-theme') === 'dark') {
           htmlTag.setAttribute('data-theme', 'light')
        }
        else {
            htmlTag.setAttribute('data-theme', 'dark')
        }
    })
    scrollBottom()
})