local ffi = require("ffi")

ffi.cdef([[
	extern float noise1( float x );
	extern float noise2( float x, float y );
	extern float noise3( float x, float y, float z );
	extern float noise4( float x, float y, float z, float w );

	extern float pnoise1( float x, int px );
	extern float pnoise2( float x, float y, int px, int py );
	extern float pnoise3( float x, float y, float z, int px, int py, int pz );
	extern float pnoise4( float x, float y, float z, float w, int px, int py, int pz, int pw );

	float sdnoise1( float x, float *dnoise_dx);
	float sdnoise2( float x, float y, float *dnoise_dx, float *dnoise_dy );
	float sdnoise3( float x, float y, float z, float *dnoise_dx, float *dnoise_dy, float *dnoise_dz );
	float sdnoise4( float x, float y, float z, float w, float *dnoise_dx, float *dnoise_dy, float *dnoise_dz, float *dnoise_dw);

	float snoise1( float x );
	float snoise2( float x, float y );
	float snoise3( float x, float y, float z );
	float snoise4( float x, float y, float z, float w );
	float srdnoise2( float x, float y, float t, float *dnoise_dx, float *dnoise_dy );
	float srdnoise3( float x, float y, float z, float t, float *dnoise_dx, float *dnoise_dy, float *dnoise_dz );
]])

ffi.load("src/noise1234.so", true)
ffi.load("src/simplexnoise1234.so", true)
ffi.load("src/sdnoise1234.so", true)
ffi.load("src/srdnoise23.so", true)

return {
	noise1 = ffi.C.noise1,
	noise2 = ffi.C.noise2,
	noise3 = ffi.C.noise3,
	noise4 = ffi.C.noise4,
	pnoise1 = ffi.C.pnoise1,
	pnoise2 = ffi.C.pnoise2,
	pnoise3 = ffi.C.pnoise3,
	pnoise4 = ffi.C.pnoise4,
	sdnoise1 = ffi.C.sdnoise1,
	sdnoise2 = ffi.C.sdnoise2,
	sdnoise3 = ffi.C.sdnoise3,
	sdnoise4 = ffi.C.sdnoise4,
	snoise1 = ffi.C.snoise1,
	snoise2 = ffi.C.snoise2,
	snoise3 = ffi.C.snoise3,
	snoise4 = ffi.C.snoise4,
	srdnoise2 = ffi.C.srdnoise2,
	srdnoise3 = ffi.C.srdnoise3
}
