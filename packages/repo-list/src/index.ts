#!/usr/bin/env node
import commandLineArgs from 'command-line-args'
import { add, change, clone, find, help } from './cmd'

const mainDefinitions = [
  { name: 'command', defaultOption: true },
]
const mainOptions = commandLineArgs(mainDefinitions, { stopAtFirstUnknown: true })
const argv = mainOptions._unknown || []
try {
  switch (mainOptions.command) {
  case 'add':
    add(argv)
    break
  case 'change':
    change(argv)
    break
  case 'clone':
    clone(argv)
    break
  case 'find':
    find(argv)
    break
  default:
    help()
  }

} catch (e: unknown) {
  if (typeof e === 'string') {
    console.log(`\x1b[31m error : ${e} \x1b[0m`)
  } else if (e instanceof Error) {
    console.log(`\x1b[31m error : ${e.message} \x1b[0m`)
  } else {
    console.log('\x1b[31m error : unknown \x1b[0m')
  }
}