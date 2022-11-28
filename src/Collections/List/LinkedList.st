NAMESPACE Simatic.Ax.Collections
    CLASS LinkedList IMPLEMENTS ILinkedList
        VAR PRIVATE
            _tail : IListItem;
            _head : IListItem; 
            _count : INT;
        END_VAR

        METHOD PUBLIC FINAL Add : IListItem
            VAR_INPUT
                item : IListItem;
                join : BOOL := FALSE;
            END_VAR
            VAR_TEMP
                _oldHead : IMuteableListItem;
                _newHead : IMuteableListItem;
            END_VAR

            // empty list
            IF (_tail = NULL AND _head = NULL) THEN
                _tail := item;
                _head := item;
                _count := 1;
                IF (join) THEN 
                    THIS.Join();
                END_IF;
                Add := item;
                RETURN;
            END_IF;

            // old head set nextitem = new item
            _oldHead ?= _head; 
            _oldHead.SetNext(item);

            _newHead ?= item;
            _newHead.SetPrevious(_head);
            _head := item;
           
            _count := _count + 1;
            IF (join) THEN 
                THIS.Join();
            END_IF;
            Add := item;
        END_METHOD
        
        METHOD PUBLIC Remove : BOOL
            VAR_INPUT
                item : IListItem;
            END_VAR
            VAR_TEMP
                iItemM : IMuteableListItem;        
            END_VAR 
            // set new pointer to prevoius and next item
            // case: Empty list --> do nothing
            IF (_tail = _head  AND _tail = NULL) THEN   
                Remove := FALSE;
                RETURN;
            // case: just one item in list
            ELSIF (_tail = _head AND _tail = item) THEN
                _tail := NULL;
                _head := NULL;
                Remove := TRUE;
                // case: remove tail
            ELSIF (item = _tail) THEN
                iItemM ?= item.NextItem();
                _tail := item.NextItem();
                iItemM.SetPrevious(NULL);       
                Remove := TRUE;

            // case: remove head
            ELSIF (item = _head) THEN
                iItemM ?= item.PreviousItem();
                _head := item.PreviousItem();
                iItemM.SetNext(NULL);
                Remove := TRUE;                
            // case: remove between tail & head
            ELSE
                iItemM ?= item.PreviousItem();
                IF (iItemM) <> NULL THEN
                    iItemM.SetNext(item.NextItem());                
                ELSE
                    Remove := FALSE;
                    RETURN;
                END_IF;
                
                iItemM ?= item.NextItem();
                IF (iItemM) <> NULL THEN
                    iItemM.SetPrevious(item.PreviousItem());    
                ELSE
                    Remove := FALSE;
                    RETURN;
                END_IF;
                Remove := TRUE;
            END_IF;
            // delete item itself
            iItemM ?= item;
            IF (iItemM) <> NULL THEN
                iItemM.SetNext(NULL);
                iItemM.SetPrevious(NULL);
                Remove := TRUE;
            ELSE
                Remove := FALSE;
            END_IF;
            
        END_METHOD

        METHOD PRIVATE Join
            VAR_TEMP
                imuteList : IMuteableListItem;
            END_VAR

            imuteList ?= _head; 
            imuteList.SetNext(_tail);
            
            imuteList ?= _tail; 
            imuteList.SetPrevious(_head);
        END_METHOD

        METHOD PUBLIC Tail : IListItem
            Tail := _tail;
        END_METHOD

        METHOD PUBLIC Head : IListItem
            Head := _head;
        END_METHOD
    
        METHOD PUBLIC Count : INT
            Count := _count;
        END_METHOD
    END_CLASS

END_NAMESPACE