// for-each@0.3.3 downloaded from https://ga.jspm.io/npm:for-each@0.3.3/index.js

import r from"is-callable";var a={};var t=r;var o=Object.prototype.toString;var l=Object.prototype.hasOwnProperty;var c=function forEachArray(r,a,t){for(var o=0,c=r.length;o<c;o++)l.call(r,o)&&(null==t?a(r[o],o,r):a.call(t,r[o],o,r))};var n=function forEachString(r,a,t){for(var o=0,l=r.length;o<l;o++)null==t?a(r.charAt(o),o,r):a.call(t,r.charAt(o),o,r)};var e=function forEachObject(r,a,t){for(var o in r)l.call(r,o)&&(null==t?a(r[o],o,r):a.call(t,r[o],o,r))};var f=function forEach(r,a,l){if(!t(a))throw new TypeError("iterator must be a function");var f;arguments.length>=3&&(f=l);"[object Array]"===o.call(r)?c(r,a,f):"string"===typeof r?n(r,a,f):e(r,a,f)};a=f;var i=a;export default i;

