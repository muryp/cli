export interface globalOpts {
  dir?: string
  d?: string
}
export interface addOpts extends globalOpts {
  tittle: string;
  t: string;
  'list-remote': string;
  lr: string;
  isUseSSH: string;
  s: string;
  isDepth1: string;
  d: string;
}
export type UserOPts = addOpts