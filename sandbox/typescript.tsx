//This is an example Typescript file where you can try out various plugins that have been installed in the nvim-mini configuration.

export default function Page() {

    //Example comment
    console.log("Hello world!");
    helloWorldFunc();
    return;
}

const PUBLIC = "PUB"

const booleanTest: Boolean = true

const helloWorldFunc = () => {
    booleanTest
    return "Hello world";
}