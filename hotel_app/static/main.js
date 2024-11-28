document.addEventListener('DOMContentLoaded', function () {
    if (document.getElementById('reservationForm')) {
        document.getElementById('reservationForm').addEventListener('submit', function (event) {
            event.preventDefault();
            const roomNumber = document.getElementById('room_number').value;
            const guestName = document.getElementById('guest_name').value;
            const roomType = document.getElementById('room_type').value
            fetch('/register' , {
                method: 'POST',
                headers: {
                    'Content-Type': 'application/json'
                },
                body: JSON.stringify({ room_number: roomNumber, guest_name: guestName , room_type: roomType })
            })
                .then(response => response.json())
                .then(data => {
                    alert(data.message);
                    document.getElementById('reservationForm').reset();
                })
                .catch(error => console.error('Error:', error));
        });
    }
});


