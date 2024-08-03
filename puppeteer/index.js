// index.js
const puppeteer = require('puppeteer');

(async () => {
    const browser = await puppeteer.launch();
    const page = await browser.newPage();

    await page.goto('http://localhost:8000/CV.html', {
      waitUntil: 'networkidle2'
    });

    await page.pdf({
        path: '/home/pptuser/puppeteer/cv.pdf',
        format: 'letter',
    });

    await browser.close();
})();

