{
  "$GMObject":"",
  "%Name":"obj_npc_Xan",
  "eventList":[
    {"$GMEvent":"v1","%Name":"","collisionObjectId":null,"eventNum":0,"eventType":3,"isDnD":false,"name":"","resourceType":"GMEvent","resourceVersion":"2.0",},
    {"$GMEvent":"v1","%Name":"","collisionObjectId":null,"eventNum":1,"eventType":3,"isDnD":false,"name":"","resourceType":"GMEvent","resourceVersion":"2.0",},
  ],
  "managed":true,
  "name":"obj_npc_Xan",
  "overriddenProperties":[],
  "parent":{
    "name":"Xan Peppo",
    "path":"folders/Objects/Characters/Players/PCs/Xan Peppo.yy",
  },
  "parentObjectId":{
    "name":"obj_npc_parent",
    "path":"objects/obj_npc_parent/obj_npc_parent.yy",
  },
  "persistent":false,
  "physicsAngularDamping":0.1,
  "physicsDensity":0.5,
  "physicsFriction":0.2,
  "physicsGroup":1,
  "physicsKinematic":false,
  "physicsLinearDamping":0.1,
  "physicsObject":false,
  "physicsRestitution":0.1,
  "physicsSensor":false,
  "physicsShape":1,
  "physicsShapePoints":[],
  "physicsStartAwake":true,
  "properties":[
    {"$GMObjectProperty":"v1","%Name":"max_bullets","filters":[],"listItems":[],"multiselect":false,"name":"max_bullets","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"4","varType":0,},
    {"$GMObjectProperty":"v1","%Name":"reload_timer","filters":[],"listItems":[],"multiselect":false,"name":"reload_timer","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"0","varType":0,},
    {"$GMObjectProperty":"v1","%Name":"reload_time","filters":[],"listItems":[],"multiselect":false,"name":"reload_time","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"1 * game_get_speed(gamespeed_fps)","varType":4,},
    {"$GMObjectProperty":"v1","%Name":"Xan_fly_active","filters":[],"listItems":[],"multiselect":false,"name":"Xan_fly_active","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"False","varType":3,},
    {"$GMObjectProperty":"v1","%Name":"Xan_fly_timer","filters":[],"listItems":[],"multiselect":false,"name":"Xan_fly_timer","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"0","varType":0,},
    {"$GMObjectProperty":"v1","%Name":"Xan_fly_end","filters":[],"listItems":[],"multiselect":false,"name":"Xan_fly_end","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"0","varType":0,},
  ],
  "resourceType":"GMObject",
  "resourceVersion":"2.0",
  "solid":true,
  "spriteId":{
    "name":"spr_Xan_side",
    "path":"sprites/spr_Xan_side/spr_Xan_side.yy",
  },
  "spriteMaskId":null,
  "visible":true,
}