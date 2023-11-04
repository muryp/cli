import commandLineUsage from 'command-line-usage'
import header from './HeaderHelp.json'
import sections from './help.json'

export default function help() {
  const help = [...header, ...sections]
  const usage = commandLineUsage(help)
  console.log(usage)
}