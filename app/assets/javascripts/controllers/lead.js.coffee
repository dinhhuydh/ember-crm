App.LeadController = Ember.ObjectController.extend

  isEditing: false
  actions:
    saveChanges: -> @get('model').save()
     isEditing: falsesEditing: false

    delete: ->
      @get('model').destroyRecord().then =>
        @transitionToRoute 'leads'
