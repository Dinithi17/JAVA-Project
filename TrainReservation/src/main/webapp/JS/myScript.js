
    function checkPasswordMatch() {
        var password = document.getElementById("password1").value;
        var confirmPassword = document.getElementById("password2").value;

        if (password != confirmPassword) {
            alert("Passwords do not match!");
            return false;
        }
        return true;
    }

	function showConfirm() {
		
		const confirmResult = confirm("Are you sure you want to delete Profile");
		
	}
