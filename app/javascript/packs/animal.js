function readUrl(input) {
  if (input.files && input.files[0]) {
    const reader = new FileReader();

    reader.onload = function(e) {
      const animalImagePreviewContainer = document.getElementById('animal-image-preview-container');
      const animalImagePreview = document.getElementById('animal-image-preview');

      animalImagePreviewContainer.style.display = '';
      animalImagePreview.src = e.target.result;
    }

    reader.readAsDataURL(input.files[0]);
  }
}

window.ready(function() {

  const animalPhoto = document.getElementById('animal_photo');

  animalPhoto.addEventListener('change', function() {
    readUrl(this);
  });
});
