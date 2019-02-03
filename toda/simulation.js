var {candidate, voter}  =  require('./template');
var {addVvoter, addCandidate} = require('./api');

var candidates = [
    Object.assign({}, candidate, {name:'A'}),
    Object.assign({}, candidate, {name:'B'}),
];

var voters = [
    Object.assign(voter, {name:'1'}),
    Object.assign(voter, {name:'2'}),
];



candidates.forEach(a => addCandidate(a));