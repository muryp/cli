export interface configs {
  name: string,
  remoteUrl: { repo: string, name: string }[],
  folder: string[],
  setting: {
    ssh: boolean,
    defaultHost: string,
    depth: number,
  },
}[]
