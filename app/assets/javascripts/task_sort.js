$(function() {
  $(document).on('change', '#sort_order', function(){
    var this_value = $(this).val();
    if (this_value == "importance_asc") {
      html = "tasks?&sort=importance_id+asc"
    } else if (this_value == "urgency_asc") {
      html = "tasks?&sort=urgency_id+asc"
    } else {
      html = ""
    };
    var current_html = window.location.href;
    
    //要リファクタリング。クリックごURLが残らないようにする必要あり
    //if (location['href'].match(/tasks?&sort=*.+/) != null) {
    //  var remove_html = location['href'].match(/tasks?&sort=*.+/)
    //  var current_html = current_html.replace(remove_html, '')
    //};
    window.location.href = current_html + html
  });
});