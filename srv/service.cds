using { FrostYuan_STUDENTG30 as my } from '../db/schema.cds';

@path: '/service/frostYuan_STUDENTG30'
@requires: 'authenticated-user'
service frostYuan_STUDENTG30Srv {
  @odata.draft.enabled
  entity CustomerMessage as projection on my.CustomerMessage;
}