//
window.copy2clip = function(id) {
  var copyText = document.getElementById(id);
  copyText.select();
  //copyText.setSelectionRange(0, 99999); // For mobile devices
  navigator.clipboard.writeText(copyText.value);
  // Alert the copied text
  jQuery('#message-'+id).removeClass('hidden');
  setTimeout(() => {
    jQuery('#message-'+id).addClass('hidden');
  }, "3000");
}
//
window.slideTo = function(to_step, step_id) {
  //var step_id = parseInt(jQuery('.step:visible')[0].id.split('-')[1]);
  console.log("THIS STEP:", step_id);
  var current_step = jQuery('#step-' + step_id);
  var transition = ['right-in', 'left-out'];
  if ( to_step < step_id ) {
    transition = ['left-in', 'right-out'];
  }
  //var to_step = step_id + num;
  console.log("Last STEP:", to_step);
  var container = jQuery('#steps');
  var next_step = jQuery('#step-' + to_step);
  container.removeClass('container-transition');
  container.addClass('container-transition');
  current_step.addClass(transition[1]);
  next_step.addClass(transition[0]);
  next_step.removeClass('hidden');
  setTimeout(function () {
    current_step.addClass('hidden');
    current_step.removeClass(transition[1]);
    next_step.removeClass(transition[0]);
  }, 2000);
}
$('.fa-xmark').click(() => {
  $('.overlay').addClass('hidden');
});
