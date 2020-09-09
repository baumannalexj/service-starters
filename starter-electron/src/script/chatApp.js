let ws = null;
const echoApplicationUrl = "ws://localhost:8080/echo";

function setConnected(connected) {
    document.getElementById('connect').disabled = connected;
    document.getElementById('disconnect').disabled = !connected;
    document.getElementById('echo').disabled = !connected;
}

function connect() {
    log(`starting connection to ${echoApplicationUrl}`);
    ws = new WebSocket(echoApplicationUrl);
    ws.onopen = function () {
        setConnected(true);
        log('Info: Connection Established.');
    };

    ws.onmessage = function (event) {
        log(event.data);
    };

    ws.onclose = function (event) {
        setConnected(false);
        log('Info: Closing Connection.');
    };
}

function disconnect() {
    if (ws != null) {
        ws.close();
        ws = null;
    }
    setConnected(false);
}

function echo() {
    if (ws != null) {
        const message = document.getElementById('message').value;
        log(`Sent to server :: ${message}`);
        ws.send(message);
    } else {
        alert('connection not established, please connect.');
    }
}

function log(message) {
    const messageLogs = document.getElementById('logging');
    const p = document.createElement('p');
    p.appendChild(document.createTextNode(message));
    messageLogs.appendChild(p);
}