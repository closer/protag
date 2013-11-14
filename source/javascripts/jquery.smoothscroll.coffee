(($)->

  $.fn.extend
    smoothScrollTo: (speed, easing)->
      if !$(@)[0].hash || $(@)[0].hash == "#"
        return false
      @.each ->
        targetOffset = $($(@)[0].hash).offset().top - 50
        $('html,body').animate
          scrollTop: targetOffset
        , speed, easing

    scrolize: ->
      $(@).click ->
        $(@).smoothScrollTo 500, 'swing'
        return false
      return this

  $ ->
    $('a[href^=#]:not(.no-scroll)').scrolize()

)(jQuery)
