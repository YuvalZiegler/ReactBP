class Proxy extends Emitter
  constructor: (store)->
    @store = store
    @listeners = store.allListeners()

  get:(key)->
    @store.get(key)


