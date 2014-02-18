#= require jquery/dist/jquery
#= require bootstrap
#= require jquery.smoothscroll
#= require_tree .

$ ->

  params = []
  speed = 1

  $('.bg-para').each ->
    self = $(@)
    self.css
      position: 'relative'
    wrapper = $('<div></div>')
    wrapper.css
      overflow: 'hidden'
    self.wrap(wrapper)
    wrapper = self.parent()
    params.push [self, wrapper]

  $(window).scroll (e)->
    stop = $(window).scrollTop() + 50
    for param in params
      [self, wrapper] = param
      sheight = self.height()
      wtop = wrapper.position().top
      top = (stop - wtop ) * speed
      if top > 0 && sheight - top > 0
        self.css 'top', top
      else
        self.css 'top', 0
