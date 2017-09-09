# README

This README would normally document whatever steps are necessary to get the
application up and running.

But instead I'm gonna use it as a planning document.

<!-- TODO: Create object for storing email addresses for peeps who aren't Canadian, but are interested.
  TODO: Import Country Gem - so that there's a standardized list of countries.

TODO: Add passport_picture and personal_picture to user model - finish it in the views too.

TODO: Update verification methods in User.rb to a single one, with an 'medium' parameter that changes the medium that gets verified. (not really needed, just some cool meta-programming fun)

TODO: What is the accepted way to create a random, unique token for users? This is for email verification. Phone and Address should be easy, small, unique numbers.

For reference, there's one website that already does address verification... Couchsurfer.com or whatever. They have  -->

TODO:
<!-- - get the information submission page finished. Get everything on one page, no multi-page breakdown, nothing fancy. Just a web form.
- Get it set up with Fog, so everything is stored in the cloud.
- Once it's submitted and saved to the DB, start working on the admin.


- Sign in

- Sign up

- Logout

- Verification Submission -->


user

user can access an array of all previous Id's, photo's, and interviews.

<!-- At any given time, -->

User has many photos. There is currently a form to add a new one, but doesn't show the existing ones. I need to show the existing ones seperately, with actions available to either delete the records, or make them the main photo.

I'll also need to limit the number of photos they can have uploaded. Say to 10 photos, and 3 videos.

<!--  -->

Also, maybe thge form needs to have the fields for new records of each, but able to take multiple as well. The form can submit multiple new records (up to a maximum).

My Simple form is showing me empty fields for all



<!--  -->

Okay - I need to abstract this out /

<!--  -->

Okay, again. Create a new endpoint for the media creation??


<!--  -->

Video - only single. They play existing video, or replace it.


Main ID - up to 4 photos. NEED Birth Certificate OR passport.
  - Drivers license - front and back
  - passport just the ID page.
  - Birth Certificate front and back


Supporting ID allowed for passport application:
  - military ID
  - driver's license that is issued by a province or territory or the equivalent abroad
  - Certificate of Indian Status
  - Canadian passport
  - foreign passport that meets the requirements
  - non-driver's license issued by a province or territory
  - ID card issued by the federal, provincial or territorial government
  - employee identification issued by the federal, provincial or territorial government
