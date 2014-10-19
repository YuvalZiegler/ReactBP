class Store extends Emitter

  @data = {}

  has: (key)->
    @data.hasOwnProperty key

  get:  (key)->
    @data[key]

  set: (key,value)->
    changeset = {}
    data = key
    if value?
      data = {}
      data[key] = value

    Object.keys(data).forEach( (key)->

      oldValue = @get key
      val    = data[key]

      changeset[key] =  oldValue
      @data[key]     =  val

      @emit "change:" + key, val, oldValue
    , @ )

    @emit "change", changeset

  unset: (key)->
    if @has(key)
      oldValue = @get(key)
      delete @data[key]

      @emit "change:" + key, undefined, oldValue

  clear: ->
    changeset={}

    Object.keys(@data).forEach( (key)->
      changeset[key] = @get(key)
      @unset(key);
    ,@)

    @emit "change", changeset

