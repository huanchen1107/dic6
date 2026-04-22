document.addEventListener('DOMContentLoaded', () => {
    const greetingEl = document.getElementById('greeting');
    const actionBtn = document.getElementById('action-btn');

    const greetings = [
        "Hello, World!",
        "Hola, Mundo!",
        "Bonjour, le Monde!",
        "Hallo, Welt!",
        "Ciao, Mondo!",
        "こんにちは世界",
        "Привет, мир!"
    ];

    let currentIndex = 0;

    actionBtn.addEventListener('click', () => {
        // Increment index and wrap around
        currentIndex = (currentIndex + 1) % greetings.length;
        
        // Add a subtle fade out/in effect
        greetingEl.style.opacity = '0';
        greetingEl.style.transform = 'translateY(10px)';
        
        setTimeout(() => {
            greetingEl.textContent = greetings[currentIndex];
            greetingEl.style.opacity = '1';
            greetingEl.style.transform = 'translateY(0)';
            greetingEl.style.transition = 'all 0.3s ease';
        }, 300);
    });
});
