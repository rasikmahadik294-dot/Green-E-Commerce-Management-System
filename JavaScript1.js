document.getElementById('quiz-form').addEventListener('submit', function (e) {
    e.preventDefault(); // Prevent form submission

    let score = 0;
    const answers = {
        question1: 'c', // Correct answer for question 1
        question2: 'b'  // Correct answer for question 2
    };

    // Check answers
    const userAnswers = {
        question1: document.querySelector('input[name="question1"]:checked')?.value,
        question2: document.querySelector('input[name="question2"]:checked')?.value
    };

    for (const question in answers) {
        if (userAnswers[question] === answers[question]) {
            score++;
        }
    }

    // Display result
    const resultDiv = document.getElementById('result');
    resultDiv.style.display = 'block';
    resultDiv.textContent = `You scored ${score} out of ${Object.keys(answers).length}.`;
});
