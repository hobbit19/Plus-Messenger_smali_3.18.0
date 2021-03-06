.class public Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;
.super Lorg/telegram/messenger/DispatchQueue;
.source "PhotoFilterView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/PhotoFilterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EGLThread"
.end annotation


# static fields
.field private static final PGPhotoEnhanceHistogramBins:I = 0x100

.field private static final PGPhotoEnhanceSegments:I = 0x4

.field private static final blurFragmentShaderCode:Ljava/lang/String; = "uniform sampler2D sourceImage;varying highp vec2 blurCoordinates[9];void main() {lowp vec4 sum = vec4(0.0);sum += texture2D(sourceImage, blurCoordinates[0]) * 0.133571;sum += texture2D(sourceImage, blurCoordinates[1]) * 0.233308;sum += texture2D(sourceImage, blurCoordinates[2]) * 0.233308;sum += texture2D(sourceImage, blurCoordinates[3]) * 0.135928;sum += texture2D(sourceImage, blurCoordinates[4]) * 0.135928;sum += texture2D(sourceImage, blurCoordinates[5]) * 0.051383;sum += texture2D(sourceImage, blurCoordinates[6]) * 0.051383;sum += texture2D(sourceImage, blurCoordinates[7]) * 0.012595;sum += texture2D(sourceImage, blurCoordinates[8]) * 0.012595;gl_FragColor = sum;}"

.field private static final blurVertexShaderCode:Ljava/lang/String; = "attribute vec4 position;attribute vec4 inputTexCoord;uniform highp float texelWidthOffset;uniform highp float texelHeightOffset;varying vec2 blurCoordinates[9];void main() {gl_Position = position;vec2 singleStepOffset = vec2(texelWidthOffset, texelHeightOffset);blurCoordinates[0] = inputTexCoord.xy;blurCoordinates[1] = inputTexCoord.xy + singleStepOffset * 1.458430;blurCoordinates[2] = inputTexCoord.xy - singleStepOffset * 1.458430;blurCoordinates[3] = inputTexCoord.xy + singleStepOffset * 3.403985;blurCoordinates[4] = inputTexCoord.xy - singleStepOffset * 3.403985;blurCoordinates[5] = inputTexCoord.xy + singleStepOffset * 5.351806;blurCoordinates[6] = inputTexCoord.xy - singleStepOffset * 5.351806;blurCoordinates[7] = inputTexCoord.xy + singleStepOffset * 7.302940;blurCoordinates[8] = inputTexCoord.xy - singleStepOffset * 7.302940;}"

.field private static final enhanceFragmentShaderCode:Ljava/lang/String; = "precision highp float;varying vec2 texCoord;uniform sampler2D sourceImage;uniform sampler2D inputImageTexture2;uniform float intensity;float enhance(float value) {const vec2 offset = vec2(0.001953125, 0.03125);value = value + offset.x;vec2 coord = (clamp(texCoord, 0.125, 1.0 - 0.125001) - 0.125) * 4.0;vec2 frac = fract(coord);coord = floor(coord);float p00 = float(coord.y * 4.0 + coord.x) * 0.0625 + offset.y;float p01 = float(coord.y * 4.0 + coord.x + 1.0) * 0.0625 + offset.y;float p10 = float((coord.y + 1.0) * 4.0 + coord.x) * 0.0625 + offset.y;float p11 = float((coord.y + 1.0) * 4.0 + coord.x + 1.0) * 0.0625 + offset.y;vec3 c00 = texture2D(inputImageTexture2, vec2(value, p00)).rgb;vec3 c01 = texture2D(inputImageTexture2, vec2(value, p01)).rgb;vec3 c10 = texture2D(inputImageTexture2, vec2(value, p10)).rgb;vec3 c11 = texture2D(inputImageTexture2, vec2(value, p11)).rgb;float c1 = ((c00.r - c00.g) / (c00.b - c00.g));float c2 = ((c01.r - c01.g) / (c01.b - c01.g));float c3 = ((c10.r - c10.g) / (c10.b - c10.g));float c4 = ((c11.r - c11.g) / (c11.b - c11.g));float c1_2 = mix(c1, c2, frac.x);float c3_4 = mix(c3, c4, frac.x);return mix(c1_2, c3_4, frac.y);}vec3 hsv_to_rgb(vec3 c) {vec4 K = vec4(1.0, 2.0 / 3.0, 1.0 / 3.0, 3.0);vec3 p = abs(fract(c.xxx + K.xyz) * 6.0 - K.www);return c.z * mix(K.xxx, clamp(p - K.xxx, 0.0, 1.0), c.y);}void main() {vec4 texel = texture2D(sourceImage, texCoord);vec4 hsv = texel;hsv.y = min(1.0, hsv.y * 1.2);hsv.z = min(1.0, enhance(hsv.z) * 1.1);gl_FragColor = vec4(hsv_to_rgb(mix(texel.xyz, hsv.xyz, intensity)), texel.w);}"

.field private static final linearBlurFragmentShaderCode:Ljava/lang/String; = "varying highp vec2 texCoord;uniform sampler2D sourceImage;uniform sampler2D inputImageTexture2;uniform lowp float excludeSize;uniform lowp vec2 excludePoint;uniform lowp float excludeBlurSize;uniform highp float angle;uniform highp float aspectRatio;void main() {lowp vec4 sharpImageColor = texture2D(sourceImage, texCoord);lowp vec4 blurredImageColor = texture2D(inputImageTexture2, texCoord);highp vec2 texCoordToUse = vec2(texCoord.x, (texCoord.y * aspectRatio + 0.5 - 0.5 * aspectRatio));highp float distanceFromCenter = abs((texCoordToUse.x - excludePoint.x) * aspectRatio * cos(angle) + (texCoordToUse.y - excludePoint.y) * sin(angle));gl_FragColor = mix(sharpImageColor, blurredImageColor, smoothstep(excludeSize - excludeBlurSize, excludeSize, distanceFromCenter));}"

.field private static final radialBlurFragmentShaderCode:Ljava/lang/String; = "varying highp vec2 texCoord;uniform sampler2D sourceImage;uniform sampler2D inputImageTexture2;uniform lowp float excludeSize;uniform lowp vec2 excludePoint;uniform lowp float excludeBlurSize;uniform highp float aspectRatio;void main() {lowp vec4 sharpImageColor = texture2D(sourceImage, texCoord);lowp vec4 blurredImageColor = texture2D(inputImageTexture2, texCoord);highp vec2 texCoordToUse = vec2(texCoord.x, (texCoord.y * aspectRatio + 0.5 - 0.5 * aspectRatio));highp float distanceFromCenter = distance(excludePoint, texCoordToUse);gl_FragColor = mix(sharpImageColor, blurredImageColor, smoothstep(excludeSize - excludeBlurSize, excludeSize, distanceFromCenter));}"

.field private static final rgbToHsvFragmentShaderCode:Ljava/lang/String; = "precision highp float;varying vec2 texCoord;uniform sampler2D sourceImage;vec3 rgb_to_hsv(vec3 c) {vec4 K = vec4(0.0, -1.0 / 3.0, 2.0 / 3.0, -1.0);vec4 p = c.g < c.b ? vec4(c.bg, K.wz) : vec4(c.gb, K.xy);vec4 q = c.r < p.x ? vec4(p.xyw, c.r) : vec4(c.r, p.yzx);float d = q.x - min(q.w, q.y);float e = 1.0e-10;return vec3(abs(q.z + (q.w - q.y) / (6.0 * d + e)), d / (q.x + e), q.x);}void main() {vec4 texel = texture2D(sourceImage, texCoord);gl_FragColor = vec4(rgb_to_hsv(texel.rgb), texel.a);}"

.field private static final sharpenFragmentShaderCode:Ljava/lang/String; = "precision highp float;varying vec2 texCoord;varying vec2 leftTexCoord;varying vec2 rightTexCoord;varying vec2 topTexCoord;varying vec2 bottomTexCoord;uniform sampler2D sourceImage;uniform float sharpen;void main() {vec4 result = texture2D(sourceImage, texCoord);vec3 leftTextureColor = texture2D(sourceImage, leftTexCoord).rgb;vec3 rightTextureColor = texture2D(sourceImage, rightTexCoord).rgb;vec3 topTextureColor = texture2D(sourceImage, topTexCoord).rgb;vec3 bottomTextureColor = texture2D(sourceImage, bottomTexCoord).rgb;result.rgb = result.rgb * (1.0 + 4.0 * sharpen) - (leftTextureColor + rightTextureColor + topTextureColor + bottomTextureColor) * sharpen;gl_FragColor = result;}"

.field private static final sharpenVertexShaderCode:Ljava/lang/String; = "attribute vec4 position;attribute vec2 inputTexCoord;varying vec2 texCoord;uniform highp float inputWidth;uniform highp float inputHeight;varying vec2 leftTexCoord;varying vec2 rightTexCoord;varying vec2 topTexCoord;varying vec2 bottomTexCoord;void main() {gl_Position = position;texCoord = inputTexCoord;highp vec2 widthStep = vec2(1.0 / inputWidth, 0.0);highp vec2 heightStep = vec2(0.0, 1.0 / inputHeight);leftTexCoord = inputTexCoord - widthStep;rightTexCoord = inputTexCoord + widthStep;topTexCoord = inputTexCoord + heightStep;bottomTexCoord = inputTexCoord - heightStep;}"

.field private static final simpleFragmentShaderCode:Ljava/lang/String; = "varying highp vec2 texCoord;uniform sampler2D sourceImage;void main() {gl_FragColor = texture2D(sourceImage, texCoord);}"

.field private static final simpleVertexShaderCode:Ljava/lang/String; = "attribute vec4 position;attribute vec2 inputTexCoord;varying vec2 texCoord;void main() {gl_Position = position;texCoord = inputTexCoord;}"

.field private static final toolsFragmentShaderCode:Ljava/lang/String; = "varying highp vec2 texCoord;uniform sampler2D sourceImage;uniform highp float width;uniform highp float height;uniform sampler2D curvesImage;uniform lowp float skipTone;uniform lowp float shadows;const mediump vec3 hsLuminanceWeighting = vec3(0.3, 0.3, 0.3);uniform lowp float highlights;uniform lowp float contrast;uniform lowp float fadeAmount;const mediump vec3 satLuminanceWeighting = vec3(0.2126, 0.7152, 0.0722);uniform lowp float saturation;uniform lowp float shadowsTintIntensity;uniform lowp float highlightsTintIntensity;uniform lowp vec3 shadowsTintColor;uniform lowp vec3 highlightsTintColor;uniform lowp float exposure;uniform lowp float warmth;uniform lowp float grain;const lowp float permTexUnit = 1.0 / 256.0;const lowp float permTexUnitHalf = 0.5 / 256.0;const lowp float grainsize = 2.3;uniform lowp float vignette;highp float getLuma(highp vec3 rgbP) {return (0.299 * rgbP.r) + (0.587 * rgbP.g) + (0.114 * rgbP.b);}lowp vec3 rgbToHsv(lowp vec3 c) {highp vec4 K = vec4(0.0, -1.0 / 3.0, 2.0 / 3.0, -1.0);highp vec4 p = c.g < c.b ? vec4(c.bg, K.wz) : vec4(c.gb, K.xy);highp vec4 q = c.r < p.x ? vec4(p.xyw, c.r) : vec4(c.r, p.yzx);highp float d = q.x - min(q.w, q.y);highp float e = 1.0e-10;return vec3(abs(q.z + (q.w - q.y) / (6.0 * d + e)), d / (q.x + e), q.x);}lowp vec3 hsvToRgb(lowp vec3 c) {highp vec4 K = vec4(1.0, 2.0 / 3.0, 1.0 / 3.0, 3.0);highp vec3 p = abs(fract(c.xxx + K.xyz) * 6.0 - K.www);return c.z * mix(K.xxx, clamp(p - K.xxx, 0.0, 1.0), c.y);}highp vec3 rgbToHsl(highp vec3 color) {highp vec3 hsl;highp float fmin = min(min(color.r, color.g), color.b);highp float fmax = max(max(color.r, color.g), color.b);highp float delta = fmax - fmin;hsl.z = (fmax + fmin) / 2.0;if (delta == 0.0) {hsl.x = 0.0;hsl.y = 0.0;} else {if (hsl.z < 0.5) {hsl.y = delta / (fmax + fmin);} else {hsl.y = delta / (2.0 - fmax - fmin);}highp float deltaR = (((fmax - color.r) / 6.0) + (delta / 2.0)) / delta;highp float deltaG = (((fmax - color.g) / 6.0) + (delta / 2.0)) / delta;highp float deltaB = (((fmax - color.b) / 6.0) + (delta / 2.0)) / delta;if (color.r == fmax) {hsl.x = deltaB - deltaG;} else if (color.g == fmax) {hsl.x = (1.0 / 3.0) + deltaR - deltaB;} else if (color.b == fmax) {hsl.x = (2.0 / 3.0) + deltaG - deltaR;}if (hsl.x < 0.0) {hsl.x += 1.0;} else if (hsl.x > 1.0) {hsl.x -= 1.0;}}return hsl;}highp float hueToRgb(highp float f1, highp float f2, highp float hue) {if (hue < 0.0) {hue += 1.0;} else if (hue > 1.0) {hue -= 1.0;}highp float res;if ((6.0 * hue) < 1.0) {res = f1 + (f2 - f1) * 6.0 * hue;} else if ((2.0 * hue) < 1.0) {res = f2;} else if ((3.0 * hue) < 2.0) {res = f1 + (f2 - f1) * ((2.0 / 3.0) - hue) * 6.0;} else {res = f1;} return res;}highp vec3 hslToRgb(highp vec3 hsl) {if (hsl.y == 0.0) {return vec3(hsl.z);} else {highp float f2;if (hsl.z < 0.5) {f2 = hsl.z * (1.0 + hsl.y);} else {f2 = (hsl.z + hsl.y) - (hsl.y * hsl.z);}highp float f1 = 2.0 * hsl.z - f2;return vec3(hueToRgb(f1, f2, hsl.x + (1.0/3.0)), hueToRgb(f1, f2, hsl.x), hueToRgb(f1, f2, hsl.x - (1.0/3.0)));}}highp vec3 rgbToYuv(highp vec3 inP) {highp float luma = getLuma(inP);return vec3(luma, (1.0 / 1.772) * (inP.b - luma), (1.0 / 1.402) * (inP.r - luma));}lowp vec3 yuvToRgb(highp vec3 inP) {return vec3(1.402 * inP.b + inP.r, (inP.r - (0.299 * 1.402 / 0.587) * inP.b - (0.114 * 1.772 / 0.587) * inP.g), 1.772 * inP.g + inP.r);}lowp float easeInOutSigmoid(lowp float value, lowp float strength) {if (value > 0.5) {return 1.0 - pow(2.0 - 2.0 * value, 1.0 / (1.0 - strength)) * 0.5;} else {return pow(2.0 * value, 1.0 / (1.0 - strength)) * 0.5;}}lowp vec3 applyLuminanceCurve(lowp vec3 pixel) {highp float index = floor(clamp(pixel.z / (1.0 / 200.0), 0.0, 199.0));pixel.y = mix(0.0, pixel.y, smoothstep(0.0, 0.1, pixel.z) * (1.0 - smoothstep(0.8, 1.0, pixel.z)));pixel.z = texture2D(curvesImage, vec2(1.0 / 200.0 * index, 0)).a;return pixel;}lowp vec3 applyRGBCurve(lowp vec3 pixel) {highp float index = floor(clamp(pixel.r / (1.0 / 200.0), 0.0, 199.0));pixel.r = texture2D(curvesImage, vec2(1.0 / 200.0 * index, 0)).r;index = floor(clamp(pixel.g / (1.0 / 200.0), 0.0, 199.0));pixel.g = clamp(texture2D(curvesImage, vec2(1.0 / 200.0 * index, 0)).g, 0.0, 1.0);index = floor(clamp(pixel.b / (1.0 / 200.0), 0.0, 199.0));pixel.b = clamp(texture2D(curvesImage, vec2(1.0 / 200.0 * index, 0)).b, 0.0, 1.0);return pixel;}highp vec3 fadeAdjust(highp vec3 color, highp float fadeVal) {return (color * (1.0 - fadeVal)) + ((color + (vec3(-0.9772) * pow(vec3(color), vec3(3.0)) + vec3(1.708) * pow(vec3(color), vec3(2.0)) + vec3(-0.1603) * vec3(color) + vec3(0.2878) - color * vec3(0.9))) * fadeVal);}lowp vec3 tintRaiseShadowsCurve(lowp vec3 color) {return vec3(-0.003671) * pow(color, vec3(3.0)) + vec3(0.3842) * pow(color, vec3(2.0)) + vec3(0.3764) * color + vec3(0.2515);}lowp vec3 tintShadows(lowp vec3 texel, lowp vec3 tintColor, lowp float tintAmount) {return clamp(mix(texel, mix(texel, tintRaiseShadowsCurve(texel), tintColor), tintAmount), 0.0, 1.0);} lowp vec3 tintHighlights(lowp vec3 texel, lowp vec3 tintColor, lowp float tintAmount) {return clamp(mix(texel, mix(texel, vec3(1.0) - tintRaiseShadowsCurve(vec3(1.0) - texel), (vec3(1.0) - tintColor)), tintAmount), 0.0, 1.0);}highp vec4 rnm(in highp vec2 tc) {highp float noise = sin(dot(tc, vec2(12.9898, 78.233))) * 43758.5453;return vec4(fract(noise), fract(noise * 1.2154), fract(noise * 1.3453), fract(noise * 1.3647)) * 2.0 - 1.0;}highp float fade(in highp float t) {return t * t * t * (t * (t * 6.0 - 15.0) + 10.0);}highp float pnoise3D(in highp vec3 p) {highp vec3 pi = permTexUnit * floor(p) + permTexUnitHalf;highp vec3 pf = fract(p);highp float perm = rnm(pi.xy).a;highp float n000 = dot(rnm(vec2(perm, pi.z)).rgb * 4.0 - 1.0, pf);highp float n001 = dot(rnm(vec2(perm, pi.z + permTexUnit)).rgb * 4.0 - 1.0, pf - vec3(0.0, 0.0, 1.0));perm = rnm(pi.xy + vec2(0.0, permTexUnit)).a;highp float n010 = dot(rnm(vec2(perm, pi.z)).rgb * 4.0 - 1.0, pf - vec3(0.0, 1.0, 0.0));highp float n011 = dot(rnm(vec2(perm, pi.z + permTexUnit)).rgb * 4.0 - 1.0, pf - vec3(0.0, 1.0, 1.0));perm = rnm(pi.xy + vec2(permTexUnit, 0.0)).a;highp float n100 = dot(rnm(vec2(perm, pi.z)).rgb * 4.0 - 1.0, pf - vec3(1.0, 0.0, 0.0));highp float n101 = dot(rnm(vec2(perm, pi.z + permTexUnit)).rgb * 4.0 - 1.0, pf - vec3(1.0, 0.0, 1.0));perm = rnm(pi.xy + vec2(permTexUnit, permTexUnit)).a;highp float n110 = dot(rnm(vec2(perm, pi.z)).rgb * 4.0 - 1.0, pf - vec3(1.0, 1.0, 0.0));highp float n111 = dot(rnm(vec2(perm, pi.z + permTexUnit)).rgb * 4.0 - 1.0, pf - vec3(1.0, 1.0, 1.0));highp vec4 n_x = mix(vec4(n000, n001, n010, n011), vec4(n100, n101, n110, n111), fade(pf.x));highp vec2 n_xy = mix(n_x.xy, n_x.zw, fade(pf.y));return mix(n_xy.x, n_xy.y, fade(pf.z));}lowp vec2 coordRot(in lowp vec2 tc, in lowp float angle) {return vec2(((tc.x * 2.0 - 1.0) * cos(angle) - (tc.y * 2.0 - 1.0) * sin(angle)) * 0.5 + 0.5, ((tc.y * 2.0 - 1.0) * cos(angle) + (tc.x * 2.0 - 1.0) * sin(angle)) * 0.5 + 0.5);}void main() {lowp vec4 source = texture2D(sourceImage, texCoord);lowp vec4 result = source;const lowp float toolEpsilon = 0.005;if (skipTone < toolEpsilon) {result = vec4(applyRGBCurve(hslToRgb(applyLuminanceCurve(rgbToHsl(result.rgb)))), result.a);}mediump float hsLuminance = dot(result.rgb, hsLuminanceWeighting);mediump float shadow = clamp((pow(hsLuminance, 1.0 / shadows) + (-0.76) * pow(hsLuminance, 2.0 / shadows)) - hsLuminance, 0.0, 1.0);mediump float highlight = clamp((1.0 - (pow(1.0 - hsLuminance, 1.0 / (2.0 - highlights)) + (-0.8) * pow(1.0 - hsLuminance, 2.0 / (2.0 - highlights)))) - hsLuminance, -1.0, 0.0);lowp vec3 hsresult = vec3(0.0, 0.0, 0.0) + ((hsLuminance + shadow + highlight) - 0.0) * ((result.rgb - vec3(0.0, 0.0, 0.0)) / (hsLuminance - 0.0));mediump float contrastedLuminance = ((hsLuminance - 0.5) * 1.5) + 0.5;mediump float whiteInterp = contrastedLuminance * contrastedLuminance * contrastedLuminance;mediump float whiteTarget = clamp(highlights, 1.0, 2.0) - 1.0;hsresult = mix(hsresult, vec3(1.0), whiteInterp * whiteTarget);mediump float invContrastedLuminance = 1.0 - contrastedLuminance;mediump float blackInterp = invContrastedLuminance * invContrastedLuminance * invContrastedLuminance;mediump float blackTarget = 1.0 - clamp(shadows, 0.0, 1.0);hsresult = mix(hsresult, vec3(0.0), blackInterp * blackTarget);result = vec4(hsresult.rgb, result.a);result = vec4(clamp(((result.rgb - vec3(0.5)) * contrast + vec3(0.5)), 0.0, 1.0), result.a);if (abs(fadeAmount) > toolEpsilon) {result.rgb = fadeAdjust(result.rgb, fadeAmount);}lowp float satLuminance = dot(result.rgb, satLuminanceWeighting);lowp vec3 greyScaleColor = vec3(satLuminance);result = vec4(clamp(mix(greyScaleColor, result.rgb, saturation), 0.0, 1.0), result.a);if (abs(shadowsTintIntensity) > toolEpsilon) {result.rgb = tintShadows(result.rgb, shadowsTintColor, shadowsTintIntensity * 2.0);}if (abs(highlightsTintIntensity) > toolEpsilon) {result.rgb = tintHighlights(result.rgb, highlightsTintColor, highlightsTintIntensity * 2.0);}if (abs(exposure) > toolEpsilon) {mediump float mag = exposure * 1.045;mediump float exppower = 1.0 + abs(mag);if (mag < 0.0) {exppower = 1.0 / exppower;}result.r = 1.0 - pow((1.0 - result.r), exppower);result.g = 1.0 - pow((1.0 - result.g), exppower);result.b = 1.0 - pow((1.0 - result.b), exppower);}if (abs(warmth) > toolEpsilon) {highp vec3 yuvVec;if (warmth > 0.0 ) {yuvVec = vec3(0.1765, -0.1255, 0.0902);} else {yuvVec = -vec3(0.0588, 0.1569, -0.1255);}highp vec3 yuvColor = rgbToYuv(result.rgb);highp float luma = yuvColor.r;highp float curveScale = sin(luma * 3.14159);yuvColor += 0.375 * warmth * curveScale * yuvVec;result.rgb = yuvToRgb(yuvColor);}if (abs(grain) > toolEpsilon) {highp vec3 rotOffset = vec3(1.425, 3.892, 5.835);highp vec2 rotCoordsR = coordRot(texCoord, rotOffset.x);highp vec3 noise = vec3(pnoise3D(vec3(rotCoordsR * vec2(width / grainsize, height / grainsize),0.0)));lowp vec3 lumcoeff = vec3(0.299,0.587,0.114);lowp float luminance = dot(result.rgb, lumcoeff);lowp float lum = smoothstep(0.2, 0.0, luminance);lum += luminance;noise = mix(noise,vec3(0.0),pow(lum,4.0));result.rgb = result.rgb + noise * grain;}if (abs(vignette) > toolEpsilon) {const lowp float midpoint = 0.7;const lowp float fuzziness = 0.62;lowp float radDist = length(texCoord - 0.5) / sqrt(0.5);lowp float mag = easeInOutSigmoid(radDist * midpoint, fuzziness) * vignette * 0.645;result.rgb = mix(pow(result.rgb, vec3(1.0 / (1.0 - mag))), vec3(0.0), mag * mag);}gl_FragColor = result;}"


# instance fields
.field private final EGL_CONTEXT_CLIENT_VERSION:I

.field private final EGL_OPENGL_ES2_BIT:I

.field private blurHeightHandle:I

.field private blurInputTexCoordHandle:I

.field private blurPositionHandle:I

.field private blurShaderProgram:I

.field private blurSourceImageHandle:I

.field private blurWidthHandle:I

.field private blured:Z

.field private contrastHandle:I

.field private currentBitmap:Landroid/graphics/Bitmap;

.field private curveTextures:[I

.field private curvesImageHandle:I

.field private drawRunnable:Ljava/lang/Runnable;

.field private egl10:Ljavax/microedition/khronos/egl/EGL10;

.field private eglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

.field private eglContext:Ljavax/microedition/khronos/egl/EGLContext;

.field private eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

.field private eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

.field private enhanceInputImageTexture2Handle:I

.field private enhanceInputTexCoordHandle:I

.field private enhanceIntensityHandle:I

.field private enhancePositionHandle:I

.field private enhanceShaderProgram:I

.field private enhanceSourceImageHandle:I

.field private enhanceTextures:[I

.field private exposureHandle:I

.field private fadeAmountHandle:I

.field private gl:Ljavax/microedition/khronos/opengles/GL;

.field private grainHandle:I

.field private heightHandle:I

.field private highlightsHandle:I

.field private highlightsTintColorHandle:I

.field private highlightsTintIntensityHandle:I

.field private hsvGenerated:Z

.field private initied:Z

.field private inputTexCoordHandle:I

.field private lastRenderCallTime:J

.field private linearBlurAngleHandle:I

.field private linearBlurAspectRatioHandle:I

.field private linearBlurExcludeBlurSizeHandle:I

.field private linearBlurExcludePointHandle:I

.field private linearBlurExcludeSizeHandle:I

.field private linearBlurInputTexCoordHandle:I

.field private linearBlurPositionHandle:I

.field private linearBlurShaderProgram:I

.field private linearBlurSourceImage2Handle:I

.field private linearBlurSourceImageHandle:I

.field private needUpdateBlurTexture:Z

.field private positionHandle:I

.field private radialBlurAspectRatioHandle:I

.field private radialBlurExcludeBlurSizeHandle:I

.field private radialBlurExcludePointHandle:I

.field private radialBlurExcludeSizeHandle:I

.field private radialBlurInputTexCoordHandle:I

.field private radialBlurPositionHandle:I

.field private radialBlurShaderProgram:I

.field private radialBlurSourceImage2Handle:I

.field private radialBlurSourceImageHandle:I

.field private renderBufferHeight:I

.field private renderBufferWidth:I

.field private renderFrameBuffer:[I

.field private renderTexture:[I

.field private rgbToHsvInputTexCoordHandle:I

.field private rgbToHsvPositionHandle:I

.field private rgbToHsvShaderProgram:I

.field private rgbToHsvSourceImageHandle:I

.field private saturationHandle:I

.field private shadowsHandle:I

.field private shadowsTintColorHandle:I

.field private shadowsTintIntensityHandle:I

.field private sharpenHandle:I

.field private sharpenHeightHandle:I

.field private sharpenInputTexCoordHandle:I

.field private sharpenPositionHandle:I

.field private sharpenShaderProgram:I

.field private sharpenSourceImageHandle:I

.field private sharpenWidthHandle:I

.field private simpleInputTexCoordHandle:I

.field private simplePositionHandle:I

.field private simpleShaderProgram:I

.field private simpleSourceImageHandle:I

.field private skipToneHandle:I

.field private sourceImageHandle:I

.field private volatile surfaceHeight:I

.field private surfaceTexture:Landroid/graphics/SurfaceTexture;

.field private volatile surfaceWidth:I

.field private textureBuffer:Ljava/nio/FloatBuffer;

.field final synthetic this$0:Lorg/telegram/ui/Components/PhotoFilterView;

.field private toolsShaderProgram:I

.field private vertexBuffer:Ljava/nio/FloatBuffer;

.field private vertexInvertBuffer:Ljava/nio/FloatBuffer;

.field private vignetteHandle:I

.field private warmthHandle:I

.field private widthHandle:I


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Components/PhotoFilterView;Landroid/graphics/SurfaceTexture;Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "this$0"    # Lorg/telegram/ui/Components/PhotoFilterView;
    .param p2, "surface"    # Landroid/graphics/SurfaceTexture;
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v2, 0x3

    const/4 v1, 0x1

    .line 869
    iput-object p1, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    .line 870
    const-string/jumbo v0, "EGLThread"

    invoke-direct {p0, v0}, Lorg/telegram/messenger/DispatchQueue;-><init>(Ljava/lang/String;)V

    .line 317
    const/16 v0, 0x3098

    iput v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->EGL_CONTEXT_CLIENT_VERSION:I

    .line 318
    const/4 v0, 0x4

    iput v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->EGL_OPENGL_ES2_BIT:I

    .line 327
    iput-boolean v1, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->needUpdateBlurTexture:Z

    .line 407
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->enhanceTextures:[I

    .line 408
    new-array v0, v2, [I

    iput-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->renderTexture:[I

    .line 409
    new-array v0, v2, [I

    iput-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->renderFrameBuffer:[I

    .line 410
    new-array v0, v1, [I

    iput-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->curveTextures:[I

    .line 1487
    new-instance v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread$1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread$1;-><init>(Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->drawRunnable:Ljava/lang/Runnable;

    .line 871
    iput-object p2, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 872
    iput-object p3, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->currentBitmap:Landroid/graphics/Bitmap;

    .line 873
    return-void
.end method

.method static synthetic access$2200(Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;

    .prologue
    .line 315
    iget-boolean v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->initied:Z

    return v0
.end method

.method static synthetic access$2300(Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;)Ljavax/microedition/khronos/egl/EGL10;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;

    .prologue
    .line 315
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    return-object v0
.end method

.method static synthetic access$2400(Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;)Ljavax/microedition/khronos/egl/EGLContext;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;

    .prologue
    .line 315
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->eglContext:Ljavax/microedition/khronos/egl/EGLContext;

    return-object v0
.end method

.method static synthetic access$2500(Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;)Ljavax/microedition/khronos/egl/EGLSurface;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;

    .prologue
    .line 315
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    return-object v0
.end method

.method static synthetic access$2600(Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;)Ljavax/microedition/khronos/egl/EGLDisplay;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;

    .prologue
    .line 315
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    return-object v0
.end method

.method static synthetic access$2700(Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;

    .prologue
    .line 315
    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->renderBufferWidth:I

    return v0
.end method

.method static synthetic access$2800(Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;

    .prologue
    .line 315
    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->renderBufferHeight:I

    return v0
.end method

.method static synthetic access$2900(Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;

    .prologue
    .line 315
    invoke-direct {p0}, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->drawEnhancePass()V

    return-void
.end method

.method static synthetic access$3000(Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;

    .prologue
    .line 315
    invoke-direct {p0}, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->drawSharpenPass()V

    return-void
.end method

.method static synthetic access$3100(Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;

    .prologue
    .line 315
    invoke-direct {p0}, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->drawCustomParamsPass()V

    return-void
.end method

.method static synthetic access$3200(Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;

    .prologue
    .line 315
    iget-boolean v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->blured:Z

    return v0
.end method

.method static synthetic access$3202(Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;
    .param p1, "x1"    # Z

    .prologue
    .line 315
    iput-boolean p1, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->blured:Z

    return p1
.end method

.method static synthetic access$3300(Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;

    .prologue
    .line 315
    invoke-direct {p0}, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->drawBlurPass()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3400(Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;

    .prologue
    .line 315
    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->surfaceWidth:I

    return v0
.end method

.method static synthetic access$3500(Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;

    .prologue
    .line 315
    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->surfaceHeight:I

    return v0
.end method

.method static synthetic access$3600(Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;

    .prologue
    .line 315
    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->simpleShaderProgram:I

    return v0
.end method

.method static synthetic access$3700(Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;)[I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;

    .prologue
    .line 315
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->renderTexture:[I

    return-object v0
.end method

.method static synthetic access$3800(Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;

    .prologue
    .line 315
    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->simpleSourceImageHandle:I

    return v0
.end method

.method static synthetic access$3900(Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;

    .prologue
    .line 315
    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->simpleInputTexCoordHandle:I

    return v0
.end method

.method static synthetic access$4000(Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;)Ljava/nio/FloatBuffer;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;

    .prologue
    .line 315
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->textureBuffer:Ljava/nio/FloatBuffer;

    return-object v0
.end method

.method static synthetic access$4100(Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;

    .prologue
    .line 315
    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->simplePositionHandle:I

    return v0
.end method

.method static synthetic access$4200(Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;)Ljava/nio/FloatBuffer;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;

    .prologue
    .line 315
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->vertexBuffer:Ljava/nio/FloatBuffer;

    return-object v0
.end method

.method static synthetic access$4300(Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;)[I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;

    .prologue
    .line 315
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->renderFrameBuffer:[I

    return-object v0
.end method

.method static synthetic access$4400(Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;

    .prologue
    .line 315
    invoke-direct {p0}, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->getRenderBufferBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4602(Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 315
    iput-object p1, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->currentBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$4700(Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;

    .prologue
    .line 315
    iget-boolean v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->needUpdateBlurTexture:Z

    return v0
.end method

.method static synthetic access$4702(Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;
    .param p1, "x1"    # Z

    .prologue
    .line 315
    iput-boolean p1, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->needUpdateBlurTexture:Z

    return p1
.end method

.method static synthetic access$4800(Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;)J
    .locals 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;

    .prologue
    .line 315
    iget-wide v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->lastRenderCallTime:J

    return-wide v0
.end method

.method static synthetic access$4802(Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;J)J
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;
    .param p1, "x1"    # J

    .prologue
    .line 315
    iput-wide p1, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->lastRenderCallTime:J

    return-wide p1
.end method

.method static synthetic access$4900(Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;

    .prologue
    .line 315
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->drawRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method private createBitmap(Landroid/graphics/Bitmap;IIF)Landroid/graphics/Bitmap;
    .locals 7
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "w"    # I
    .param p3, "h"    # I
    .param p4, "scale"    # F

    .prologue
    const/4 v1, 0x0

    .line 1560
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 1561
    .local v5, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v5, p4, p4}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 1562
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoFilterView;->access$4500(Lorg/telegram/ui/Components/PhotoFilterView;)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 1563
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p1

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private drawBlurPass()Z
    .locals 8

    .prologue
    const/16 v4, 0x8

    const/4 v6, 0x1

    const/16 v7, 0xde1

    const/4 v1, 0x2

    const/4 v3, 0x0

    .line 1417
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoFilterView;->access$000(Lorg/telegram/ui/Components/PhotoFilterView;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoFilterView;->access$1700(Lorg/telegram/ui/Components/PhotoFilterView;)I

    move-result v0

    if-nez v0, :cond_1

    .line 1484
    :cond_0
    :goto_0
    return v3

    .line 1420
    :cond_1
    iget-boolean v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->needUpdateBlurTexture:Z

    if-eqz v0, :cond_2

    .line 1421
    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->blurShaderProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 1422
    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->blurSourceImageHandle:I

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 1423
    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->blurInputTexCoordHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 1424
    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->blurInputTexCoordHandle:I

    const/16 v2, 0x1406

    iget-object v5, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->textureBuffer:Ljava/nio/FloatBuffer;

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 1425
    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->blurPositionHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 1426
    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->blurPositionHandle:I

    const/16 v2, 0x1406

    iget-object v5, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->vertexInvertBuffer:Ljava/nio/FloatBuffer;

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 1428
    const v0, 0x8d40

    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->renderFrameBuffer:[I

    aget v2, v2, v3

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 1429
    const v0, 0x8d40

    const v2, 0x8ce0

    iget-object v5, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->renderTexture:[I

    aget v5, v5, v3

    invoke-static {v0, v2, v7, v5, v3}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    .line 1430
    invoke-static {v3}, Landroid/opengl/GLES20;->glClear(I)V

    .line 1431
    const v0, 0x84c0

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 1432
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->renderTexture:[I

    aget v0, v0, v6

    invoke-static {v7, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 1433
    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->blurWidthHandle:I

    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 1434
    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->blurHeightHandle:I

    const/high16 v2, 0x3f800000    # 1.0f

    iget v5, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->renderBufferHeight:I

    int-to-float v5, v5

    div-float/2addr v2, v5

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 1435
    const/4 v0, 0x5

    const/4 v2, 0x4

    invoke-static {v0, v3, v2}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 1437
    const v0, 0x8d40

    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->renderFrameBuffer:[I

    aget v2, v2, v1

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 1438
    const v0, 0x8d40

    const v2, 0x8ce0

    iget-object v5, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->renderTexture:[I

    aget v5, v5, v1

    invoke-static {v0, v2, v7, v5, v3}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    .line 1439
    invoke-static {v3}, Landroid/opengl/GLES20;->glClear(I)V

    .line 1440
    const v0, 0x84c0

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 1441
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->renderTexture:[I

    aget v0, v0, v3

    invoke-static {v7, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 1442
    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->blurWidthHandle:I

    const/high16 v2, 0x3f800000    # 1.0f

    iget v5, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->renderBufferWidth:I

    int-to-float v5, v5

    div-float/2addr v2, v5

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 1443
    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->blurHeightHandle:I

    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 1444
    const/4 v0, 0x5

    const/4 v2, 0x4

    invoke-static {v0, v3, v2}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 1445
    iput-boolean v3, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->needUpdateBlurTexture:Z

    .line 1448
    :cond_2
    const v0, 0x8d40

    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->renderFrameBuffer:[I

    aget v2, v2, v3

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 1449
    const v0, 0x8d40

    const v2, 0x8ce0

    iget-object v5, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->renderTexture:[I

    aget v5, v5, v3

    invoke-static {v0, v2, v7, v5, v3}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    .line 1450
    invoke-static {v3}, Landroid/opengl/GLES20;->glClear(I)V

    .line 1451
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoFilterView;->access$1700(Lorg/telegram/ui/Components/PhotoFilterView;)I

    move-result v0

    if-ne v0, v6, :cond_4

    .line 1452
    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->radialBlurShaderProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 1453
    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->radialBlurSourceImageHandle:I

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 1454
    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->radialBlurSourceImage2Handle:I

    invoke-static {v0, v6}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 1455
    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->radialBlurExcludeSizeHandle:I

    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-static {v2}, Lorg/telegram/ui/Components/PhotoFilterView;->access$1800(Lorg/telegram/ui/Components/PhotoFilterView;)F

    move-result v2

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 1456
    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->radialBlurExcludeBlurSizeHandle:I

    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-static {v2}, Lorg/telegram/ui/Components/PhotoFilterView;->access$1900(Lorg/telegram/ui/Components/PhotoFilterView;)F

    move-result v2

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 1457
    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->radialBlurExcludePointHandle:I

    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-static {v2}, Lorg/telegram/ui/Components/PhotoFilterView;->access$2000(Lorg/telegram/ui/Components/PhotoFilterView;)Lorg/telegram/ui/Components/Point;

    move-result-object v2

    iget v2, v2, Lorg/telegram/ui/Components/Point;->x:F

    iget-object v5, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-static {v5}, Lorg/telegram/ui/Components/PhotoFilterView;->access$2000(Lorg/telegram/ui/Components/PhotoFilterView;)Lorg/telegram/ui/Components/Point;

    move-result-object v5

    iget v5, v5, Lorg/telegram/ui/Components/Point;->y:F

    invoke-static {v0, v2, v5}, Landroid/opengl/GLES20;->glUniform2f(IFF)V

    .line 1458
    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->radialBlurAspectRatioHandle:I

    iget v2, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->renderBufferHeight:I

    int-to-float v2, v2

    iget v5, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->renderBufferWidth:I

    int-to-float v5, v5

    div-float/2addr v2, v5

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 1459
    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->radialBlurInputTexCoordHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 1460
    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->radialBlurInputTexCoordHandle:I

    const/16 v2, 0x1406

    iget-object v5, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->textureBuffer:Ljava/nio/FloatBuffer;

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 1461
    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->radialBlurPositionHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 1462
    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->radialBlurPositionHandle:I

    const/16 v2, 0x1406

    iget-object v5, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->vertexInvertBuffer:Ljava/nio/FloatBuffer;

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 1478
    :cond_3
    :goto_1
    const v0, 0x84c0

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 1479
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->renderTexture:[I

    aget v0, v0, v6

    invoke-static {v7, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 1480
    const v0, 0x84c1

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 1481
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->renderTexture:[I

    aget v0, v0, v1

    invoke-static {v7, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 1482
    const/4 v0, 0x5

    const/4 v1, 0x4

    invoke-static {v0, v3, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    move v3, v6

    .line 1484
    goto/16 :goto_0

    .line 1463
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoFilterView;->access$1700(Lorg/telegram/ui/Components/PhotoFilterView;)I

    move-result v0

    if-ne v0, v1, :cond_3

    .line 1464
    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->linearBlurShaderProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 1465
    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->linearBlurSourceImageHandle:I

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 1466
    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->linearBlurSourceImage2Handle:I

    invoke-static {v0, v6}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 1467
    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->linearBlurExcludeSizeHandle:I

    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-static {v2}, Lorg/telegram/ui/Components/PhotoFilterView;->access$1800(Lorg/telegram/ui/Components/PhotoFilterView;)F

    move-result v2

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 1468
    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->linearBlurExcludeBlurSizeHandle:I

    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-static {v2}, Lorg/telegram/ui/Components/PhotoFilterView;->access$1900(Lorg/telegram/ui/Components/PhotoFilterView;)F

    move-result v2

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 1469
    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->linearBlurAngleHandle:I

    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-static {v2}, Lorg/telegram/ui/Components/PhotoFilterView;->access$2100(Lorg/telegram/ui/Components/PhotoFilterView;)F

    move-result v2

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 1470
    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->linearBlurExcludePointHandle:I

    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-static {v2}, Lorg/telegram/ui/Components/PhotoFilterView;->access$2000(Lorg/telegram/ui/Components/PhotoFilterView;)Lorg/telegram/ui/Components/Point;

    move-result-object v2

    iget v2, v2, Lorg/telegram/ui/Components/Point;->x:F

    iget-object v5, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-static {v5}, Lorg/telegram/ui/Components/PhotoFilterView;->access$2000(Lorg/telegram/ui/Components/PhotoFilterView;)Lorg/telegram/ui/Components/Point;

    move-result-object v5

    iget v5, v5, Lorg/telegram/ui/Components/Point;->y:F

    invoke-static {v0, v2, v5}, Landroid/opengl/GLES20;->glUniform2f(IFF)V

    .line 1471
    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->linearBlurAspectRatioHandle:I

    iget v2, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->renderBufferHeight:I

    int-to-float v2, v2

    iget v5, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->renderBufferWidth:I

    int-to-float v5, v5

    div-float/2addr v2, v5

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 1472
    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->linearBlurInputTexCoordHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 1473
    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->linearBlurInputTexCoordHandle:I

    const/16 v2, 0x1406

    iget-object v5, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->textureBuffer:Ljava/nio/FloatBuffer;

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 1474
    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->linearBlurPositionHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 1475
    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->linearBlurPositionHandle:I

    const/16 v2, 0x1406

    iget-object v5, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->vertexInvertBuffer:Ljava/nio/FloatBuffer;

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    goto/16 :goto_1
.end method

.method private drawCustomParamsPass()V
    .locals 10

    .prologue
    const/high16 v8, 0x437f0000    # 255.0f

    const/high16 v2, 0x3f800000    # 1.0f

    const/16 v0, 0xde1

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 1355
    const v4, 0x8d40

    iget-object v5, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->renderFrameBuffer:[I

    const/4 v6, 0x1

    aget v5, v5, v6

    invoke-static {v4, v5}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 1356
    const v4, 0x8d40

    const v5, 0x8ce0

    iget-object v6, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->renderTexture:[I

    const/4 v7, 0x1

    aget v6, v6, v7

    invoke-static {v4, v5, v0, v6, v1}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    .line 1357
    invoke-static {v1}, Landroid/opengl/GLES20;->glClear(I)V

    .line 1359
    iget v4, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->toolsShaderProgram:I

    invoke-static {v4}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 1360
    const v4, 0x84c0

    invoke-static {v4}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 1361
    iget-object v4, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->renderTexture:[I

    aget v4, v4, v1

    invoke-static {v0, v4}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 1362
    iget v4, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->sourceImageHandle:I

    invoke-static {v4, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 1363
    iget-object v4, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-static {v4}, Lorg/telegram/ui/Components/PhotoFilterView;->access$000(Lorg/telegram/ui/Components/PhotoFilterView;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1364
    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->shadowsHandle:I

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 1365
    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->highlightsHandle:I

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 1366
    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->exposureHandle:I

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 1367
    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->contrastHandle:I

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 1368
    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->saturationHandle:I

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 1369
    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->warmthHandle:I

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 1370
    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->vignetteHandle:I

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 1371
    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->grainHandle:I

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 1372
    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->fadeAmountHandle:I

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 1373
    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->highlightsTintColorHandle:I

    invoke-static {v0, v3, v3, v3}, Landroid/opengl/GLES20;->glUniform3f(IFFF)V

    .line 1374
    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->highlightsTintIntensityHandle:I

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 1375
    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->shadowsTintColorHandle:I

    invoke-static {v0, v3, v3, v3}, Landroid/opengl/GLES20;->glUniform3f(IFFF)V

    .line 1376
    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->shadowsTintIntensityHandle:I

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 1377
    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->skipToneHandle:I

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 1407
    :cond_0
    :goto_0
    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->widthHandle:I

    iget v2, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->renderBufferWidth:I

    int-to-float v2, v2

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 1408
    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->heightHandle:I

    iget v2, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->renderBufferHeight:I

    int-to-float v2, v2

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 1409
    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->inputTexCoordHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 1410
    iget v2, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->inputTexCoordHandle:I

    const/4 v3, 0x2

    const/16 v4, 0x1406

    const/16 v6, 0x8

    iget-object v7, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->textureBuffer:Ljava/nio/FloatBuffer;

    move v5, v1

    invoke-static/range {v2 .. v7}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 1411
    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->positionHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 1412
    iget v2, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->positionHandle:I

    const/4 v3, 0x2

    const/16 v4, 0x1406

    const/16 v6, 0x8

    iget-object v7, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->vertexInvertBuffer:Ljava/nio/FloatBuffer;

    move v5, v1

    invoke-static/range {v2 .. v7}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 1413
    const/4 v0, 0x5

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 1414
    return-void

    .line 1379
    :cond_1
    iget v4, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->shadowsHandle:I

    iget-object v5, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-static {v5}, Lorg/telegram/ui/Components/PhotoFilterView;->access$300(Lorg/telegram/ui/Components/PhotoFilterView;)F

    move-result v5

    invoke-static {v4, v5}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 1380
    iget v4, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->highlightsHandle:I

    iget-object v5, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-static {v5}, Lorg/telegram/ui/Components/PhotoFilterView;->access$400(Lorg/telegram/ui/Components/PhotoFilterView;)F

    move-result v5

    invoke-static {v4, v5}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 1381
    iget v4, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->exposureHandle:I

    iget-object v5, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-static {v5}, Lorg/telegram/ui/Components/PhotoFilterView;->access$500(Lorg/telegram/ui/Components/PhotoFilterView;)F

    move-result v5

    invoke-static {v4, v5}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 1382
    iget v4, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->contrastHandle:I

    iget-object v5, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-static {v5}, Lorg/telegram/ui/Components/PhotoFilterView;->access$600(Lorg/telegram/ui/Components/PhotoFilterView;)F

    move-result v5

    invoke-static {v4, v5}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 1383
    iget v4, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->saturationHandle:I

    iget-object v5, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-static {v5}, Lorg/telegram/ui/Components/PhotoFilterView;->access$700(Lorg/telegram/ui/Components/PhotoFilterView;)F

    move-result v5

    invoke-static {v4, v5}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 1384
    iget v4, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->warmthHandle:I

    iget-object v5, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-static {v5}, Lorg/telegram/ui/Components/PhotoFilterView;->access$800(Lorg/telegram/ui/Components/PhotoFilterView;)F

    move-result v5

    invoke-static {v4, v5}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 1385
    iget v4, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->vignetteHandle:I

    iget-object v5, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-static {v5}, Lorg/telegram/ui/Components/PhotoFilterView;->access$900(Lorg/telegram/ui/Components/PhotoFilterView;)F

    move-result v5

    invoke-static {v4, v5}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 1386
    iget v4, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->grainHandle:I

    iget-object v5, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-static {v5}, Lorg/telegram/ui/Components/PhotoFilterView;->access$1000(Lorg/telegram/ui/Components/PhotoFilterView;)F

    move-result v5

    invoke-static {v4, v5}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 1387
    iget v4, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->fadeAmountHandle:I

    iget-object v5, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-static {v5}, Lorg/telegram/ui/Components/PhotoFilterView;->access$1100(Lorg/telegram/ui/Components/PhotoFilterView;)F

    move-result v5

    invoke-static {v4, v5}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 1388
    iget v4, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->highlightsTintColorHandle:I

    iget-object v5, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-static {v5}, Lorg/telegram/ui/Components/PhotoFilterView;->access$1200(Lorg/telegram/ui/Components/PhotoFilterView;)I

    move-result v5

    shr-int/lit8 v5, v5, 0x10

    and-int/lit16 v5, v5, 0xff

    int-to-float v5, v5

    div-float/2addr v5, v8

    iget-object v6, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-static {v6}, Lorg/telegram/ui/Components/PhotoFilterView;->access$1200(Lorg/telegram/ui/Components/PhotoFilterView;)I

    move-result v6

    shr-int/lit8 v6, v6, 0x8

    and-int/lit16 v6, v6, 0xff

    int-to-float v6, v6

    div-float/2addr v6, v8

    iget-object v7, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-static {v7}, Lorg/telegram/ui/Components/PhotoFilterView;->access$1200(Lorg/telegram/ui/Components/PhotoFilterView;)I

    move-result v7

    and-int/lit16 v7, v7, 0xff

    int-to-float v7, v7

    div-float/2addr v7, v8

    invoke-static {v4, v5, v6, v7}, Landroid/opengl/GLES20;->glUniform3f(IFFF)V

    .line 1389
    iget v4, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->highlightsTintIntensityHandle:I

    iget-object v5, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-static {v5}, Lorg/telegram/ui/Components/PhotoFilterView;->access$1300(Lorg/telegram/ui/Components/PhotoFilterView;)F

    move-result v5

    invoke-static {v4, v5}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 1390
    iget v4, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->shadowsTintColorHandle:I

    iget-object v5, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-static {v5}, Lorg/telegram/ui/Components/PhotoFilterView;->access$1400(Lorg/telegram/ui/Components/PhotoFilterView;)I

    move-result v5

    shr-int/lit8 v5, v5, 0x10

    and-int/lit16 v5, v5, 0xff

    int-to-float v5, v5

    div-float/2addr v5, v8

    iget-object v6, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-static {v6}, Lorg/telegram/ui/Components/PhotoFilterView;->access$1400(Lorg/telegram/ui/Components/PhotoFilterView;)I

    move-result v6

    shr-int/lit8 v6, v6, 0x8

    and-int/lit16 v6, v6, 0xff

    int-to-float v6, v6

    div-float/2addr v6, v8

    iget-object v7, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-static {v7}, Lorg/telegram/ui/Components/PhotoFilterView;->access$1400(Lorg/telegram/ui/Components/PhotoFilterView;)I

    move-result v7

    and-int/lit16 v7, v7, 0xff

    int-to-float v7, v7

    div-float/2addr v7, v8

    invoke-static {v4, v5, v6, v7}, Landroid/opengl/GLES20;->glUniform3f(IFFF)V

    .line 1391
    iget v4, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->shadowsTintIntensityHandle:I

    iget-object v5, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-static {v5}, Lorg/telegram/ui/Components/PhotoFilterView;->access$1500(Lorg/telegram/ui/Components/PhotoFilterView;)F

    move-result v5

    invoke-static {v4, v5}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 1392
    iget-object v4, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-static {v4}, Lorg/telegram/ui/Components/PhotoFilterView;->access$1600(Lorg/telegram/ui/Components/PhotoFilterView;)Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;->shouldBeSkipped()Z

    move-result v9

    .line 1393
    .local v9, "skipTone":Z
    iget v4, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->skipToneHandle:I

    if-eqz v9, :cond_2

    :goto_1
    invoke-static {v4, v2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 1394
    if-nez v9, :cond_0

    .line 1395
    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-static {v2}, Lorg/telegram/ui/Components/PhotoFilterView;->access$1600(Lorg/telegram/ui/Components/PhotoFilterView;)Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;->fillBuffer()V

    .line 1396
    const v2, 0x84c1

    invoke-static {v2}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 1397
    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->curveTextures:[I

    aget v2, v2, v1

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 1398
    const/16 v2, 0x2801

    const/16 v3, 0x2601

    invoke-static {v0, v2, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 1399
    const/16 v2, 0x2800

    const/16 v3, 0x2601

    invoke-static {v0, v2, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 1400
    const/16 v2, 0x2802

    const v3, 0x812f

    invoke-static {v0, v2, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 1401
    const/16 v2, 0x2803

    const v3, 0x812f

    invoke-static {v0, v2, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 1402
    const/16 v2, 0x1908

    const/16 v3, 0xc8

    const/4 v4, 0x1

    const/16 v6, 0x1908

    const/16 v7, 0x1401

    iget-object v5, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-static {v5}, Lorg/telegram/ui/Components/PhotoFilterView;->access$1600(Lorg/telegram/ui/Components/PhotoFilterView;)Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;

    move-result-object v5

    iget-object v8, v5, Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;->curveBuffer:Ljava/nio/ByteBuffer;

    move v5, v1

    invoke-static/range {v0 .. v8}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 1403
    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->curvesImageHandle:I

    const/4 v2, 0x1

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glUniform1i(II)V

    goto/16 :goto_0

    :cond_2
    move v2, v3

    .line 1393
    goto :goto_1
.end method

.method private drawEnhancePass()V
    .locals 18

    .prologue
    .line 1264
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->hsvGenerated:Z

    if-nez v1, :cond_0

    .line 1265
    const v1, 0x8d40

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->renderFrameBuffer:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 1266
    const v1, 0x8d40

    const v2, 0x8ce0

    const/16 v3, 0xde1

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->renderTexture:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    const/4 v5, 0x0

    invoke-static {v1, v2, v3, v4, v5}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    .line 1267
    const/4 v1, 0x0

    invoke-static {v1}, Landroid/opengl/GLES20;->glClear(I)V

    .line 1269
    move-object/from16 v0, p0

    iget v1, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->rgbToHsvShaderProgram:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 1270
    const v1, 0x84c0

    invoke-static {v1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 1271
    const/16 v1, 0xde1

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->renderTexture:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 1272
    move-object/from16 v0, p0

    iget v1, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->rgbToHsvSourceImageHandle:I

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 1273
    move-object/from16 v0, p0

    iget v1, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->rgbToHsvInputTexCoordHandle:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 1274
    move-object/from16 v0, p0

    iget v1, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->rgbToHsvInputTexCoordHandle:I

    const/4 v2, 0x2

    const/16 v3, 0x1406

    const/4 v4, 0x0

    const/16 v5, 0x8

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->textureBuffer:Ljava/nio/FloatBuffer;

    invoke-static/range {v1 .. v6}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 1275
    move-object/from16 v0, p0

    iget v1, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->rgbToHsvPositionHandle:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 1276
    move-object/from16 v0, p0

    iget v1, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->rgbToHsvPositionHandle:I

    const/4 v2, 0x2

    const/16 v3, 0x1406

    const/4 v4, 0x0

    const/16 v5, 0x8

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->vertexBuffer:Ljava/nio/FloatBuffer;

    invoke-static/range {v1 .. v6}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 1277
    const/4 v1, 0x5

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-static {v1, v2, v3}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 1279
    move-object/from16 v0, p0

    iget v1, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->renderBufferWidth:I

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->renderBufferHeight:I

    mul-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 1280
    .local v7, "hsvBuffer":Ljava/nio/ByteBuffer;
    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->renderBufferWidth:I

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->renderBufferHeight:I

    const/16 v5, 0x1908

    const/16 v6, 0x1401

    invoke-static/range {v1 .. v7}, Landroid/opengl/GLES20;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    .line 1282
    const/16 v1, 0xde1

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->enhanceTextures:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 1283
    const/16 v1, 0xde1

    const/16 v2, 0x2801

    const/16 v3, 0x2601

    invoke-static {v1, v2, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 1284
    const/16 v1, 0xde1

    const/16 v2, 0x2800

    const/16 v3, 0x2601

    invoke-static {v1, v2, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 1285
    const/16 v1, 0xde1

    const/16 v2, 0x2802

    const v3, 0x812f

    invoke-static {v1, v2, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 1286
    const/16 v1, 0xde1

    const/16 v2, 0x2803

    const v3, 0x812f

    invoke-static {v1, v2, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 1287
    const/16 v8, 0xde1

    const/4 v9, 0x0

    const/16 v10, 0x1908

    move-object/from16 v0, p0

    iget v11, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->renderBufferWidth:I

    move-object/from16 v0, p0

    iget v12, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->renderBufferHeight:I

    const/4 v13, 0x0

    const/16 v14, 0x1908

    const/16 v15, 0x1401

    move-object/from16 v16, v7

    invoke-static/range {v8 .. v16}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 1289
    const/16 v16, 0x0

    .line 1291
    .local v16, "buffer":Ljava/nio/ByteBuffer;
    const/16 v1, 0x4000

    :try_start_0
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v16

    .line 1292
    move-object/from16 v0, p0

    iget v1, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->renderBufferWidth:I

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->renderBufferHeight:I

    move-object/from16 v0, v16

    invoke-static {v7, v1, v2, v0}, Lorg/telegram/messenger/Utilities;->calcCDT(Ljava/nio/ByteBuffer;IILjava/nio/ByteBuffer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1297
    :goto_0
    const/16 v1, 0xde1

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->enhanceTextures:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 1298
    const/16 v1, 0xde1

    const/16 v2, 0x2801

    const/16 v3, 0x2601

    invoke-static {v1, v2, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 1299
    const/16 v1, 0xde1

    const/16 v2, 0x2800

    const/16 v3, 0x2601

    invoke-static {v1, v2, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 1300
    const/16 v1, 0xde1

    const/16 v2, 0x2802

    const v3, 0x812f

    invoke-static {v1, v2, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 1301
    const/16 v1, 0xde1

    const/16 v2, 0x2803

    const v3, 0x812f

    invoke-static {v1, v2, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 1302
    const/16 v8, 0xde1

    const/4 v9, 0x0

    const/16 v10, 0x1908

    const/16 v11, 0x100

    const/16 v12, 0x10

    const/4 v13, 0x0

    const/16 v14, 0x1908

    const/16 v15, 0x1401

    invoke-static/range {v8 .. v16}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 1304
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->hsvGenerated:Z

    .line 1307
    .end local v7    # "hsvBuffer":Ljava/nio/ByteBuffer;
    .end local v16    # "buffer":Ljava/nio/ByteBuffer;
    :cond_0
    const v1, 0x8d40

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->renderFrameBuffer:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 1308
    const v1, 0x8d40

    const v2, 0x8ce0

    const/16 v3, 0xde1

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->renderTexture:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    const/4 v5, 0x0

    invoke-static {v1, v2, v3, v4, v5}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    .line 1309
    const/4 v1, 0x0

    invoke-static {v1}, Landroid/opengl/GLES20;->glClear(I)V

    .line 1311
    move-object/from16 v0, p0

    iget v1, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->enhanceShaderProgram:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 1312
    const v1, 0x84c0

    invoke-static {v1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 1313
    const/16 v1, 0xde1

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->enhanceTextures:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 1314
    move-object/from16 v0, p0

    iget v1, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->enhanceSourceImageHandle:I

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 1315
    const v1, 0x84c1

    invoke-static {v1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 1316
    const/16 v1, 0xde1

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->enhanceTextures:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 1317
    move-object/from16 v0, p0

    iget v1, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->enhanceInputImageTexture2Handle:I

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 1318
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/PhotoFilterView;->access$000(Lorg/telegram/ui/Components/PhotoFilterView;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1319
    move-object/from16 v0, p0

    iget v1, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->enhanceIntensityHandle:I

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 1324
    :goto_1
    move-object/from16 v0, p0

    iget v1, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->enhanceInputTexCoordHandle:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 1325
    move-object/from16 v0, p0

    iget v1, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->enhanceInputTexCoordHandle:I

    const/4 v2, 0x2

    const/16 v3, 0x1406

    const/4 v4, 0x0

    const/16 v5, 0x8

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->textureBuffer:Ljava/nio/FloatBuffer;

    invoke-static/range {v1 .. v6}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 1326
    move-object/from16 v0, p0

    iget v1, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->enhancePositionHandle:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 1327
    move-object/from16 v0, p0

    iget v1, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->enhancePositionHandle:I

    const/4 v2, 0x2

    const/16 v3, 0x1406

    const/4 v4, 0x0

    const/16 v5, 0x8

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->vertexBuffer:Ljava/nio/FloatBuffer;

    invoke-static/range {v1 .. v6}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 1328
    const/4 v1, 0x5

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-static {v1, v2, v3}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 1329
    return-void

    .line 1293
    .restart local v7    # "hsvBuffer":Ljava/nio/ByteBuffer;
    .restart local v16    # "buffer":Ljava/nio/ByteBuffer;
    :catch_0
    move-exception v17

    .line 1294
    .local v17, "e":Ljava/lang/Exception;
    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 1321
    .end local v7    # "hsvBuffer":Ljava/nio/ByteBuffer;
    .end local v16    # "buffer":Ljava/nio/ByteBuffer;
    .end local v17    # "e":Ljava/lang/Exception;
    :cond_1
    move-object/from16 v0, p0

    iget v1, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->enhanceIntensityHandle:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-static {v2}, Lorg/telegram/ui/Components/PhotoFilterView;->access$100(Lorg/telegram/ui/Components/PhotoFilterView;)F

    move-result v2

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    goto :goto_1
.end method

.method private drawSharpenPass()V
    .locals 8

    .prologue
    const/16 v2, 0x1406

    const/16 v7, 0xde1

    const/16 v4, 0x8

    const/4 v1, 0x2

    const/4 v3, 0x0

    .line 1332
    const v0, 0x8d40

    iget-object v5, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->renderFrameBuffer:[I

    aget v5, v5, v3

    invoke-static {v0, v5}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 1333
    const v0, 0x8d40

    const v5, 0x8ce0

    iget-object v6, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->renderTexture:[I

    aget v6, v6, v3

    invoke-static {v0, v5, v7, v6, v3}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    .line 1334
    invoke-static {v3}, Landroid/opengl/GLES20;->glClear(I)V

    .line 1336
    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->sharpenShaderProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 1337
    const v0, 0x84c0

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 1338
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->renderTexture:[I

    const/4 v5, 0x1

    aget v0, v0, v5

    invoke-static {v7, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 1339
    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->sharpenSourceImageHandle:I

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 1340
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoFilterView;->access$000(Lorg/telegram/ui/Components/PhotoFilterView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1341
    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->sharpenHandle:I

    const/4 v5, 0x0

    invoke-static {v0, v5}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 1345
    :goto_0
    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->sharpenWidthHandle:I

    iget v5, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->renderBufferWidth:I

    int-to-float v5, v5

    invoke-static {v0, v5}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 1346
    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->sharpenHeightHandle:I

    iget v5, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->renderBufferHeight:I

    int-to-float v5, v5

    invoke-static {v0, v5}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 1347
    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->sharpenInputTexCoordHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 1348
    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->sharpenInputTexCoordHandle:I

    iget-object v5, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->textureBuffer:Ljava/nio/FloatBuffer;

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 1349
    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->sharpenPositionHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 1350
    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->sharpenPositionHandle:I

    iget-object v5, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->vertexInvertBuffer:Ljava/nio/FloatBuffer;

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 1351
    const/4 v0, 0x5

    const/4 v1, 0x4

    invoke-static {v0, v3, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 1352
    return-void

    .line 1343
    :cond_0
    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->sharpenHandle:I

    iget-object v5, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-static {v5}, Lorg/telegram/ui/Components/PhotoFilterView;->access$200(Lorg/telegram/ui/Components/PhotoFilterView;)F

    move-result v5

    invoke-static {v0, v5}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    goto :goto_0
.end method

.method private getRenderBufferBitmap()Landroid/graphics/Bitmap;
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 1526
    iget v1, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->renderBufferWidth:I

    iget v2, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->renderBufferHeight:I

    mul-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 1527
    .local v6, "buffer":Ljava/nio/ByteBuffer;
    iget v2, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->renderBufferWidth:I

    iget v3, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->renderBufferHeight:I

    const/16 v4, 0x1908

    const/16 v5, 0x1401

    move v1, v0

    invoke-static/range {v0 .. v6}, Landroid/opengl/GLES20;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    .line 1528
    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->renderBufferWidth:I

    iget v1, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->renderBufferHeight:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 1529
    .local v7, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v7, v6}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 1530
    return-object v7
.end method

.method private initGL()Z
    .locals 19

    .prologue
    .line 890
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v2

    check-cast v2, Ljavax/microedition/khronos/egl/EGL10;

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    .line 892
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {v2, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 893
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-ne v2, v3, :cond_0

    .line 894
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "eglGetDisplay failed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v3}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v3

    invoke-static {v3}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 895
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->finish()V

    .line 896
    const/4 v2, 0x0

    .line 1244
    :goto_0
    return v2

    .line 899
    :cond_0
    const/4 v2, 0x2

    new-array v15, v2, [I

    .line 900
    .local v15, "version":[I
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v2, v3, v15}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 901
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "eglInitialize failed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v3}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v3

    invoke-static {v3}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 902
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->finish()V

    .line 903
    const/4 v2, 0x0

    goto :goto_0

    .line 906
    :cond_1
    const/4 v2, 0x1

    new-array v7, v2, [I

    .line 907
    .local v7, "configsCount":[I
    const/4 v2, 0x1

    new-array v5, v2, [Ljavax/microedition/khronos/egl/EGLConfig;

    .line 908
    .local v5, "configs":[Ljavax/microedition/khronos/egl/EGLConfig;
    const/16 v2, 0xf

    new-array v4, v2, [I

    fill-array-data v4, :array_0

    .line 918
    .local v4, "configSpec":[I
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    const/4 v6, 0x1

    invoke-interface/range {v2 .. v7}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 919
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "eglChooseConfig failed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v3}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v3

    invoke-static {v3}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 920
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->finish()V

    .line 921
    const/4 v2, 0x0

    goto :goto_0

    .line 922
    :cond_2
    const/4 v2, 0x0

    aget v2, v7, v2

    if-lez v2, :cond_3

    .line 923
    const/4 v2, 0x0

    aget-object v2, v5, v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->eglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    .line 930
    const/4 v2, 0x3

    new-array v8, v2, [I

    fill-array-data v8, :array_1

    .line 931
    .local v8, "attrib_list":[I
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->eglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    sget-object v17, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    move-object/from16 v0, v17

    invoke-interface {v2, v3, v6, v0, v8}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->eglContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 932
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->eglContext:Ljavax/microedition/khronos/egl/EGLContext;

    if-nez v2, :cond_4

    .line 933
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "eglCreateContext failed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v3}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v3

    invoke-static {v3}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 934
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->finish()V

    .line 935
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 925
    .end local v8    # "attrib_list":[I
    :cond_3
    const-string/jumbo v2, "eglConfig not initialized"

    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 926
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->finish()V

    .line 927
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 938
    .restart local v8    # "attrib_list":[I
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    instance-of v2, v2, Landroid/graphics/SurfaceTexture;

    if-eqz v2, :cond_6

    .line 939
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->eglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v2, v3, v6, v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateWindowSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 945
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-ne v2, v3, :cond_7

    .line 946
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "createWindowSurface failed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v3}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v3

    invoke-static {v3}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 947
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->finish()V

    .line 948
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 941
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->finish()V

    .line 942
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 950
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->eglContext:Ljavax/microedition/khronos/egl/EGLContext;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v2, v3, v6, v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 951
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "eglMakeCurrent failed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v3}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v3

    invoke-static {v3}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 952
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->finish()V

    .line 953
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 955
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->eglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-virtual {v2}, Ljavax/microedition/khronos/egl/EGLContext;->getGL()Ljavax/microedition/khronos/opengles/GL;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->gl:Ljavax/microedition/khronos/opengles/GL;

    .line 958
    const/16 v2, 0x8

    new-array v12, v2, [F

    fill-array-data v12, :array_2

    .line 964
    .local v12, "squareCoordinates":[F
    array-length v2, v12

    mul-int/lit8 v2, v2, 0x4

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v9

    .line 965
    .local v9, "bb":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 966
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->vertexBuffer:Ljava/nio/FloatBuffer;

    .line 967
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->vertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v2, v12}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 968
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->vertexBuffer:Ljava/nio/FloatBuffer;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 970
    const/16 v2, 0x8

    new-array v13, v2, [F

    fill-array-data v13, :array_3

    .line 976
    .local v13, "squareCoordinates2":[F
    array-length v2, v13

    mul-int/lit8 v2, v2, 0x4

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v9

    .line 977
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 978
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->vertexInvertBuffer:Ljava/nio/FloatBuffer;

    .line 979
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->vertexInvertBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v2, v13}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 980
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->vertexInvertBuffer:Ljava/nio/FloatBuffer;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 982
    const/16 v2, 0x8

    new-array v14, v2, [F

    fill-array-data v14, :array_4

    .line 989
    .local v14, "textureCoordinates":[F
    array-length v2, v14

    mul-int/lit8 v2, v2, 0x4

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v9

    .line 990
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 991
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->textureBuffer:Ljava/nio/FloatBuffer;

    .line 992
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->textureBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v2, v14}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 993
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->textureBuffer:Ljava/nio/FloatBuffer;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 995
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->curveTextures:[I

    const/4 v6, 0x0

    invoke-static {v2, v3, v6}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 996
    const/4 v2, 0x2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->enhanceTextures:[I

    const/4 v6, 0x0

    invoke-static {v2, v3, v6}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 998
    const v2, 0x8b31

    const-string/jumbo v3, "attribute vec4 position;attribute vec2 inputTexCoord;varying vec2 texCoord;void main() {gl_Position = position;texCoord = inputTexCoord;}"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->loadShader(ILjava/lang/String;)I

    move-result v16

    .line 999
    .local v16, "vertexShader":I
    const v2, 0x8b30

    const-string/jumbo v3, "varying highp vec2 texCoord;uniform sampler2D sourceImage;uniform highp float width;uniform highp float height;uniform sampler2D curvesImage;uniform lowp float skipTone;uniform lowp float shadows;const mediump vec3 hsLuminanceWeighting = vec3(0.3, 0.3, 0.3);uniform lowp float highlights;uniform lowp float contrast;uniform lowp float fadeAmount;const mediump vec3 satLuminanceWeighting = vec3(0.2126, 0.7152, 0.0722);uniform lowp float saturation;uniform lowp float shadowsTintIntensity;uniform lowp float highlightsTintIntensity;uniform lowp vec3 shadowsTintColor;uniform lowp vec3 highlightsTintColor;uniform lowp float exposure;uniform lowp float warmth;uniform lowp float grain;const lowp float permTexUnit = 1.0 / 256.0;const lowp float permTexUnitHalf = 0.5 / 256.0;const lowp float grainsize = 2.3;uniform lowp float vignette;highp float getLuma(highp vec3 rgbP) {return (0.299 * rgbP.r) + (0.587 * rgbP.g) + (0.114 * rgbP.b);}lowp vec3 rgbToHsv(lowp vec3 c) {highp vec4 K = vec4(0.0, -1.0 / 3.0, 2.0 / 3.0, -1.0);highp vec4 p = c.g < c.b ? vec4(c.bg, K.wz) : vec4(c.gb, K.xy);highp vec4 q = c.r < p.x ? vec4(p.xyw, c.r) : vec4(c.r, p.yzx);highp float d = q.x - min(q.w, q.y);highp float e = 1.0e-10;return vec3(abs(q.z + (q.w - q.y) / (6.0 * d + e)), d / (q.x + e), q.x);}lowp vec3 hsvToRgb(lowp vec3 c) {highp vec4 K = vec4(1.0, 2.0 / 3.0, 1.0 / 3.0, 3.0);highp vec3 p = abs(fract(c.xxx + K.xyz) * 6.0 - K.www);return c.z * mix(K.xxx, clamp(p - K.xxx, 0.0, 1.0), c.y);}highp vec3 rgbToHsl(highp vec3 color) {highp vec3 hsl;highp float fmin = min(min(color.r, color.g), color.b);highp float fmax = max(max(color.r, color.g), color.b);highp float delta = fmax - fmin;hsl.z = (fmax + fmin) / 2.0;if (delta == 0.0) {hsl.x = 0.0;hsl.y = 0.0;} else {if (hsl.z < 0.5) {hsl.y = delta / (fmax + fmin);} else {hsl.y = delta / (2.0 - fmax - fmin);}highp float deltaR = (((fmax - color.r) / 6.0) + (delta / 2.0)) / delta;highp float deltaG = (((fmax - color.g) / 6.0) + (delta / 2.0)) / delta;highp float deltaB = (((fmax - color.b) / 6.0) + (delta / 2.0)) / delta;if (color.r == fmax) {hsl.x = deltaB - deltaG;} else if (color.g == fmax) {hsl.x = (1.0 / 3.0) + deltaR - deltaB;} else if (color.b == fmax) {hsl.x = (2.0 / 3.0) + deltaG - deltaR;}if (hsl.x < 0.0) {hsl.x += 1.0;} else if (hsl.x > 1.0) {hsl.x -= 1.0;}}return hsl;}highp float hueToRgb(highp float f1, highp float f2, highp float hue) {if (hue < 0.0) {hue += 1.0;} else if (hue > 1.0) {hue -= 1.0;}highp float res;if ((6.0 * hue) < 1.0) {res = f1 + (f2 - f1) * 6.0 * hue;} else if ((2.0 * hue) < 1.0) {res = f2;} else if ((3.0 * hue) < 2.0) {res = f1 + (f2 - f1) * ((2.0 / 3.0) - hue) * 6.0;} else {res = f1;} return res;}highp vec3 hslToRgb(highp vec3 hsl) {if (hsl.y == 0.0) {return vec3(hsl.z);} else {highp float f2;if (hsl.z < 0.5) {f2 = hsl.z * (1.0 + hsl.y);} else {f2 = (hsl.z + hsl.y) - (hsl.y * hsl.z);}highp float f1 = 2.0 * hsl.z - f2;return vec3(hueToRgb(f1, f2, hsl.x + (1.0/3.0)), hueToRgb(f1, f2, hsl.x), hueToRgb(f1, f2, hsl.x - (1.0/3.0)));}}highp vec3 rgbToYuv(highp vec3 inP) {highp float luma = getLuma(inP);return vec3(luma, (1.0 / 1.772) * (inP.b - luma), (1.0 / 1.402) * (inP.r - luma));}lowp vec3 yuvToRgb(highp vec3 inP) {return vec3(1.402 * inP.b + inP.r, (inP.r - (0.299 * 1.402 / 0.587) * inP.b - (0.114 * 1.772 / 0.587) * inP.g), 1.772 * inP.g + inP.r);}lowp float easeInOutSigmoid(lowp float value, lowp float strength) {if (value > 0.5) {return 1.0 - pow(2.0 - 2.0 * value, 1.0 / (1.0 - strength)) * 0.5;} else {return pow(2.0 * value, 1.0 / (1.0 - strength)) * 0.5;}}lowp vec3 applyLuminanceCurve(lowp vec3 pixel) {highp float index = floor(clamp(pixel.z / (1.0 / 200.0), 0.0, 199.0));pixel.y = mix(0.0, pixel.y, smoothstep(0.0, 0.1, pixel.z) * (1.0 - smoothstep(0.8, 1.0, pixel.z)));pixel.z = texture2D(curvesImage, vec2(1.0 / 200.0 * index, 0)).a;return pixel;}lowp vec3 applyRGBCurve(lowp vec3 pixel) {highp float index = floor(clamp(pixel.r / (1.0 / 200.0), 0.0, 199.0));pixel.r = texture2D(curvesImage, vec2(1.0 / 200.0 * index, 0)).r;index = floor(clamp(pixel.g / (1.0 / 200.0), 0.0, 199.0));pixel.g = clamp(texture2D(curvesImage, vec2(1.0 / 200.0 * index, 0)).g, 0.0, 1.0);index = floor(clamp(pixel.b / (1.0 / 200.0), 0.0, 199.0));pixel.b = clamp(texture2D(curvesImage, vec2(1.0 / 200.0 * index, 0)).b, 0.0, 1.0);return pixel;}highp vec3 fadeAdjust(highp vec3 color, highp float fadeVal) {return (color * (1.0 - fadeVal)) + ((color + (vec3(-0.9772) * pow(vec3(color), vec3(3.0)) + vec3(1.708) * pow(vec3(color), vec3(2.0)) + vec3(-0.1603) * vec3(color) + vec3(0.2878) - color * vec3(0.9))) * fadeVal);}lowp vec3 tintRaiseShadowsCurve(lowp vec3 color) {return vec3(-0.003671) * pow(color, vec3(3.0)) + vec3(0.3842) * pow(color, vec3(2.0)) + vec3(0.3764) * color + vec3(0.2515);}lowp vec3 tintShadows(lowp vec3 texel, lowp vec3 tintColor, lowp float tintAmount) {return clamp(mix(texel, mix(texel, tintRaiseShadowsCurve(texel), tintColor), tintAmount), 0.0, 1.0);} lowp vec3 tintHighlights(lowp vec3 texel, lowp vec3 tintColor, lowp float tintAmount) {return clamp(mix(texel, mix(texel, vec3(1.0) - tintRaiseShadowsCurve(vec3(1.0) - texel), (vec3(1.0) - tintColor)), tintAmount), 0.0, 1.0);}highp vec4 rnm(in highp vec2 tc) {highp float noise = sin(dot(tc, vec2(12.9898, 78.233))) * 43758.5453;return vec4(fract(noise), fract(noise * 1.2154), fract(noise * 1.3453), fract(noise * 1.3647)) * 2.0 - 1.0;}highp float fade(in highp float t) {return t * t * t * (t * (t * 6.0 - 15.0) + 10.0);}highp float pnoise3D(in highp vec3 p) {highp vec3 pi = permTexUnit * floor(p) + permTexUnitHalf;highp vec3 pf = fract(p);highp float perm = rnm(pi.xy).a;highp float n000 = dot(rnm(vec2(perm, pi.z)).rgb * 4.0 - 1.0, pf);highp float n001 = dot(rnm(vec2(perm, pi.z + permTexUnit)).rgb * 4.0 - 1.0, pf - vec3(0.0, 0.0, 1.0));perm = rnm(pi.xy + vec2(0.0, permTexUnit)).a;highp float n010 = dot(rnm(vec2(perm, pi.z)).rgb * 4.0 - 1.0, pf - vec3(0.0, 1.0, 0.0));highp float n011 = dot(rnm(vec2(perm, pi.z + permTexUnit)).rgb * 4.0 - 1.0, pf - vec3(0.0, 1.0, 1.0));perm = rnm(pi.xy + vec2(permTexUnit, 0.0)).a;highp float n100 = dot(rnm(vec2(perm, pi.z)).rgb * 4.0 - 1.0, pf - vec3(1.0, 0.0, 0.0));highp float n101 = dot(rnm(vec2(perm, pi.z + permTexUnit)).rgb * 4.0 - 1.0, pf - vec3(1.0, 0.0, 1.0));perm = rnm(pi.xy + vec2(permTexUnit, permTexUnit)).a;highp float n110 = dot(rnm(vec2(perm, pi.z)).rgb * 4.0 - 1.0, pf - vec3(1.0, 1.0, 0.0));highp float n111 = dot(rnm(vec2(perm, pi.z + permTexUnit)).rgb * 4.0 - 1.0, pf - vec3(1.0, 1.0, 1.0));highp vec4 n_x = mix(vec4(n000, n001, n010, n011), vec4(n100, n101, n110, n111), fade(pf.x));highp vec2 n_xy = mix(n_x.xy, n_x.zw, fade(pf.y));return mix(n_xy.x, n_xy.y, fade(pf.z));}lowp vec2 coordRot(in lowp vec2 tc, in lowp float angle) {return vec2(((tc.x * 2.0 - 1.0) * cos(angle) - (tc.y * 2.0 - 1.0) * sin(angle)) * 0.5 + 0.5, ((tc.y * 2.0 - 1.0) * cos(angle) + (tc.x * 2.0 - 1.0) * sin(angle)) * 0.5 + 0.5);}void main() {lowp vec4 source = texture2D(sourceImage, texCoord);lowp vec4 result = source;const lowp float toolEpsilon = 0.005;if (skipTone < toolEpsilon) {result = vec4(applyRGBCurve(hslToRgb(applyLuminanceCurve(rgbToHsl(result.rgb)))), result.a);}mediump float hsLuminance = dot(result.rgb, hsLuminanceWeighting);mediump float shadow = clamp((pow(hsLuminance, 1.0 / shadows) + (-0.76) * pow(hsLuminance, 2.0 / shadows)) - hsLuminance, 0.0, 1.0);mediump float highlight = clamp((1.0 - (pow(1.0 - hsLuminance, 1.0 / (2.0 - highlights)) + (-0.8) * pow(1.0 - hsLuminance, 2.0 / (2.0 - highlights)))) - hsLuminance, -1.0, 0.0);lowp vec3 hsresult = vec3(0.0, 0.0, 0.0) + ((hsLuminance + shadow + highlight) - 0.0) * ((result.rgb - vec3(0.0, 0.0, 0.0)) / (hsLuminance - 0.0));mediump float contrastedLuminance = ((hsLuminance - 0.5) * 1.5) + 0.5;mediump float whiteInterp = contrastedLuminance * contrastedLuminance * contrastedLuminance;mediump float whiteTarget = clamp(highlights, 1.0, 2.0) - 1.0;hsresult = mix(hsresult, vec3(1.0), whiteInterp * whiteTarget);mediump float invContrastedLuminance = 1.0 - contrastedLuminance;mediump float blackInterp = invContrastedLuminance * invContrastedLuminance * invContrastedLuminance;mediump float blackTarget = 1.0 - clamp(shadows, 0.0, 1.0);hsresult = mix(hsresult, vec3(0.0), blackInterp * blackTarget);result = vec4(hsresult.rgb, result.a);result = vec4(clamp(((result.rgb - vec3(0.5)) * contrast + vec3(0.5)), 0.0, 1.0), result.a);if (abs(fadeAmount) > toolEpsilon) {result.rgb = fadeAdjust(result.rgb, fadeAmount);}lowp float satLuminance = dot(result.rgb, satLuminanceWeighting);lowp vec3 greyScaleColor = vec3(satLuminance);result = vec4(clamp(mix(greyScaleColor, result.rgb, saturation), 0.0, 1.0), result.a);if (abs(shadowsTintIntensity) > toolEpsilon) {result.rgb = tintShadows(result.rgb, shadowsTintColor, shadowsTintIntensity * 2.0);}if (abs(highlightsTintIntensity) > toolEpsilon) {result.rgb = tintHighlights(result.rgb, highlightsTintColor, highlightsTintIntensity * 2.0);}if (abs(exposure) > toolEpsilon) {mediump float mag = exposure * 1.045;mediump float exppower = 1.0 + abs(mag);if (mag < 0.0) {exppower = 1.0 / exppower;}result.r = 1.0 - pow((1.0 - result.r), exppower);result.g = 1.0 - pow((1.0 - result.g), exppower);result.b = 1.0 - pow((1.0 - result.b), exppower);}if (abs(warmth) > toolEpsilon) {highp vec3 yuvVec;if (warmth > 0.0 ) {yuvVec = vec3(0.1765, -0.1255, 0.0902);} else {yuvVec = -vec3(0.0588, 0.1569, -0.1255);}highp vec3 yuvColor = rgbToYuv(result.rgb);highp float luma = yuvColor.r;highp float curveScale = sin(luma * 3.14159);yuvColor += 0.375 * warmth * curveScale * yuvVec;result.rgb = yuvToRgb(yuvColor);}if (abs(grain) > toolEpsilon) {highp vec3 rotOffset = vec3(1.425, 3.892, 5.835);highp vec2 rotCoordsR = coordRot(texCoord, rotOffset.x);highp vec3 noise = vec3(pnoise3D(vec3(rotCoordsR * vec2(width / grainsize, height / grainsize),0.0)));lowp vec3 lumcoeff = vec3(0.299,0.587,0.114);lowp float luminance = dot(result.rgb, lumcoeff);lowp float lum = smoothstep(0.2, 0.0, luminance);lum += luminance;noise = mix(noise,vec3(0.0),pow(lum,4.0));result.rgb = result.rgb + noise * grain;}if (abs(vignette) > toolEpsilon) {const lowp float midpoint = 0.7;const lowp float fuzziness = 0.62;lowp float radDist = length(texCoord - 0.5) / sqrt(0.5);lowp float mag = easeInOutSigmoid(radDist * midpoint, fuzziness) * vignette * 0.645;result.rgb = mix(pow(result.rgb, vec3(1.0 / (1.0 - mag))), vec3(0.0), mag * mag);}gl_FragColor = result;}"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->loadShader(ILjava/lang/String;)I

    move-result v10

    .line 1001
    .local v10, "fragmentShader":I
    if-eqz v16, :cond_b

    if-eqz v10, :cond_b

    .line 1002
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->toolsShaderProgram:I

    .line 1003
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->toolsShaderProgram:I

    move/from16 v0, v16

    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 1004
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->toolsShaderProgram:I

    invoke-static {v2, v10}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 1005
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->toolsShaderProgram:I

    const/4 v3, 0x0

    const-string/jumbo v6, "position"

    invoke-static {v2, v3, v6}, Landroid/opengl/GLES20;->glBindAttribLocation(IILjava/lang/String;)V

    .line 1006
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->toolsShaderProgram:I

    const/4 v3, 0x1

    const-string/jumbo v6, "inputTexCoord"

    invoke-static {v2, v3, v6}, Landroid/opengl/GLES20;->glBindAttribLocation(IILjava/lang/String;)V

    .line 1008
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->toolsShaderProgram:I

    invoke-static {v2}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    .line 1009
    const/4 v2, 0x1

    new-array v11, v2, [I

    .line 1010
    .local v11, "linkStatus":[I
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->toolsShaderProgram:I

    const v3, 0x8b82

    const/4 v6, 0x0

    invoke-static {v2, v3, v11, v6}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 1011
    const/4 v2, 0x0

    aget v2, v11, v2

    if-nez v2, :cond_a

    .line 1014
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->toolsShaderProgram:I

    invoke-static {v2}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 1015
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->toolsShaderProgram:I

    .line 1043
    :goto_1
    const v2, 0x8b31

    const-string/jumbo v3, "attribute vec4 position;attribute vec2 inputTexCoord;varying vec2 texCoord;uniform highp float inputWidth;uniform highp float inputHeight;varying vec2 leftTexCoord;varying vec2 rightTexCoord;varying vec2 topTexCoord;varying vec2 bottomTexCoord;void main() {gl_Position = position;texCoord = inputTexCoord;highp vec2 widthStep = vec2(1.0 / inputWidth, 0.0);highp vec2 heightStep = vec2(0.0, 1.0 / inputHeight);leftTexCoord = inputTexCoord - widthStep;rightTexCoord = inputTexCoord + widthStep;topTexCoord = inputTexCoord + heightStep;bottomTexCoord = inputTexCoord - heightStep;}"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->loadShader(ILjava/lang/String;)I

    move-result v16

    .line 1044
    const v2, 0x8b30

    const-string/jumbo v3, "precision highp float;varying vec2 texCoord;varying vec2 leftTexCoord;varying vec2 rightTexCoord;varying vec2 topTexCoord;varying vec2 bottomTexCoord;uniform sampler2D sourceImage;uniform float sharpen;void main() {vec4 result = texture2D(sourceImage, texCoord);vec3 leftTextureColor = texture2D(sourceImage, leftTexCoord).rgb;vec3 rightTextureColor = texture2D(sourceImage, rightTexCoord).rgb;vec3 topTextureColor = texture2D(sourceImage, topTexCoord).rgb;vec3 bottomTextureColor = texture2D(sourceImage, bottomTexCoord).rgb;result.rgb = result.rgb * (1.0 + 4.0 * sharpen) - (leftTextureColor + rightTextureColor + topTextureColor + bottomTextureColor) * sharpen;gl_FragColor = result;}"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->loadShader(ILjava/lang/String;)I

    move-result v10

    .line 1046
    if-eqz v16, :cond_d

    if-eqz v10, :cond_d

    .line 1047
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->sharpenShaderProgram:I

    .line 1048
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->sharpenShaderProgram:I

    move/from16 v0, v16

    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 1049
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->sharpenShaderProgram:I

    invoke-static {v2, v10}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 1050
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->sharpenShaderProgram:I

    const/4 v3, 0x0

    const-string/jumbo v6, "position"

    invoke-static {v2, v3, v6}, Landroid/opengl/GLES20;->glBindAttribLocation(IILjava/lang/String;)V

    .line 1051
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->sharpenShaderProgram:I

    const/4 v3, 0x1

    const-string/jumbo v6, "inputTexCoord"

    invoke-static {v2, v3, v6}, Landroid/opengl/GLES20;->glBindAttribLocation(IILjava/lang/String;)V

    .line 1053
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->sharpenShaderProgram:I

    invoke-static {v2}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    .line 1054
    const/4 v2, 0x1

    new-array v11, v2, [I

    .line 1055
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->sharpenShaderProgram:I

    const v3, 0x8b82

    const/4 v6, 0x0

    invoke-static {v2, v3, v11, v6}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 1056
    const/4 v2, 0x0

    aget v2, v11, v2

    if-nez v2, :cond_c

    .line 1057
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->sharpenShaderProgram:I

    invoke-static {v2}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 1058
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->sharpenShaderProgram:I

    .line 1072
    :goto_2
    const v2, 0x8b31

    const-string/jumbo v3, "attribute vec4 position;attribute vec4 inputTexCoord;uniform highp float texelWidthOffset;uniform highp float texelHeightOffset;varying vec2 blurCoordinates[9];void main() {gl_Position = position;vec2 singleStepOffset = vec2(texelWidthOffset, texelHeightOffset);blurCoordinates[0] = inputTexCoord.xy;blurCoordinates[1] = inputTexCoord.xy + singleStepOffset * 1.458430;blurCoordinates[2] = inputTexCoord.xy - singleStepOffset * 1.458430;blurCoordinates[3] = inputTexCoord.xy + singleStepOffset * 3.403985;blurCoordinates[4] = inputTexCoord.xy - singleStepOffset * 3.403985;blurCoordinates[5] = inputTexCoord.xy + singleStepOffset * 5.351806;blurCoordinates[6] = inputTexCoord.xy - singleStepOffset * 5.351806;blurCoordinates[7] = inputTexCoord.xy + singleStepOffset * 7.302940;blurCoordinates[8] = inputTexCoord.xy - singleStepOffset * 7.302940;}"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->loadShader(ILjava/lang/String;)I

    move-result v16

    .line 1073
    const v2, 0x8b30

    const-string/jumbo v3, "uniform sampler2D sourceImage;varying highp vec2 blurCoordinates[9];void main() {lowp vec4 sum = vec4(0.0);sum += texture2D(sourceImage, blurCoordinates[0]) * 0.133571;sum += texture2D(sourceImage, blurCoordinates[1]) * 0.233308;sum += texture2D(sourceImage, blurCoordinates[2]) * 0.233308;sum += texture2D(sourceImage, blurCoordinates[3]) * 0.135928;sum += texture2D(sourceImage, blurCoordinates[4]) * 0.135928;sum += texture2D(sourceImage, blurCoordinates[5]) * 0.051383;sum += texture2D(sourceImage, blurCoordinates[6]) * 0.051383;sum += texture2D(sourceImage, blurCoordinates[7]) * 0.012595;sum += texture2D(sourceImage, blurCoordinates[8]) * 0.012595;gl_FragColor = sum;}"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->loadShader(ILjava/lang/String;)I

    move-result v10

    .line 1075
    if-eqz v16, :cond_f

    if-eqz v10, :cond_f

    .line 1076
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->blurShaderProgram:I

    .line 1077
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->blurShaderProgram:I

    move/from16 v0, v16

    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 1078
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->blurShaderProgram:I

    invoke-static {v2, v10}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 1079
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->blurShaderProgram:I

    const/4 v3, 0x0

    const-string/jumbo v6, "position"

    invoke-static {v2, v3, v6}, Landroid/opengl/GLES20;->glBindAttribLocation(IILjava/lang/String;)V

    .line 1080
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->blurShaderProgram:I

    const/4 v3, 0x1

    const-string/jumbo v6, "inputTexCoord"

    invoke-static {v2, v3, v6}, Landroid/opengl/GLES20;->glBindAttribLocation(IILjava/lang/String;)V

    .line 1082
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->blurShaderProgram:I

    invoke-static {v2}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    .line 1083
    const/4 v2, 0x1

    new-array v11, v2, [I

    .line 1084
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->blurShaderProgram:I

    const v3, 0x8b82

    const/4 v6, 0x0

    invoke-static {v2, v3, v11, v6}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 1085
    const/4 v2, 0x0

    aget v2, v11, v2

    if-nez v2, :cond_e

    .line 1086
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->blurShaderProgram:I

    invoke-static {v2}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 1087
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->blurShaderProgram:I

    .line 1100
    :goto_3
    const v2, 0x8b31

    const-string/jumbo v3, "attribute vec4 position;attribute vec2 inputTexCoord;varying vec2 texCoord;void main() {gl_Position = position;texCoord = inputTexCoord;}"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->loadShader(ILjava/lang/String;)I

    move-result v16

    .line 1101
    const v2, 0x8b30

    const-string/jumbo v3, "varying highp vec2 texCoord;uniform sampler2D sourceImage;uniform sampler2D inputImageTexture2;uniform lowp float excludeSize;uniform lowp vec2 excludePoint;uniform lowp float excludeBlurSize;uniform highp float angle;uniform highp float aspectRatio;void main() {lowp vec4 sharpImageColor = texture2D(sourceImage, texCoord);lowp vec4 blurredImageColor = texture2D(inputImageTexture2, texCoord);highp vec2 texCoordToUse = vec2(texCoord.x, (texCoord.y * aspectRatio + 0.5 - 0.5 * aspectRatio));highp float distanceFromCenter = abs((texCoordToUse.x - excludePoint.x) * aspectRatio * cos(angle) + (texCoordToUse.y - excludePoint.y) * sin(angle));gl_FragColor = mix(sharpImageColor, blurredImageColor, smoothstep(excludeSize - excludeBlurSize, excludeSize, distanceFromCenter));}"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->loadShader(ILjava/lang/String;)I

    move-result v10

    .line 1103
    if-eqz v16, :cond_11

    if-eqz v10, :cond_11

    .line 1104
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->linearBlurShaderProgram:I

    .line 1105
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->linearBlurShaderProgram:I

    move/from16 v0, v16

    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 1106
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->linearBlurShaderProgram:I

    invoke-static {v2, v10}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 1107
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->linearBlurShaderProgram:I

    const/4 v3, 0x0

    const-string/jumbo v6, "position"

    invoke-static {v2, v3, v6}, Landroid/opengl/GLES20;->glBindAttribLocation(IILjava/lang/String;)V

    .line 1108
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->linearBlurShaderProgram:I

    const/4 v3, 0x1

    const-string/jumbo v6, "inputTexCoord"

    invoke-static {v2, v3, v6}, Landroid/opengl/GLES20;->glBindAttribLocation(IILjava/lang/String;)V

    .line 1110
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->linearBlurShaderProgram:I

    invoke-static {v2}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    .line 1111
    const/4 v2, 0x1

    new-array v11, v2, [I

    .line 1112
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->linearBlurShaderProgram:I

    const v3, 0x8b82

    const/4 v6, 0x0

    invoke-static {v2, v3, v11, v6}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 1113
    const/4 v2, 0x0

    aget v2, v11, v2

    if-nez v2, :cond_10

    .line 1114
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->linearBlurShaderProgram:I

    invoke-static {v2}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 1115
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->linearBlurShaderProgram:I

    .line 1132
    :goto_4
    const v2, 0x8b31

    const-string/jumbo v3, "attribute vec4 position;attribute vec2 inputTexCoord;varying vec2 texCoord;void main() {gl_Position = position;texCoord = inputTexCoord;}"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->loadShader(ILjava/lang/String;)I

    move-result v16

    .line 1133
    const v2, 0x8b30

    const-string/jumbo v3, "varying highp vec2 texCoord;uniform sampler2D sourceImage;uniform sampler2D inputImageTexture2;uniform lowp float excludeSize;uniform lowp vec2 excludePoint;uniform lowp float excludeBlurSize;uniform highp float aspectRatio;void main() {lowp vec4 sharpImageColor = texture2D(sourceImage, texCoord);lowp vec4 blurredImageColor = texture2D(inputImageTexture2, texCoord);highp vec2 texCoordToUse = vec2(texCoord.x, (texCoord.y * aspectRatio + 0.5 - 0.5 * aspectRatio));highp float distanceFromCenter = distance(excludePoint, texCoordToUse);gl_FragColor = mix(sharpImageColor, blurredImageColor, smoothstep(excludeSize - excludeBlurSize, excludeSize, distanceFromCenter));}"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->loadShader(ILjava/lang/String;)I

    move-result v10

    .line 1135
    if-eqz v16, :cond_13

    if-eqz v10, :cond_13

    .line 1136
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->radialBlurShaderProgram:I

    .line 1137
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->radialBlurShaderProgram:I

    move/from16 v0, v16

    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 1138
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->radialBlurShaderProgram:I

    invoke-static {v2, v10}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 1139
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->radialBlurShaderProgram:I

    const/4 v3, 0x0

    const-string/jumbo v6, "position"

    invoke-static {v2, v3, v6}, Landroid/opengl/GLES20;->glBindAttribLocation(IILjava/lang/String;)V

    .line 1140
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->radialBlurShaderProgram:I

    const/4 v3, 0x1

    const-string/jumbo v6, "inputTexCoord"

    invoke-static {v2, v3, v6}, Landroid/opengl/GLES20;->glBindAttribLocation(IILjava/lang/String;)V

    .line 1142
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->radialBlurShaderProgram:I

    invoke-static {v2}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    .line 1143
    const/4 v2, 0x1

    new-array v11, v2, [I

    .line 1144
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->radialBlurShaderProgram:I

    const v3, 0x8b82

    const/4 v6, 0x0

    invoke-static {v2, v3, v11, v6}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 1145
    const/4 v2, 0x0

    aget v2, v11, v2

    if-nez v2, :cond_12

    .line 1146
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->radialBlurShaderProgram:I

    invoke-static {v2}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 1147
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->radialBlurShaderProgram:I

    .line 1163
    :goto_5
    const v2, 0x8b31

    const-string/jumbo v3, "attribute vec4 position;attribute vec2 inputTexCoord;varying vec2 texCoord;void main() {gl_Position = position;texCoord = inputTexCoord;}"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->loadShader(ILjava/lang/String;)I

    move-result v16

    .line 1164
    const v2, 0x8b30

    const-string/jumbo v3, "precision highp float;varying vec2 texCoord;uniform sampler2D sourceImage;vec3 rgb_to_hsv(vec3 c) {vec4 K = vec4(0.0, -1.0 / 3.0, 2.0 / 3.0, -1.0);vec4 p = c.g < c.b ? vec4(c.bg, K.wz) : vec4(c.gb, K.xy);vec4 q = c.r < p.x ? vec4(p.xyw, c.r) : vec4(c.r, p.yzx);float d = q.x - min(q.w, q.y);float e = 1.0e-10;return vec3(abs(q.z + (q.w - q.y) / (6.0 * d + e)), d / (q.x + e), q.x);}void main() {vec4 texel = texture2D(sourceImage, texCoord);gl_FragColor = vec4(rgb_to_hsv(texel.rgb), texel.a);}"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->loadShader(ILjava/lang/String;)I

    move-result v10

    .line 1165
    if-eqz v16, :cond_15

    if-eqz v10, :cond_15

    .line 1166
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->rgbToHsvShaderProgram:I

    .line 1167
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->rgbToHsvShaderProgram:I

    move/from16 v0, v16

    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 1168
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->rgbToHsvShaderProgram:I

    invoke-static {v2, v10}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 1169
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->rgbToHsvShaderProgram:I

    const/4 v3, 0x0

    const-string/jumbo v6, "position"

    invoke-static {v2, v3, v6}, Landroid/opengl/GLES20;->glBindAttribLocation(IILjava/lang/String;)V

    .line 1170
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->rgbToHsvShaderProgram:I

    const/4 v3, 0x1

    const-string/jumbo v6, "inputTexCoord"

    invoke-static {v2, v3, v6}, Landroid/opengl/GLES20;->glBindAttribLocation(IILjava/lang/String;)V

    .line 1172
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->rgbToHsvShaderProgram:I

    invoke-static {v2}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    .line 1173
    const/4 v2, 0x1

    new-array v11, v2, [I

    .line 1174
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->rgbToHsvShaderProgram:I

    const v3, 0x8b82

    const/4 v6, 0x0

    invoke-static {v2, v3, v11, v6}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 1175
    const/4 v2, 0x0

    aget v2, v11, v2

    if-nez v2, :cond_14

    .line 1176
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->rgbToHsvShaderProgram:I

    invoke-static {v2}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 1177
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->rgbToHsvShaderProgram:I

    .line 1188
    :goto_6
    const v2, 0x8b31

    const-string/jumbo v3, "attribute vec4 position;attribute vec2 inputTexCoord;varying vec2 texCoord;void main() {gl_Position = position;texCoord = inputTexCoord;}"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->loadShader(ILjava/lang/String;)I

    move-result v16

    .line 1189
    const v2, 0x8b30

    const-string/jumbo v3, "precision highp float;varying vec2 texCoord;uniform sampler2D sourceImage;uniform sampler2D inputImageTexture2;uniform float intensity;float enhance(float value) {const vec2 offset = vec2(0.001953125, 0.03125);value = value + offset.x;vec2 coord = (clamp(texCoord, 0.125, 1.0 - 0.125001) - 0.125) * 4.0;vec2 frac = fract(coord);coord = floor(coord);float p00 = float(coord.y * 4.0 + coord.x) * 0.0625 + offset.y;float p01 = float(coord.y * 4.0 + coord.x + 1.0) * 0.0625 + offset.y;float p10 = float((coord.y + 1.0) * 4.0 + coord.x) * 0.0625 + offset.y;float p11 = float((coord.y + 1.0) * 4.0 + coord.x + 1.0) * 0.0625 + offset.y;vec3 c00 = texture2D(inputImageTexture2, vec2(value, p00)).rgb;vec3 c01 = texture2D(inputImageTexture2, vec2(value, p01)).rgb;vec3 c10 = texture2D(inputImageTexture2, vec2(value, p10)).rgb;vec3 c11 = texture2D(inputImageTexture2, vec2(value, p11)).rgb;float c1 = ((c00.r - c00.g) / (c00.b - c00.g));float c2 = ((c01.r - c01.g) / (c01.b - c01.g));float c3 = ((c10.r - c10.g) / (c10.b - c10.g));float c4 = ((c11.r - c11.g) / (c11.b - c11.g));float c1_2 = mix(c1, c2, frac.x);float c3_4 = mix(c3, c4, frac.x);return mix(c1_2, c3_4, frac.y);}vec3 hsv_to_rgb(vec3 c) {vec4 K = vec4(1.0, 2.0 / 3.0, 1.0 / 3.0, 3.0);vec3 p = abs(fract(c.xxx + K.xyz) * 6.0 - K.www);return c.z * mix(K.xxx, clamp(p - K.xxx, 0.0, 1.0), c.y);}void main() {vec4 texel = texture2D(sourceImage, texCoord);vec4 hsv = texel;hsv.y = min(1.0, hsv.y * 1.2);hsv.z = min(1.0, enhance(hsv.z) * 1.1);gl_FragColor = vec4(hsv_to_rgb(mix(texel.xyz, hsv.xyz, intensity)), texel.w);}"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->loadShader(ILjava/lang/String;)I

    move-result v10

    .line 1190
    if-eqz v16, :cond_17

    if-eqz v10, :cond_17

    .line 1191
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->enhanceShaderProgram:I

    .line 1192
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->enhanceShaderProgram:I

    move/from16 v0, v16

    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 1193
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->enhanceShaderProgram:I

    invoke-static {v2, v10}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 1194
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->enhanceShaderProgram:I

    const/4 v3, 0x0

    const-string/jumbo v6, "position"

    invoke-static {v2, v3, v6}, Landroid/opengl/GLES20;->glBindAttribLocation(IILjava/lang/String;)V

    .line 1195
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->enhanceShaderProgram:I

    const/4 v3, 0x1

    const-string/jumbo v6, "inputTexCoord"

    invoke-static {v2, v3, v6}, Landroid/opengl/GLES20;->glBindAttribLocation(IILjava/lang/String;)V

    .line 1197
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->enhanceShaderProgram:I

    invoke-static {v2}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    .line 1198
    const/4 v2, 0x1

    new-array v11, v2, [I

    .line 1199
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->enhanceShaderProgram:I

    const v3, 0x8b82

    const/4 v6, 0x0

    invoke-static {v2, v3, v11, v6}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 1200
    const/4 v2, 0x0

    aget v2, v11, v2

    if-nez v2, :cond_16

    .line 1201
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->enhanceShaderProgram:I

    invoke-static {v2}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 1202
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->enhanceShaderProgram:I

    .line 1215
    :goto_7
    const v2, 0x8b31

    const-string/jumbo v3, "attribute vec4 position;attribute vec2 inputTexCoord;varying vec2 texCoord;void main() {gl_Position = position;texCoord = inputTexCoord;}"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->loadShader(ILjava/lang/String;)I

    move-result v16

    .line 1216
    const v2, 0x8b30

    const-string/jumbo v3, "varying highp vec2 texCoord;uniform sampler2D sourceImage;void main() {gl_FragColor = texture2D(sourceImage, texCoord);}"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->loadShader(ILjava/lang/String;)I

    move-result v10

    .line 1217
    if-eqz v16, :cond_19

    if-eqz v10, :cond_19

    .line 1218
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->simpleShaderProgram:I

    .line 1219
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->simpleShaderProgram:I

    move/from16 v0, v16

    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 1220
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->simpleShaderProgram:I

    invoke-static {v2, v10}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 1221
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->simpleShaderProgram:I

    const/4 v3, 0x0

    const-string/jumbo v6, "position"

    invoke-static {v2, v3, v6}, Landroid/opengl/GLES20;->glBindAttribLocation(IILjava/lang/String;)V

    .line 1222
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->simpleShaderProgram:I

    const/4 v3, 0x1

    const-string/jumbo v6, "inputTexCoord"

    invoke-static {v2, v3, v6}, Landroid/opengl/GLES20;->glBindAttribLocation(IILjava/lang/String;)V

    .line 1224
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->simpleShaderProgram:I

    invoke-static {v2}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    .line 1225
    const/4 v2, 0x1

    new-array v11, v2, [I

    .line 1226
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->simpleShaderProgram:I

    const v3, 0x8b82

    const/4 v6, 0x0

    invoke-static {v2, v3, v11, v6}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 1227
    const/4 v2, 0x0

    aget v2, v11, v2

    if-nez v2, :cond_18

    .line 1228
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->simpleShaderProgram:I

    invoke-static {v2}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 1229
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->simpleShaderProgram:I

    .line 1240
    :goto_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->currentBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_9

    .line 1241
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->currentBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->loadTexture(Landroid/graphics/Bitmap;)V

    .line 1244
    :cond_9
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1017
    :cond_a
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->toolsShaderProgram:I

    const-string/jumbo v3, "position"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->positionHandle:I

    .line 1018
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->toolsShaderProgram:I

    const-string/jumbo v3, "inputTexCoord"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->inputTexCoordHandle:I

    .line 1019
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->toolsShaderProgram:I

    const-string/jumbo v3, "sourceImage"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->sourceImageHandle:I

    .line 1020
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->toolsShaderProgram:I

    const-string/jumbo v3, "shadows"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->shadowsHandle:I

    .line 1021
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->toolsShaderProgram:I

    const-string/jumbo v3, "highlights"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->highlightsHandle:I

    .line 1022
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->toolsShaderProgram:I

    const-string/jumbo v3, "exposure"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->exposureHandle:I

    .line 1023
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->toolsShaderProgram:I

    const-string/jumbo v3, "contrast"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->contrastHandle:I

    .line 1024
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->toolsShaderProgram:I

    const-string/jumbo v3, "saturation"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->saturationHandle:I

    .line 1025
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->toolsShaderProgram:I

    const-string/jumbo v3, "warmth"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->warmthHandle:I

    .line 1026
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->toolsShaderProgram:I

    const-string/jumbo v3, "vignette"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->vignetteHandle:I

    .line 1027
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->toolsShaderProgram:I

    const-string/jumbo v3, "grain"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->grainHandle:I

    .line 1028
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->toolsShaderProgram:I

    const-string/jumbo v3, "width"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->widthHandle:I

    .line 1029
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->toolsShaderProgram:I

    const-string/jumbo v3, "height"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->heightHandle:I

    .line 1030
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->toolsShaderProgram:I

    const-string/jumbo v3, "curvesImage"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->curvesImageHandle:I

    .line 1031
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->toolsShaderProgram:I

    const-string/jumbo v3, "skipTone"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->skipToneHandle:I

    .line 1032
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->toolsShaderProgram:I

    const-string/jumbo v3, "fadeAmount"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->fadeAmountHandle:I

    .line 1033
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->toolsShaderProgram:I

    const-string/jumbo v3, "shadowsTintIntensity"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->shadowsTintIntensityHandle:I

    .line 1034
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->toolsShaderProgram:I

    const-string/jumbo v3, "highlightsTintIntensity"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->highlightsTintIntensityHandle:I

    .line 1035
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->toolsShaderProgram:I

    const-string/jumbo v3, "shadowsTintColor"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->shadowsTintColorHandle:I

    .line 1036
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->toolsShaderProgram:I

    const-string/jumbo v3, "highlightsTintColor"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->highlightsTintColorHandle:I

    goto/16 :goto_1

    .line 1039
    .end local v11    # "linkStatus":[I
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->finish()V

    .line 1040
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 1060
    .restart local v11    # "linkStatus":[I
    :cond_c
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->sharpenShaderProgram:I

    const-string/jumbo v3, "position"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->sharpenPositionHandle:I

    .line 1061
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->sharpenShaderProgram:I

    const-string/jumbo v3, "inputTexCoord"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->sharpenInputTexCoordHandle:I

    .line 1062
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->sharpenShaderProgram:I

    const-string/jumbo v3, "sourceImage"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->sharpenSourceImageHandle:I

    .line 1063
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->sharpenShaderProgram:I

    const-string/jumbo v3, "inputWidth"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->sharpenWidthHandle:I

    .line 1064
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->sharpenShaderProgram:I

    const-string/jumbo v3, "inputHeight"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->sharpenHeightHandle:I

    .line 1065
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->sharpenShaderProgram:I

    const-string/jumbo v3, "sharpen"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->sharpenHandle:I

    goto/16 :goto_2

    .line 1068
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->finish()V

    .line 1069
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 1089
    :cond_e
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->blurShaderProgram:I

    const-string/jumbo v3, "position"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->blurPositionHandle:I

    .line 1090
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->blurShaderProgram:I

    const-string/jumbo v3, "inputTexCoord"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->blurInputTexCoordHandle:I

    .line 1091
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->blurShaderProgram:I

    const-string/jumbo v3, "sourceImage"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->blurSourceImageHandle:I

    .line 1092
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->blurShaderProgram:I

    const-string/jumbo v3, "texelWidthOffset"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->blurWidthHandle:I

    .line 1093
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->blurShaderProgram:I

    const-string/jumbo v3, "texelHeightOffset"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->blurHeightHandle:I

    goto/16 :goto_3

    .line 1096
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->finish()V

    .line 1097
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 1117
    :cond_10
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->linearBlurShaderProgram:I

    const-string/jumbo v3, "position"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->linearBlurPositionHandle:I

    .line 1118
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->linearBlurShaderProgram:I

    const-string/jumbo v3, "inputTexCoord"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->linearBlurInputTexCoordHandle:I

    .line 1119
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->linearBlurShaderProgram:I

    const-string/jumbo v3, "sourceImage"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->linearBlurSourceImageHandle:I

    .line 1120
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->linearBlurShaderProgram:I

    const-string/jumbo v3, "inputImageTexture2"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->linearBlurSourceImage2Handle:I

    .line 1121
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->linearBlurShaderProgram:I

    const-string/jumbo v3, "excludeSize"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->linearBlurExcludeSizeHandle:I

    .line 1122
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->linearBlurShaderProgram:I

    const-string/jumbo v3, "excludePoint"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->linearBlurExcludePointHandle:I

    .line 1123
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->linearBlurShaderProgram:I

    const-string/jumbo v3, "excludeBlurSize"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->linearBlurExcludeBlurSizeHandle:I

    .line 1124
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->linearBlurShaderProgram:I

    const-string/jumbo v3, "angle"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->linearBlurAngleHandle:I

    .line 1125
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->linearBlurShaderProgram:I

    const-string/jumbo v3, "aspectRatio"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->linearBlurAspectRatioHandle:I

    goto/16 :goto_4

    .line 1128
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->finish()V

    .line 1129
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 1149
    :cond_12
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->radialBlurShaderProgram:I

    const-string/jumbo v3, "position"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->radialBlurPositionHandle:I

    .line 1150
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->radialBlurShaderProgram:I

    const-string/jumbo v3, "inputTexCoord"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->radialBlurInputTexCoordHandle:I

    .line 1151
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->radialBlurShaderProgram:I

    const-string/jumbo v3, "sourceImage"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->radialBlurSourceImageHandle:I

    .line 1152
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->radialBlurShaderProgram:I

    const-string/jumbo v3, "inputImageTexture2"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->radialBlurSourceImage2Handle:I

    .line 1153
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->radialBlurShaderProgram:I

    const-string/jumbo v3, "excludeSize"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->radialBlurExcludeSizeHandle:I

    .line 1154
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->radialBlurShaderProgram:I

    const-string/jumbo v3, "excludePoint"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->radialBlurExcludePointHandle:I

    .line 1155
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->radialBlurShaderProgram:I

    const-string/jumbo v3, "excludeBlurSize"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->radialBlurExcludeBlurSizeHandle:I

    .line 1156
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->radialBlurShaderProgram:I

    const-string/jumbo v3, "aspectRatio"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->radialBlurAspectRatioHandle:I

    goto/16 :goto_5

    .line 1159
    :cond_13
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->finish()V

    .line 1160
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 1179
    :cond_14
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->rgbToHsvShaderProgram:I

    const-string/jumbo v3, "position"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->rgbToHsvPositionHandle:I

    .line 1180
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->rgbToHsvShaderProgram:I

    const-string/jumbo v3, "inputTexCoord"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->rgbToHsvInputTexCoordHandle:I

    .line 1181
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->rgbToHsvShaderProgram:I

    const-string/jumbo v3, "sourceImage"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->rgbToHsvSourceImageHandle:I

    goto/16 :goto_6

    .line 1184
    :cond_15
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->finish()V

    .line 1185
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 1204
    :cond_16
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->enhanceShaderProgram:I

    const-string/jumbo v3, "position"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->enhancePositionHandle:I

    .line 1205
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->enhanceShaderProgram:I

    const-string/jumbo v3, "inputTexCoord"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->enhanceInputTexCoordHandle:I

    .line 1206
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->enhanceShaderProgram:I

    const-string/jumbo v3, "sourceImage"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->enhanceSourceImageHandle:I

    .line 1207
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->enhanceShaderProgram:I

    const-string/jumbo v3, "intensity"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->enhanceIntensityHandle:I

    .line 1208
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->enhanceShaderProgram:I

    const-string/jumbo v3, "inputImageTexture2"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->enhanceInputImageTexture2Handle:I

    goto/16 :goto_7

    .line 1211
    :cond_17
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->finish()V

    .line 1212
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 1231
    :cond_18
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->simpleShaderProgram:I

    const-string/jumbo v3, "position"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->simplePositionHandle:I

    .line 1232
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->simpleShaderProgram:I

    const-string/jumbo v3, "inputTexCoord"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->simpleInputTexCoordHandle:I

    .line 1233
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->simpleShaderProgram:I

    const-string/jumbo v3, "sourceImage"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->simpleSourceImageHandle:I

    goto/16 :goto_8

    .line 1236
    :cond_19
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->finish()V

    .line 1237
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 908
    nop

    :array_0
    .array-data 4
        0x3040
        0x4
        0x3024
        0x8
        0x3023
        0x8
        0x3022
        0x8
        0x3021
        0x8
        0x3025
        0x0
        0x3026
        0x0
        0x3038
    .end array-data

    .line 930
    :array_1
    .array-data 4
        0x3098
        0x2
        0x3038
    .end array-data

    .line 958
    :array_2
    .array-data 4
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
    .end array-data

    .line 970
    :array_3
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    .line 982
    :array_4
    .array-data 4
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private loadShader(ILjava/lang/String;)I
    .locals 4
    .param p1, "type"    # I
    .param p2, "shaderCode"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 876
    invoke-static {p1}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v1

    .line 877
    .local v1, "shader":I
    invoke-static {v1, p2}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 878
    invoke-static {v1}, Landroid/opengl/GLES20;->glCompileShader(I)V

    .line 879
    const/4 v2, 0x1

    new-array v0, v2, [I

    .line 880
    .local v0, "compileStatus":[I
    const v2, 0x8b81

    invoke-static {v1, v2, v0, v3}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    .line 881
    aget v2, v0, v3

    if-nez v2, :cond_0

    .line 882
    invoke-static {v1}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 883
    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 884
    const/4 v1, 0x0

    .line 886
    :cond_0
    return v1
.end method

.method private loadTexture(Landroid/graphics/Bitmap;)V
    .locals 14
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 1567
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->renderBufferWidth:I

    .line 1568
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->renderBufferHeight:I

    .line 1569
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getPhotoSize()I

    move-result v0

    int-to-float v9, v0

    .line 1570
    .local v9, "maxSize":F
    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->renderBufferWidth:I

    int-to-float v0, v0

    cmpl-float v0, v0, v9

    if-gtz v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->renderBufferHeight:I

    int-to-float v0, v0

    cmpl-float v0, v0, v9

    if-gtz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoFilterView;->access$4500(Lorg/telegram/ui/Components/PhotoFilterView;)I

    move-result v0

    rem-int/lit16 v0, v0, 0x168

    if-eqz v0, :cond_5

    .line 1571
    :cond_0
    const/high16 v10, 0x3f800000    # 1.0f

    .line 1572
    .local v10, "scale":F
    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->renderBufferWidth:I

    int-to-float v0, v0

    cmpl-float v0, v0, v9

    if-gtz v0, :cond_1

    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->renderBufferHeight:I

    int-to-float v0, v0

    cmpl-float v0, v0, v9

    if-lez v0, :cond_2

    .line 1573
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float v11, v9, v0

    .line 1574
    .local v11, "scaleX":F
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float v12, v9, v0

    .line 1575
    .local v12, "scaleY":F
    cmpg-float v0, v11, v12

    if-gez v0, :cond_6

    .line 1576
    float-to-int v0, v9

    iput v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->renderBufferWidth:I

    .line 1577
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v11

    float-to-int v0, v0

    iput v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->renderBufferHeight:I

    .line 1578
    move v10, v11

    .line 1586
    .end local v11    # "scaleX":F
    .end local v12    # "scaleY":F
    :cond_2
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoFilterView;->access$4500(Lorg/telegram/ui/Components/PhotoFilterView;)I

    move-result v0

    rem-int/lit16 v0, v0, 0x168

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoFilterView;->access$4500(Lorg/telegram/ui/Components/PhotoFilterView;)I

    move-result v0

    rem-int/lit16 v0, v0, 0x168

    const/16 v1, 0x10e

    if-ne v0, v1, :cond_4

    .line 1587
    :cond_3
    iget v13, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->renderBufferWidth:I

    .line 1588
    .local v13, "temp":I
    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->renderBufferHeight:I

    iput v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->renderBufferWidth:I

    .line 1589
    iput v13, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->renderBufferHeight:I

    .line 1592
    .end local v13    # "temp":I
    :cond_4
    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->renderBufferWidth:I

    iget v1, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->renderBufferHeight:I

    invoke-direct {p0, p1, v0, v1, v10}, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->createBitmap(Landroid/graphics/Bitmap;IIF)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->currentBitmap:Landroid/graphics/Bitmap;

    .line 1594
    .end local v10    # "scale":F
    :cond_5
    const/4 v0, 0x3

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->renderFrameBuffer:[I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glGenFramebuffers(I[II)V

    .line 1595
    const/4 v0, 0x3

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->renderTexture:[I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 1597
    const/16 v0, 0xde1

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->renderTexture:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 1598
    const/16 v0, 0xde1

    const/16 v1, 0x2801

    const/16 v2, 0x2601

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 1599
    const/16 v0, 0xde1

    const/16 v1, 0x2800

    const/16 v2, 0x2601

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 1600
    const/16 v0, 0xde1

    const/16 v1, 0x2802

    const v2, 0x812f

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 1601
    const/16 v0, 0xde1

    const/16 v1, 0x2803

    const v2, 0x812f

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 1602
    const/16 v0, 0xde1

    const/4 v1, 0x0

    const/16 v2, 0x1908

    iget v3, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->renderBufferWidth:I

    iget v4, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->renderBufferHeight:I

    const/4 v5, 0x0

    const/16 v6, 0x1908

    const/16 v7, 0x1401

    const/4 v8, 0x0

    invoke-static/range {v0 .. v8}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 1604
    const/16 v0, 0xde1

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->renderTexture:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 1605
    const/16 v0, 0xde1

    const/16 v1, 0x2801

    const/16 v2, 0x2601

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 1606
    const/16 v0, 0xde1

    const/16 v1, 0x2800

    const/16 v2, 0x2601

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 1607
    const/16 v0, 0xde1

    const/16 v1, 0x2802

    const v2, 0x812f

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 1608
    const/16 v0, 0xde1

    const/16 v1, 0x2803

    const v2, 0x812f

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 1609
    const/16 v0, 0xde1

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->currentBitmap:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 1611
    const/16 v0, 0xde1

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->renderTexture:[I

    const/4 v2, 0x2

    aget v1, v1, v2

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 1612
    const/16 v0, 0xde1

    const/16 v1, 0x2801

    const/16 v2, 0x2601

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 1613
    const/16 v0, 0xde1

    const/16 v1, 0x2800

    const/16 v2, 0x2601

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 1614
    const/16 v0, 0xde1

    const/16 v1, 0x2802

    const v2, 0x812f

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 1615
    const/16 v0, 0xde1

    const/16 v1, 0x2803

    const v2, 0x812f

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 1616
    const/16 v0, 0xde1

    const/4 v1, 0x0

    const/16 v2, 0x1908

    iget v3, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->renderBufferWidth:I

    iget v4, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->renderBufferHeight:I

    const/4 v5, 0x0

    const/16 v6, 0x1908

    const/16 v7, 0x1401

    const/4 v8, 0x0

    invoke-static/range {v0 .. v8}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 1617
    return-void

    .line 1580
    .restart local v10    # "scale":F
    .restart local v11    # "scaleX":F
    .restart local v12    # "scaleY":F
    :cond_6
    float-to-int v0, v9

    iput v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->renderBufferHeight:I

    .line 1581
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v12

    float-to-int v0, v0

    iput v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->renderBufferWidth:I

    .line 1582
    move v10, v12

    goto/16 :goto_0
.end method


# virtual methods
.method public finish()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1248
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eqz v0, :cond_0

    .line 1249
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 1250
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    .line 1251
    iput-object v5, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 1253
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->eglContext:Ljavax/microedition/khronos/egl/EGLContext;

    if-eqz v0, :cond_1

    .line 1254
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->eglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 1255
    iput-object v5, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->eglContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 1257
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-eqz v0, :cond_2

    .line 1258
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglTerminate(Ljavax/microedition/khronos/egl/EGLDisplay;)Z

    .line 1259
    iput-object v5, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 1261
    :cond_2
    return-void
.end method

.method public getTexture()Landroid/graphics/Bitmap;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1534
    iget-boolean v3, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->initied:Z

    if-nez v3, :cond_0

    .line 1535
    const/4 v3, 0x0

    .line 1556
    :goto_0
    return-object v3

    .line 1537
    :cond_0
    new-instance v2, Ljava/util/concurrent/Semaphore;

    invoke-direct {v2, v4}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    .line 1538
    .local v2, "semaphore":Ljava/util/concurrent/Semaphore;
    const/4 v3, 0x1

    new-array v1, v3, [Landroid/graphics/Bitmap;

    .line 1540
    .local v1, "object":[Landroid/graphics/Bitmap;
    :try_start_0
    new-instance v3, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread$2;

    invoke-direct {v3, p0, v1, v2}, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread$2;-><init>(Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;[Landroid/graphics/Bitmap;Ljava/util/concurrent/Semaphore;)V

    invoke-virtual {p0, v3}, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->postRunnable(Ljava/lang/Runnable;)V

    .line 1552
    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1556
    :goto_1
    aget-object v3, v1, v4

    goto :goto_0

    .line 1553
    :catch_0
    move-exception v0

    .line 1554
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public requestRender(Z)V
    .locals 1
    .param p1, "updateBlur"    # Z

    .prologue
    .line 1645
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->requestRender(ZZ)V

    .line 1646
    return-void
.end method

.method public requestRender(ZZ)V
    .locals 1
    .param p1, "updateBlur"    # Z
    .param p2, "force"    # Z

    .prologue
    .line 1649
    new-instance v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread$4;

    invoke-direct {v0, p0, p1, p2}, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread$4;-><init>(Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;ZZ)V

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->postRunnable(Ljava/lang/Runnable;)V

    .line 1664
    return-void
.end method

.method public run()V
    .locals 1

    .prologue
    .line 1640
    invoke-direct {p0}, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->initGL()Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->initied:Z

    .line 1641
    invoke-super {p0}, Lorg/telegram/messenger/DispatchQueue;->run()V

    .line 1642
    return-void
.end method

.method public setSurfaceTextureSize(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 1634
    iput p1, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->surfaceWidth:I

    .line 1635
    iput p2, p0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->surfaceHeight:I

    .line 1636
    return-void
.end method

.method public shutdown()V
    .locals 1

    .prologue
    .line 1620
    new-instance v0, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread$3;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread$3;-><init>(Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;)V

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/PhotoFilterView$EGLThread;->postRunnable(Ljava/lang/Runnable;)V

    .line 1631
    return-void
.end method
