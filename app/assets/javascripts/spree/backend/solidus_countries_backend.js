// Placeholder manifest file.
// the installer will append this file to the app vendored assets here: vendor/assets/javascripts/spree/backend/all.js'

$(document).ready(function(){
  $(".country-select-observer").on('change', function() {
    var target = $(this).data("update");
    $(target).hide();
    Spree.ajax({ dataType: 'html',
      url: $(this).data("base-url")+encodeURIComponent($(this).val()),
      type: 'get',
      success: function(data){
        $(target).html(data);
        $(target).show();
      }
    });
  });
});
