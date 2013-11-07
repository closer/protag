#= require jquery
#= require bootstrap
#= require jquery.smoothscroll
#= require_tree .

$ ->

  params = []
  speed = 0.5

  $('.bg-para').each ->
    self = $(@)
    self.css
      position: 'absolute'
      width: '100%'
    sheight = self.height()
    wrapper = $('<div></div>')
    wrapper.css
      height: sheight
      overflow: 'hidden'
      position: 'relative'
    self.wrap(wrapper)
    wrapper = self.parent()
    sheight = wrapper.height()
    params.push [self, wrapper, sheight]

  $(window).scroll (e)->
    stop = $(window).scrollTop()
    for param in params
      [self, wrapper, sheight] = param
      wtop = wrapper.position().top
      top = (stop - wtop ) * speed
      console.log sheight - top
      if top > 0 && sheight - top > 0
        self.css 'top', top
      else
        self.css 'top', 0
