const shell = require('shelljs');
const file = './override-npm-command.sh';

shell.chmod('+x', file);
shell.exec(`source ${file}`);
shell.exec('source ~/.bashrc')
