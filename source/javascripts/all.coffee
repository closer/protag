#= require jquery
#= require bootstrap
#= require jquery.smoothscroll
#= require_tree .

$ ->

  $(window).scroll (e)->
    $('#top').css 'background-position-y', ($(window).scrollTop() / 2)
