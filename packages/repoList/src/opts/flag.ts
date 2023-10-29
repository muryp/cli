export default function parseArgs(argv: string[]) {
  const args: { [key: string]: string } = {}
  for (let i = 0; i < argv.length; i++) {
    const arg = argv[i]
    if (arg.startsWith('--')) {
      const name = arg.slice(2)
      const value = argv[i + 1]
      if (!args[name]) {
        args[name] = value
      } else {
        throw new Error(`ERR: Duplicate argument --${name}`)
      }
    } else if (arg.startsWith('-')) {
      const name = arg.slice(1)
      const value = argv[i + 1]
      if (!args[name]) {
        args[name] = value
      } else {
        throw new Error(`ERR: Duplicate argument --${name}`)
      }
    }
  }

  return args
}
