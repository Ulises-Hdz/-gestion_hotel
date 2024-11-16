async function reservar(habitacionId) {
    const cliente = prompt("Introduce tu nombre:");
    if (!cliente) return;

    try {
        const response = await fetch('/reservar', {
            method: 'POST',
            headers: { 'Content-Type': 'application/json' },
            body: JSON.stringify({ id: habitacionId, cliente })
        });

        if (!response.ok) {
            const error = await response.json();
            alert(error.error);
            return;
        }

        const data = await response.json();
        alert(data.mensaje);
        location.reload(); // Recarga la página para reflejar los cambios
    } catch (error) {
        console.error("Error al reservar:", error);
        alert("Ocurrió un error al procesar la reserva.");
    }
}
