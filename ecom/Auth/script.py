import SpeechRecognition as sr

# Create a recognizer object
r = sr.Recognizer()

# Use the default microphone as the audio source
with sr.Microphone() as source:
    print("Speak something...")
    audio = r.listen(source)

    try:
        # Recognize speech using Google Speech Recognition
        text = r.recognize_google(audio)
        print("You said:", text)
    except sr.UnknownValueError:
        print("Sorry, I could not understand your speech.")
    except sr.RequestError as e:
        print("Sorry, an error occurred. Please check your internet connection.")
        