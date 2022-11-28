NAMESPACE Simatic.Ax.Collections
    INTERFACE ILinkedList
        METHOD Head : IListItem
        END_METHOD
        METHOD Tail : IListItem
        END_METHOD
        METHOD Add : IListItem
            VAR_INPUT
                item : IListItem;
                join : BOOL;
            END_VAR
        END_METHOD
        METHOD Remove : BOOL
            VAR_INPUT
                item : IListItem;
            END_VAR
        END_METHOD
        METHOD Count : INT END_METHOD
    END_INTERFACE    
END_NAMESPACE