// safe-array-concat@1.1.2 downloaded from https://ga.jspm.io/npm:safe-array-concat@1.1.2/index.js

import*as a from"get-intrinsic";import*as r from"call-bind";import*as t from"call-bind/callBound";import*as l from"has-symbols/shams";import*as o from"isarray";var e=a;try{"default"in a&&(e=a.default)}catch(a){}var f=r;try{"default"in r&&(f=r.default)}catch(a){}var c=t;try{"default"in t&&(c=t.default)}catch(a){}var i=l;try{"default"in l&&(i=l.default)}catch(a){}var/** @type {(value: unknown) => value is unknown[]} */n=o;try{"default"in o&&(n=o.default)}catch(a){}var v={};var u=e;var s=u("%Array.prototype.concat%");var y=f;var d=c;var p=d("Array.prototype.slice");var m=i();var h=m&&Symbol.isConcatSpreadable;
/** @type {never[]} */var b=[];var A=h?y.apply(s,b):null;var g=h?n:null;
/** @type {import('.')} */v=h?function safeArrayConcat(a){for(var r=0;r<arguments.length;r+=1){
/** @type {typeof item} */var t=arguments[r];if(t&&typeof t==="object"&&typeof t[h]==="boolean"){b[h]||(b[h]=true);var l=g(t)?p(t):[t];l[h]=true;arguments[r]=l}}return A(arguments)}:y(s,b);var C=v;export{C as default};

