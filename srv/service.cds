using { S4HCP_ServiceOrder_Odata } from './external/S4HCP_ServiceOrder_Odata.cds';

using { FrostYuan_STUDENTG30 as my } from '../db/schema.cds';

@path : '/service/frostYuan_STUDENTG30'
service frostYuan_STUDENTG30Srv
{
    @odata.draft.enabled
    entity CustomerMessage as
        projection on my.CustomerMessage;

    entity A_ServiceOrder as
        projection on S4HCP_ServiceOrder_Odata.A_ServiceOrder
        {
            ServiceOrder,
            ServiceOrderDescription
        };
}

annotate frostYuan_STUDENTG30Srv with @requires :
[
    'authenticated-user'
];
