// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"

const adjustNav = () => {

const menu =  document.getElementById('navbarNavDarkDropdown')
  if(!menu.classList.contains('show')) {
    menu.style.maxWidth = '36%'
    menu.style.marginRight = '-1%'
  } 
}
document.addEventListener('DOMContentLoaded', adjustNav)
