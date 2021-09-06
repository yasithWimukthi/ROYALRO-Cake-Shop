let updateDecorationModal = document.getElementById('updateModal')
updateDEcorationModal.addEventListener('show.bs.modal', function (event) {
    let button = event.relatedTarget
    let name = button.getAttribute('data-bs-name')
    let description = button.getAttribute('data-bs-description')
    let price = button.getAttribute('data-bs-price')
    let category = button.getAttribute('data-bs-category')
    let id = button.getAttribute('data-bs-id')
    let image = button.getAttribute('data-bs-image')

    updateDecorationModal.querySelector('#update-name-input').value = name;
    updateDecorationModal.querySelector('#update-price-input').value = price;
    updateDecorationModal.querySelector('#update-category-input').value = category;
    updateDecorationModal.querySelector('#update-description').value = description;
    updateDecorationModal.querySelector('#updateCakeId').value = id;
    updateDecorationModal.querySelector('#updateImage').value = image;
})

let deleteDecorationModal = document.getElementById('deleteDecorationModal')
deleteDecorationModal.addEventListener('show.bs.modal', function (event) {
    let button = event.relatedTarget
    let id = button.getAttribute('data-bs-id')
    let name = button.getAttribute('data-bs-name')

    deleteDecorationModal.querySelector('#deleteDecorationId').value = id;
    deleteDecorationModal.querySelector('#deleteName').innerHTML = name;
})
