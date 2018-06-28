// function readSeriousURL(input) {
//   if (input.files && input.files[0]) {
//     var reader = new FileReader();

//     reader.onload = function (e) {
//       var target = $('#user_serious_photo_preview');
//       if(target) {
//         target
//           .attr('src', e.target.result)
//           .height(150);
//       } else {
//         console.error("Not able to find #user_serious_photo_preview");
//       };
//     };

//     reader.readAsDataURL(input.files[0]);
//   }
// }

// function readSillyURL(input) {
//   if (input.files && input.files[0]) {
//     var reader = new FileReader();

//     reader.onload = function (e) {
//       var target = $('#user_silly_photo_preview');
//       if(target) {
//         target
//           .attr('src', e.target.result)
//           .height(150);
//       } else {
//         console.error("Not able to find #user_silly_photo_preview");
//       };
//     };

//     reader.readAsDataURL(input.files[0]);
//   }
// }

// function readMainURL(input) {
//   if (input.files && input.files[0]) {
//     var reader = new FileReader();

//     reader.onload = function (e) {
//       var target = $('#user_main_id_preview');
//       if(target) {
//         target
//           .attr('src', e.target.result)
//           .height(150);
//       } else {
//         console.error("Not able to find #user_main_id_preview");
//       };
//     };

//     reader.readAsDataURL(input.files[0]);
//   }
// }