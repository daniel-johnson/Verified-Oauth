function readURL(input) {
  if (input.files && input.files[0]) {
    var reader = new FileReader();

    reader.onload = function (e) {
      var target = $('#user_serious_photo_preview');
      if(target) {
        target
          .attr('src', e.target.result)
          .height(150);
        console.log("Target Exists");
      } else {
        console.error("Not able to find #user_serious_photo_preview");
      };
    };

    reader.readAsDataURL(input.files[0]);
  }
}