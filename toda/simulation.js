var {candidate, voter, vote}  =  require('./template');
var { addVoter, addCandidate} = require('./api');
var extend = require('extend');

var candidates = [
    extend( true, candidate, {data:{attributes:{contact:{"first-name":"A"}}}} ),
    extend( true, candidate, {data:{attributes:{contact:{"first-name":"B"}}}} ),
    extend( true, candidate, {data:{attributes:{contact:{"first-name":"C"}}}} ),

];

var voters = [
    extend( true, voter, {data:{attributes:{contact:{"first-name":"1"}}}} ),
    extend( true, voter, {data:{attributes:{contact:{"first-name":"2"}}}} ),
    extend( true, voter, {data:{attributes:{contact:{"first-name":"3"}}}} ),
    extend( true, voter, {data:{attributes:{contact:{"first-name":"4"}}}} ),
    extend( true, voter, {data:{attributes:{contact:{"first-name":"5"}}}} ),
    extend( true, voter, {data:{attributes:{contact:{"first-name":"6"}}}} ),
];



// candidates.forEach(addCandidate);
// voters.forEach(addVoter);

// addCandidate(candidates[0]).then(console.log);
// addVoter(voters[0]).then(console.log);