// es-abstract/2024/Get@1.23.3 downloaded from https://ga.jspm.io/npm:es-abstract@1.23.3/2024/Get.js

import*as r from"es-errors/type";import*as t from"object-inspect";import{_ as e}from"../_/9eAR-vFw.js";import a from"./Type.js";import"../_/3pSaoCV1.js";var o=r;try{"default"in r&&(o=r.default)}catch(r){}var i=t;try{"default"in t&&(i=t.default)}catch(r){}var s={};var f=o;var n=i;var p=e;var c=a;s=function Get(r,t){if(c(r)!=="Object")throw new f("Assertion failed: Type(O) is not Object");if(!p(t))throw new f("Assertion failed: IsPropertyKey(P) is not true, got "+n(t));return r[t]};var m=s;export{m as default};

