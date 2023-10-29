import { UserOPts } from '../types/opts'
import { readFileSync } from 'fs'
import defaultConf from './default'
import parseArgs from './flag'

const argv = process.argv.slice(2)
const FLAG_OPTS = parseArgs(argv) as UserOPts
const userOpts = defaultConf(FLAG_OPTS)
const JSON_LOC = userOpts.dir || ''
if (!JSON_LOC.match(/.*\.json/gim)) {
  throw Error('your configs not json file')
}
const configs = JSON.parse(readFileSync(JSON_LOC, { encoding: 'utf8' }))
export default configs