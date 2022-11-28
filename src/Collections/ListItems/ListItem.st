NAMESPACE Simatic.Ax.Collections
    CLASS ListItem IMPLEMENTS IListItem, IMuteableListItem

        VAR PRIVATE
            _previous : IListItem;
            _next : IListItem;
        END_VAR

        METHOD PUBLIC FINAL HasNext : BOOL            
            HasNext := _next <> NULL;
        END_METHOD

        METHOD PUBLIC FINAL HasPrevious : BOOL
            HasPrevious := _previous <> NULL;            
        END_METHOD

        METHOD PUBLIC FINAL Item : IListItem
            Item := THIS;
        END_METHOD

        METHOD PUBLIC FINAL NextItem : IListItem
            IF (THIS.HasNext()) THEN
                NextItem := _next;
            ELSE
                NextItem := NULL;
            END_IF;
        END_METHOD

        METHOD PUBLIC FINAL PreviousItem : IListItem
            IF (THIS.HasPrevious()) THEN
                PreviousItem := _previous;
            ELSE
                PreviousItem := NULL;
            END_IF;
        END_METHOD

        METHOD PUBLIC FINAL SetNext
            VAR_INPUT
                nextItem : IListItem;
            END_VAR;
            _next := nextItem;
        END_METHOD
    
        METHOD PUBLIC FINAL SetPrevious
            VAR_INPUT
                prevItem : IListItem;
            END_VAR;
            _previous := prevItem;
        END_METHOD
    END_CLASS
END_NAMESPACE