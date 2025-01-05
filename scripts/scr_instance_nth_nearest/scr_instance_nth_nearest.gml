function scr_instance_nth_nearest(xx, yy, obj, n)
//  Returns the id of the nth nearest instance of an object
//  to a given point or noone if none is found.
//
//      x,y       point coordinates, real
//      obj       object index (or all), real
//      n         proximity, real
//
/// GMLscripts.com/license
{
    var list,nearest;
    n = min(max(1,n),instance_number(obj));
    list = ds_priority_create();
    nearest = noone;
    with (obj) ds_priority_add(list, id, distance_to_point(xx, yy));
    repeat (n) nearest = ds_priority_delete_min(list);
    ds_priority_destroy(list);
    return nearest;
}