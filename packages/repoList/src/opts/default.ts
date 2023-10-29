import { UserOPts } from '../types/opts'
export default function defaultConf(conf: UserOPts) {
  const ENV = process.env
  if (conf.dir === undefined && conf.d === undefined) {
    const gitWorkspace = ENV.MURYP_GIT_WORKSPACE
    if (gitWorkspace === undefined) {
      throw new Error('configs dir not defind! use "--dir <dir-location>" or "export MURYP_GIT_WORKSPACE=<dir>"')
    }
    conf.dir = gitWorkspace
  }
  return conf
}