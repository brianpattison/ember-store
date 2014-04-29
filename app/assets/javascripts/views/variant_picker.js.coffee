EmberStore.VariantPicker = Ember.TextField.extend
  didInsertElement: ->
    view = this
    $('#' + this.elementId).select2
      width: '500px'
      ajax:
        url: '/api/variants'
        datatype: "json"
        data: (term, page) ->
          q:
            name_cont: term
        results: (data, page) ->
          results: data["variants"]
      formatResult: (variant) ->
        variant.name
      formatSelection: (variant) ->
        view.set('variant', variant)
        variant.name

  change: (e) ->
    this.sendAction('action', this.get('variant'))
