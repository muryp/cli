import commandLineArgs from 'command-line-args'
// import answerAdd from './input'
import { OptionDefinition } from 'command-line-args'
import help from './help'

export interface TaddcommandLineArgs {
  tittle: string
  ssh: boolean
  depth1: boolean
  'list-remote': string
}
export default function add(argv: string[]) {
  const mergeDefinitions: OptionDefinition[] = [
    { name: 'path', alias: 'p', type: String, multiple: true, defaultOption: true },
    { name: 'tittle', alias: 't', type: String },
    { name: 'ssh', alias: 's', type: Boolean },
    { name: 'depth1', alias: 'd', type: Boolean },
    { name: 'list-remote', alias: 'l', type: String },
    { name: 'help', alias: 'h', type: Boolean },
  ]
  const mergeOptions = commandLineArgs(mergeDefinitions, { argv })
  if (mergeOptions.help || Object.keys(mergeOptions).length === 0) {
    return help()
  }
  console.log(mergeOptions)
  // const USER_INPUT = answerAdd(mergeOptions)
  // console.log(USER_INPUT)
}