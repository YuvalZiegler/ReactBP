class Emitter 
  allListeners: ()->
    @listeners = [] unless @listeners
    @listeners

  clearListeners: ()->
    while @listeners.length
      @listeners.pop()

  getListeners:(type)->
    @allListeners().filter (defn)->
      defn.type == type

  emit:(type, args...)->
    @getListeners(type).forEach (defn)->
      defn.callback.apply(defn.context || defn.callback, args)


  on: (type, callback, context) ->
    @allListeners().push
      type    : type
      callback: callback
      context : context

  once: (type, callback, context)->
    wrap = () =>
      calback.apply @, arguments
      @off type, wrap

    @on type, wrap, context

  off: (type, callback)->
    listeners = @allListeners()
    i         = listeners.length
    unless type
      @clearListeners
      return

    while i--
      defn = listeners[i]

      if defn.type != type
        continue

      if !callback || defn.callback == callback
        listeners.splice i, 1


