document.addEventListener('DOMContentLoaded', function(){
  var cards = document.querySelectorAll('.equipment-card');
  cards.forEach(function(card) {
      card.addEventListener('click', function() {
          this.querySelector('.equipment-card-inner').classList.toggle('flipped');
      });
  });
});
