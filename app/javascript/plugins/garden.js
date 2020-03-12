import Sortable from 'sortablejs/modular/sortable.complete.esm.js';


const cloning = () => {
new Sortable(example3Left, {
    group: {
        name: 'shared',
        pull: 'clone'
    },
    // animation: 150
});

new Sortable(example3Right, {
    group: {
        name: 'shared',
        pull: 'clone'
    },
    // animation: 150
});
};





export { cloning };
