# note that this is executed from client project folder, after `npm install`
npm run build && npm run test:build && npm run test -- --browsers=SeleniumChrome --reporters=junit,html,verbose
