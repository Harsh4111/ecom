<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Sign-Up.aspx.cs" Inherits="ecom.Auth.WebForm2" %>




<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Speech Recognition</title>
    <link href="../Content/Css/Authcs.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
  <div class="row">
    <div class="col-md-8 offset-md-2">
      <div id="chat-container">
        <div id="chat-window">
          <div id="chat-output"></div>
        </div>
        <input type="text" id="user-input" placeholder="Type your message...">
        <button id="send-btn">Send</button>
      </div>
    </div>
  </div>
</div>


        <div>
            <asp:Button ID="startButton" runat="server" Text="Start Recording" OnClientClick="startRecording(); return false;" UseSubmitBehavior="false" />
            <div id="result" runat="server"></div>
        </div>
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@tensorflow/tfjs"></script>
    </form>
    <script>
        function handleSpeechRecognition(event) {
            const result = event.results[0][0].transcript;
            document.getElementById('<%= result.ClientID %>').innerText = 'You said: ' + result;

            // Send the result to the server for further processing
            const xhr = new XMLHttpRequest();
            xhr.open('POST', 'Default.aspx/ProcessSpeech', true);
            xhr.setRequestHeader('Content-Type', 'application/json');
            xhr.send(JSON.stringify({ text: result }));
        }

        function startRecording() {
            const recognition = new webkitSpeechRecognition();
            recognition.lang = 'en-US';
            recognition.onresult = handleSpeechRecognition;
            recognition.onerror = (event) => {
                console.error('Speech recognition error:', event.error);
            };
            recognition.start();
        }
        
</script>
    <script>
        $(document).ready(function () {
            $('#send-btn').click(function () {
                sendMessage();
            });

            $('#user-input').keypress(function (e) {
                if (e.which == 13) {
                    sendMessage();
                }
            });

            function sendMessage() {
                var userInput = $('#user-input').val();
                if (userInput.trim() === '') return;
                $('#chat-output').append('<div class="msg-container"><div class="user-msg">' + userInput + '</div></div>');
                $('#user-input').val('');
                sendToAssistant(userInput);
            }

            function sendToAssistant(userInput) {
                // You can add your AI assistant logic here to process the user input and generate a response
                // For demo purpose, let's just echo the user input
                setTimeout(function () {
                    $('#chat-output').append('<div class="msg-container"><div class="ai-msg">AI: ' + userInput + '</div></div>');
                    $('#chat-output').scrollTop($('#chat-output')[0].scrollHeight);
                }, 500);
            }
        });
</script>
</body>
</html>