var request = require('request-promise');

var apiURL = "https://api.todaqfinance.net";
var apiKey = '47b5806d-76e0-4c22-80f1-792e68cb75c5';


function apiRequest(method, endpoint, body) {
    return request(
        {
            headers: {
                'Content-Type': 'application/json',
                'x-api-key': apiKey,
            },
            json: true,
            body, method,
            uri: apiURL + endpoint
        },
        function (error, response, body) {
            if (error) {
                console.error("Error -", error);
            }
        })
}

function get(endpoint) {
    return apiRequest('GET', endpoint);
}

function post(endpoint, params) {
    return apiRequest('POST', endpoint, params);
}


function addCandidate(candidate) {
    return post('/accounts', candidate);
}

function listCandidates() {
    return get('/accounts');
}

function listVoters() {
    return get('/accounts')
}

function addVoter(voter, numberOfVotes) {
    return post('/accounts', voter);
}

module.exports = {addCandidate, addVoter, listCandidates, listVoters}; 