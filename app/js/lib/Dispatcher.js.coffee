class Dispatcher
  @callbacks = []

  getCallbacks:(action)->
    @callbacks.filter( (defn)->
      defn.action == action
    ).map( (defn) ->
      defn.callback
    )

  dispatch: (action, args...)->

    Promise.all(
      @getCallbacks(action).map (callback)->
        callback.apply(callback, args)
    )

  register: (action, callback)->
    @callbacks.push
      action  : action
      callback: callback


