App.LeadRoute = Ember.Route.extend
  model: (params) -> @store.find 'lead', params.id

  showUnsavedMessage: ( ->
    @get('isDirty') and !@get('isSaving')
  ).property('isDirty', 'isSaving')
