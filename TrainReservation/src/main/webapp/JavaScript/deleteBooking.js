

document.addEventListener("DOMContentLoaded", function() {
    const form = document.querySelector("form");

    form.addEventListener("submit", function(event) {
        const confirmDelete = confirm("Are you sure you want to delete this booking?");
        if (!confirmDelete) {
            // Prevent form submission if user clicks "Cancel"
            event.preventDefault();
        }
    });
});