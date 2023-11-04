// eslint-disable-next-line @typescript-eslint/no-var-requires
const { AutoComplete } = require('enquirer')
import { prompt } from 'enquirer'

interface args {
  message: string,
  choices: string[],
  callback?: (answer: RTCOfferAnswerOptions) => void
  multiple?: boolean
}

export const input = async (message: string) => {
  const { answer } = await prompt({
    type: 'input',
    name: 'answer',
    message,
  }) as { answer: string }
  return answer
}

export const confirm = async (message: string) => {
  const { answer } = await prompt({
    type: 'confirm',
    name: 'answer',
    message,
  }) as { answer: boolean }
  return answer
}

export function choices({ message, choices, callback, multiple }: args): Promise<string | void> {
  if (multiple == undefined) {
    multiple = true
  }
  const prompt = new AutoComplete({
    name: 'answer',
    message,
    limit: 10,
    multiple,
    choices,
  })

  if (callback) {
    prompt.run()
      .then((answer: RTCOfferAnswerOptions) => callback(answer))
      .catch(console.error)
  }
  return prompt.run()
}