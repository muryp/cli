import { input, confirm, choices } from '@muryp/prompt'

interface remoteList {
  REMOTE_NAME: string
  REMOTE_HOST?: string
  REMOTE_URL?: string
  REMOTE_USR?: string
  REMOTE_REPO?: string
}
export default async function answerAdd() {
  const TITTLE = await input('What is your username?')
  const isUseSSH = await confirm('Did you want use ssh?')
  const isDepth1 = await confirm('want use depth 1?')
  const LIST_REMOTE: remoteList[] = []
  const addRemote = async () => {
    const REMOTE_NAME = await input('remote name ?')
    const REMOTE_HOST = await choices({
      message: 'remote host :',
      choices: ['github', 'gitlab', 'bitbucket', 'etc'],
      multiple: false,
    })
    // if host unkwown
    if (REMOTE_HOST === 'etc') {
      const REMOTE_URL = await input('remote name ?')
      LIST_REMOTE.push({ REMOTE_URL, REMOTE_NAME })
    } else {
      const REMOTE_USR = await input('username :')
      const REMOTE_REPO = await input('repo name :')
      LIST_REMOTE.push({ REMOTE_USR, REMOTE_REPO, REMOTE_NAME })
    }
  }
  await addRemote()
  const moreRemote = async () => {
    const isMoreRemote = await confirm('more remote ?')
    if (isMoreRemote) {
      await addRemote()
      await moreRemote()
    }
  }
  await moreRemote()
  return { TITTLE, LIST_REMOTE, isUseSSH, isDepth1 }
}