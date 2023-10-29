export default function Cmd() {
  const USER_CMD = process.argv.slice(2)[0]
  if (USER_CMD.match(/^-/)) {
    throw Error('command not found. gitw help for help.')
  }
  console.log(USER_CMD)
  const myfunc = () => console.log('cmd')
  const LIST_CMD = [
    ['clone', myfunc],
    ['add', myfunc],
    ['change', myfunc],
    ['remove', myfunc],
    ['help', myfunc],
  ] as [string, () => void][]
  LIST_CMD.forEach((val) => {
    if (val[0] === USER_CMD) {
      return val[1]()
    }
  })
  throw Error('command not found. gitw help for help.')
}