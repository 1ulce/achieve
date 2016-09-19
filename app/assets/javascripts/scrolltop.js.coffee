ready = ->
  $(window).scroll ->
    element = $('#page-top-btn')
    visible = element.is(':visible')
    element_200 = $('#page-top-btn-200')
    visible_200 = element_200.is(':visible')
    height = $(window).scrollTop()
    if height > 400
      element.fadeIn() if !visible
    else
      element.fadeOut()
    if height > 200
      element_200.fadeIn() if !visible_200
    else
      element_200.fadeOut()
  $(document).on 'click', '#move-page-top', ->
    $('html, body').animate({ scrollTop: 0 }, 'slow')
  $(document).on 'click', '#move-page-top-200', ->
    $('html, body').animate({ scrollTop: 0 }, 'slow')
$(document).ready(ready)
$(document).on('page:load', ready)