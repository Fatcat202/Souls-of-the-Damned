{
  "$GMObject":"",
  "%Name":"obj_Seki_fireball",
  "eventList":[
    {"$GMEvent":"v1","%Name":"","collisionObjectId":{"name":"obj_enemy_parent","path":"objects/obj_enemy_parent/obj_enemy_parent.yy",},"eventNum":0,"eventType":4,"isDnD":false,"name":"","resourceType":"GMEvent","resourceVersion":"2.0",},
    {"$GMEvent":"v1","%Name":"","collisionObjectId":{"name":"obj_dest_projectiles_parent","path":"objects/obj_dest_projectiles_parent/obj_dest_projectiles_parent.yy",},"eventNum":0,"eventType":4,"isDnD":false,"name":"","resourceType":"GMEvent","resourceVersion":"2.0",},
    {"$GMEvent":"v1","%Name":"","collisionObjectId":{"name":"obj_collision_wall","path":"objects/obj_collision_wall/obj_collision_wall.yy",},"eventNum":0,"eventType":4,"isDnD":false,"name":"","resourceType":"GMEvent","resourceVersion":"2.0",},
    {"$GMEvent":"v1","%Name":"","collisionObjectId":null,"eventNum":0,"eventType":3,"isDnD":false,"name":"","resourceType":"GMEvent","resourceVersion":"2.0",},
  ],
  "managed":true,
  "name":"obj_Seki_fireball",
  "overriddenProperties":[],
  "parent":{
    "name":"Seki",
    "path":"folders/Objects/Attacks/Projectiles/Players/Seki.yy",
  },
  "parentObjectId":{
    "name":"obj_dest_projectiles_parent",
    "path":"objects/obj_dest_projectiles_parent/obj_dest_projectiles_parent.yy",
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
    {"$GMObjectProperty":"v1","%Name":"destruction_timer","filters":[],"listItems":[],"multiselect":false,"name":"destruction_timer","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"0","varType":0,},
    {"$GMObjectProperty":"v1","%Name":"triggered","filters":[],"listItems":[],"multiselect":false,"name":"triggered","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"False","varType":3,},
  ],
  "resourceType":"GMObject",
  "resourceVersion":"2.0",
  "solid":false,
  "spriteId":{
    "name":"Spr_Fireball",
    "path":"sprites/Spr_Fireball/Spr_Fireball.yy",
  },
  "spriteMaskId":null,
  "visible":true,
}