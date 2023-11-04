import commandLineUsage from 'command-line-usage'
import sections from './help.json'
import header from '../HeaderHelp.json'

export default function help() {
  const help = [...header, ...sections]
  const usage = commandLineUsage(help)
  console.log(usage)
}