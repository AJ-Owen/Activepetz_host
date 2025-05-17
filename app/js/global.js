

/**
 * adds animation to selected elements within ioConfiguration scope
 * @param {*} entries 
 * @param {*} o 
 */
const elementHasIntersected = (entries, o) => {
    entries.forEach((entry) => {
        if (entry.isIntersecting) {
            // get animation type from dictionary
            entry.target.classList.add(animatedElements[entry.target.id.toString()]);
            entry.target.classList.add("animate__animated");
            entry.target.classList.remove("animated");

        }
    });
};


/**
 * config for animation trigger
 */
const ioConfiguration = {
    /**
     * This rootMargin creates a horizontal line vertically centered
     * that will help trigger an intersection at that the very point.
     */
    rootMargin: '-15% 0% -15% 0%',

    /**
     * This is the default so you could remove it.
     * I just wanted to leave it here to make it more explicit
     * as this threshold is the only one that works with the above
     * rootMargin
     */
    threshold: 0
};

const observer = new IntersectionObserver(elementHasIntersected, ioConfiguration);

/**
 * loop through all animated elements
 */
for (let element in animatedElements) {
    console.log(element)
    observer.observe(document.querySelector("#"+element));
}
