// typed-array-length@1.0.6 downloaded from https://ga.jspm.io/npm:typed-array-length@1.0.6/index.js

import*as r from"call-bind";import*as t from"for-each";import*as a from"gopd";import*as e from"has-proto";import*as f from"is-typed-array";import*as o from"possible-typed-array-names";var n=r;try{"default"in r&&(n=r.default)}catch(r){}var l=t;try{"default"in t&&(l=t.default)}catch(r){}var i=a;try{"default"in a&&(i=a.default)}catch(r){}var u=e;try{"default"in e&&(u=e.default)}catch(r){}var v=f;try{"default"in f&&(v=f.default)}catch(r){}var c=o;try{"default"in o&&(c=o.default)}catch(r){}var p=typeof globalThis!=="undefined"?globalThis:typeof self!=="undefined"?self:global;var d={};var y=n;var h=l;var s=i;var m=u();var g=v;var b=c;
/** @typedef {(value: import('.').TypedArray) => number} TypedArrayLengthGetter */
/** @typedef {{ [k in `$${import('.').TypedArrayName}` | '__proto__']: k extends '__proto__' ? null : TypedArrayLengthGetter }} Cache */
/** @type {Cache} */var _={__proto__:null};var A=Object.defineProperty;if(s){var getLength=/** @type {TypedArrayLengthGetter} */function(r){return r.length};h(b,(/** @type {(typedArray: import('.').TypedArrayName) => void} */function(r){var t=p[r];if(typeof t==="function"||typeof t==="object"){var a=t.prototype;var e=s(a,"length");if(!e&&m){var f=a.__proto__;e=s(f,"length")}if(e&&e.get)_[/** @type {`$${import('.').TypedArrayName}`} */"$"+r]=y(e.get);else if(A){var o=new p[r](2);e=s(o,"length");e&&e.configurable&&A(o,"length",{value:3});o.length===2&&(_[/** @type {`$${import('.').TypedArrayName}`} */"$"+r]=getLength)}}}))}
/** @type {TypedArrayLengthGetter} */var T=function tryAllTypedArrays(r){
/** @type {number} */var t;h(_,(/** @type {(getter: TypedArrayLengthGetter) => void} */function(a){if(typeof t!=="number")try{var e=a(r);typeof e==="number"&&(t=e)}catch(r){}}));return t};
/** @type {import('.')} */d=function typedArrayLength(r){return!!g(r)&&T(r)};var j=d;export{j as default};

