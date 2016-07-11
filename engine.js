//engine.js

function getRandom(max) {
    return Math.floor(Math.random()*max)
}

function toggleInitDiag() {
    initdiag.visible = !initdiag.visible
}

function initPlay() {
    //
    // TODO : clear the grid
    //
    //for ()
    //
}

function setUp() {
    //
    scorezone.debugstr = "up";
    //
    setPass();
}

function setDown() {
    //
    scorezone.debugstr = "down";
    //
    setPass();
}

function setRight() {
    //
    scorezone.debugstr = "right";
    //
    setPass();
}

function setLeft() {
    //
    scorezone.debugstr = "left";
    //
    setPass();
}

function setPass() {
    //
}
