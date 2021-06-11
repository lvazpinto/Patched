import "jquery-bar-rating";
import $ from 'jquery'; // <-- if you're NOT using a Le Wagon template (cf jQuery section)

const initStarRating = () => {
  $('#patch_hours_of_sun').barrating({
    theme: 'css-stars'
  });
};

export { initStarRating };
