# For more information see: http://emberjs.com/guides/routing/

#App.Route.reopen
  #rootURL: '/'
  #location: 'auto'

App.Router.map ()->
  @resource 'leads', path: '/', ->
    @resource 'lead', path: '/leads/:id', ->
      @route 'edit'

