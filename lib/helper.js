/**
 * Gracefully shut down
 * @param {object} server app http server
 * @param {object} options 
 * @returns 
 */
function terminate(server, options = { coredump: false, timeout: 500 }) {
    // Exit function
    // console.log(`signal received: ${options.coredump}`);

    const exit = code => {
        options.coredump ? process.abort() : process.exit(code);
    };

    return (code, reason) => (err, promise) => {
        if (err && err instanceof Error) {
            // Log error information, use a proper logging library here :)
            console.log(err.message, err.stack);
        }

        // Attempt a graceful shutdown
        server.close(exit);
        setTimeout(exit, options.timeout).unref();
    };
}

/**
 * Convert date/time to string as defined
 * @returns string
 */
function formatedTimestamp() {
    const d = new Date();
    const date = d.toISOString().split('T')[0].replace(/-/g, '_');
    const time = d.toTimeString().split(' ')[0].replace(/:/g, '_');
    return `${date}_${time}`;
}

module.exports = { terminate, formatedTimestamp };
