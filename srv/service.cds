using { S4HCP_ServiceOrder_Odata } from './external/S4HCP_ServiceOrder_Odata.cds';

using { FrostYuan_STUDENTG30 as my } from '../db/schema.cds';

@path : '/service/frostYuan_STUDENTG30'
service frostYuan_STUDENTG30Srv
{
    @odata.draft.enabled
    entity CustomerMessage as
        projection on my.CustomerMessage
        actions
        {
            @cds.odata.bindingparameter.name : '_it'
            @Common.SideEffects : 
            {
                TargetProperties :
                [
                    '_it/suggestedResponseEnglish',
                    '_it/suggestedResponseCustomerLanguage'
                ]
            }
            action Action1
            (
            );
            @(
            cds.odata.bindingparameter.name: '_it',
            Common.SideEffects: {TargetProperties: ['_it/S4HCP_ServiceOrder_ServiceOrder']}
            )

            action Action2
            (
            );
        };

    entity A_ServiceOrder as
        projection on S4HCP_ServiceOrder_Odata.A_ServiceOrder
        {
            ServiceOrder,
            ServiceOrderDescription
        };

    @odata.draft.enabled
    entity ProductFAQ as
        projection on my.ProductFAQ
        {
            ID,
            issue,
            question,
            answer
        };
}

annotate frostYuan_STUDENTG30Srv with @requires :
[
    'authenticated-user'
];
