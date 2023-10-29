#!/usr/bin/env node
import { execSync, exec, spawn, spawnSync } from 'child_process'
const { Confirm, AutoComplete } = require('enquirer')
const something = require('@muryp/something')

try {
  // const tes = execSync('echo "val : $HELLOW"',{encoding:'utf8',env:{HELLOW:'okay guys'}})
  // console.log(tes)
  // Cmd()
  //   spawnSync(`
  // Some=$(fzf)
  // export HELLOW=$Some
  // `, {
  //     stdio: 'inherit',
  //     shell: true,
  //     encoding:'utf8',
  //   })
  //   console.log(process.env)

  console.log(something('hello world'))
  const prompt = new AutoComplete({
    name: 'flavor',
    message: 'Pick your favorite flavor',
    limit: 10,
    // initial: 2,
    footer() {
      return 'hello'
    },
    // sugges
    multiple: true,
    choices: [
      'Almond',
      'Apple',
      'Banana',
      'Blackberry',
      'Blueberry',
      'Cherry',
      'Chocolate',
      'Cinnamon',
      'Coconut',
      'Cranberry',
      'Grape',
      'Nougat',
      'Orange',
      'Pear',
      'Pineapple',
      'Raspberry',
      'Strawberry',
      'Vanilla',
      'Watermelon',
      'Wintergreen',
    ],
  })

  prompt.run()
    .then((answer: RTCOfferAnswerOptions) => console.log('Answer:', answer))
    .catch(console.error)
} catch (e: unknown) {
  if (typeof e === 'string') {
    console.log(`\x1b[31m error : ${e} \x1b[0m`)
  } else if (e instanceof Error) {
    console.log(`\x1b[31m error : ${e.message} \x1b[0m`)
  } else {
    console.log('\x1b[31m error : unknown \x1b[0m')
  }
}