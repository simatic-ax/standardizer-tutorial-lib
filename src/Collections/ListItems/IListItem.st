NAMESPACE Simatic.Ax.Collections
    INTERFACE IListItem
        METHOD HasNext : BOOL
        END_METHOD
        METHOD HasPrevious : BOOL
        END_METHOD
        METHOD Item : IListItem
        END_METHOD
        METHOD NextItem : IListItem
        END_METHOD
        METHOD PreviousItem : IListItem
        END_METHOD
    END_INTERFACE


    INTERFACE IMuteableListItem
        METHOD SetPrevious
            VAR_INPUT
                prevItem : IListItem;
            END_VAR
        END_METHOD
        METHOD SetNext
            VAR_INPUT
                nextItem : IListItem;
            END_VAR
        END_METHOD
    END_INTERFACE

END_NAMESPACE