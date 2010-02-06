Ajax.Responders.register({
   onComplete: function(request, transport, json) {
     if(!request.success()) {
       
       var errorMessage = ['Unknown Error', 'An error occurred, but could not be determined correctly.'];
       
       if (transport.responseJSON && transport.responseJSON.error)
          errorMessage = [transport.responseJSON.error.title, transport.responseJSON.error.message]
       
       Growl.Bezel({
         title: errorMessage[0],
         text: errorMessage[1],
         image: '/images/growl_warning.png',
         duration: 2
       });
     }
   }
});