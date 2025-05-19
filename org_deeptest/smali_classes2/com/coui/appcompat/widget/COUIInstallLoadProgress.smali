.class public Lcom/coui/appcompat/widget/COUIInstallLoadProgress;
.super Lcom/coui/appcompat/widget/COUILoadProgress;
.source "COUIInstallLoadProgress.java"


# static fields
.field private static final CIRCLE_BRIGHTNESS_HOLDER:Ljava/lang/String; = "circleBrightnessHolder"

.field private static final CIRCLE_IN_ALPHA_HOLDER:Ljava/lang/String; = "circleInAlphaHolder"

.field private static final CIRCLE_MAX_ALPHA:I = 0xff

.field private static final CIRCLE_OUT_ALPHA_HOLDER:Ljava/lang/String; = "circleOutAlphaHolder"

.field private static final CIRCLE_RADIUS_HOLDER:Ljava/lang/String; = "circleRadiusHolder"

.field private static final DEFAULT_BRIGHTNESS_MAX_VALUE:F = 1.2f

.field private static final DEFAULT_MIN_PRESS_FEEDBACK:F = 0.005f

.field private static final DEFAULT_NARROW_FINAL_VALUE:F = 0.9f

.field private static final DEFAULT_SCALE_PARAMETER:F = 0.05f

.field private static final HOLDER_BRIGHTNESS:Ljava/lang/String; = "brightnessHolder"

.field private static final HOLDER_NARROW_FONT:Ljava/lang/String; = "narrowHolderFont"

.field private static final HOLDER_NARROW_X:Ljava/lang/String; = "narrowHolderX"

.field private static final HOLDER_NARROW_Y:Ljava/lang/String; = "narrowHolderY"

.field public static final LOAD_STYLE_BIG_ROUND:I = 0x1

.field public static final LOAD_STYLE_CIRCLE:I = 0x2

.field public static final LOAD_STYLE_DEFAULT:I = 0x0

.field private static final MAX_ALPHA:I = 0x64

.field private static final NORMAL_ANIMATOR_DURATION:I = 0xc8

.field private static final PRESS_ANIMATOR_DURATION:I = 0xc8

.field private static final mAttrArray:[I


# instance fields
.field private final DEBUG:Z

.field private final TAG:Ljava/lang/String;

.field private mApostrophe:Ljava/lang/String;

.field private mCircleLoadBitmap:Landroid/graphics/Bitmap;

.field private mCirclePaint:Landroid/graphics/Paint;

.field private mCirclePauseBitmap:Landroid/graphics/Bitmap;

.field private mCircleReloadBitmap:Landroid/graphics/Bitmap;

.field private mColorHsl:[F

.field private mColorWhite:I

.field private mContext:Landroid/content/Context;

.field private mCurrentBrightness:F

.field private mCurrentCircleRadius:F

.field private mCurrentInBitmapAlpha:I

.field private mCurrentOutBitmapAlpha:I

.field private mCurrentRoundBorderRadius:I

.field private mDefaultCircleRadius:I

.field private mDefaultTextColor:Landroid/content/res/ColorStateList;

.field private mDefaultTextSize:I

.field private mDefaultWidth:I

.field private mDisabledColor:I

.field private mExpandOffsetX:I

.field private mExpandOffsetY:I

.field private mFmi:Landroid/graphics/Paint$FontMetricsInt;

.field private mHasBrightness:Z

.field private mInBitmapPaint:Landroid/graphics/Paint;

.field private mInstallGiftBg:Landroid/graphics/drawable/Drawable;

.field private mIsChangeTextColor:Z

.field private mLoadStyle:I

.field private mLocale:Ljava/util/Locale;

.field private mMaxBrightness:F

.field private mNarrowOffsetFont:F

.field private mNormalAnimationInterpolator:Landroid/view/animation/Interpolator;

.field private mNormalAnimator:Landroid/animation/ValueAnimator;

.field private mOutBitmapPaint:Landroid/graphics/Paint;

.field private mPressAnimationInterpolator:Landroid/view/animation/Interpolator;

.field private mPressedAnimator:Landroid/animation/ValueAnimator;

.field private mRoundRectPaint:Landroid/graphics/Paint;

.field private mRoundRectPath:Landroid/graphics/Path;

.field private mSpace:I

.field private mStyle:I

.field private mTextColor:I

.field private mTextPadding:I

.field private mTextPaint:Landroid/text/TextPaint;

.field private mTextView:Ljava/lang/String;

.field private mThemeColor:I

.field private mThemeSecondaryColor:I

.field private mTouchModeCircleRadius:I

.field private mTouchModeHeight:I

.field private mTouchModeWidth:I

.field private mUserTextColor:I

.field private mUserTextSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 165
    const/4 v0, 0x2

    new-array v0, v0, [I

    sget v1, Lcoui/support/appcompat/R$attr;->couiTintControlNormal:I

    const/4 v2, 0x0

    aput v1, v0, v2

    sget v1, Lcoui/support/appcompat/R$attr;->couiTintLightNormal:I

    const/4 v2, 0x1

    aput v1, v0, v2

    sput-object v0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mAttrArray:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 171
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 172
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 178
    sget v0, Lcoui/support/appcompat/R$attr;->couiInstallLoadProgressStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 179
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 193
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    invoke-direct/range {p0 .. p3}, Lcom/coui/appcompat/widget/COUILoadProgress;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 97
    const-string v4, "COUIInstallLoadProgress"

    iput-object v4, v0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->TAG:Ljava/lang/String;

    .line 98
    const/4 v4, 0x1

    iput-boolean v4, v0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->DEBUG:Z

    .line 101
    const/4 v5, 0x0

    iput-object v5, v0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mTextPaint:Landroid/text/TextPaint;

    .line 104
    const/4 v6, 0x0

    iput v6, v0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mUserTextSize:I

    .line 106
    iput v6, v0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mTextPadding:I

    .line 107
    iput-object v5, v0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mApostrophe:Ljava/lang/String;

    .line 108
    iput-object v5, v0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mFmi:Landroid/graphics/Paint$FontMetricsInt;

    .line 111
    iput v6, v0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mCurrentRoundBorderRadius:I

    .line 112
    iput-object v5, v0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mRoundRectPaint:Landroid/graphics/Paint;

    .line 113
    iput v6, v0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mSpace:I

    .line 114
    iput-boolean v6, v0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mIsChangeTextColor:Z

    .line 118
    iput v6, v0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mTouchModeCircleRadius:I

    .line 119
    iput v6, v0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mDefaultCircleRadius:I

    .line 120
    const/4 v7, 0x0

    iput v7, v0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mCurrentCircleRadius:F

    .line 121
    const/16 v8, 0xff

    iput v8, v0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mCurrentInBitmapAlpha:I

    .line 122
    iput v6, v0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mCurrentOutBitmapAlpha:I

    .line 126
    iput-object v5, v0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mCirclePaint:Landroid/graphics/Paint;

    .line 127
    iput-object v5, v0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mInBitmapPaint:Landroid/graphics/Paint;

    .line 128
    iput-object v5, v0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mOutBitmapPaint:Landroid/graphics/Paint;

    .line 130
    iput-object v5, v0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mInstallGiftBg:Landroid/graphics/drawable/Drawable;

    .line 136
    iput v6, v0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mLoadStyle:I

    .line 140
    const/high16 v5, 0x3f800000    # 1.0f

    iput v5, v0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mCurrentBrightness:F

    .line 145
    const/4 v8, -0x1

    iput v8, v0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mUserTextColor:I

    .line 149
    iput v6, v0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mExpandOffsetY:I

    .line 150
    iput v6, v0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mExpandOffsetX:I

    .line 151
    iput v5, v0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mNarrowOffsetFont:F

    .line 157
    const/4 v8, 0x3

    new-array v8, v8, [F

    iput-object v8, v0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mColorHsl:[F

    .line 194
    invoke-static {v0, v6}, Lcom/coui/appcompat/util/COUIDarkModeUtil;->setForceDarkAllow(Landroid/view/View;Z)V

    .line 195
    if-eqz v2, :cond_0

    invoke-interface/range {p2 .. p2}, Landroid/util/AttributeSet;->getStyleAttribute()I

    move-result v8

    if-eqz v8, :cond_0

    .line 196
    invoke-interface/range {p2 .. p2}, Landroid/util/AttributeSet;->getStyleAttribute()I

    move-result v8

    iput v8, v0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mStyle:I

    goto :goto_0

    .line 198
    :cond_0
    iput v3, v0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mStyle:I

    .line 200
    :goto_0
    iput-object v1, v0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mContext:Landroid/content/Context;

    .line 202
    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->getContext()Landroid/content/Context;

    move-result-object v8

    sget-object v9, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mAttrArray:[I

    invoke-virtual {v8, v9}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v8

    .line 203
    .local v8, "colorArray":Landroid/content/res/TypedArray;
    invoke-virtual {v8, v6, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v9

    iput v9, v0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mThemeColor:I

    .line 204
    invoke-virtual {v8, v4, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v9

    iput v9, v0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mThemeSecondaryColor:I

    .line 205
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    .line 207
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v9

    iput-object v9, v0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mLocale:Ljava/util/Locale;

    .line 209
    sget-object v9, Lcoui/support/appcompat/R$styleable;->COUILoadProgress:[I

    invoke-virtual {v1, v2, v9, v3, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v9

    .line 210
    .local v9, "a":Landroid/content/res/TypedArray;
    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    sget v11, Lcoui/support/appcompat/R$color;->coui_install_load_progress_text_color_in_progress:I

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    iput v10, v0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mColorWhite:I

    .line 212
    sget v10, Lcoui/support/appcompat/R$styleable;->COUILoadProgress_couiDefaultDrawable:I

    invoke-virtual {v9, v10}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    .line 213
    .local v10, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v10, :cond_1

    .line 214
    invoke-virtual {v0, v10}, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 216
    :cond_1
    sget v11, Lcoui/support/appcompat/R$styleable;->COUILoadProgress_couiState:I

    invoke-virtual {v9, v11, v6}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v11

    .line 217
    .local v11, "state":I
    invoke-virtual {v0, v11}, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->setState(I)V

    .line 218
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    .line 220
    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Lcoui/support/appcompat/R$dimen;->coui_install_download_progress_textsize:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    .line 221
    .local v12, "textSize":I
    sget-object v13, Lcoui/support/appcompat/R$styleable;->COUIInstallLoadProgress:[I

    invoke-virtual {v1, v2, v13, v3, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v13

    .line 222
    .local v13, "b":Landroid/content/res/TypedArray;
    sget v14, Lcoui/support/appcompat/R$styleable;->COUIInstallLoadProgress_couiStyle:I

    invoke-virtual {v13, v14, v6}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v14

    .line 223
    .local v14, "style":I
    invoke-virtual {v0, v14}, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->setLoadStyle(I)V

    .line 224
    sget v15, Lcoui/support/appcompat/R$styleable;->COUIInstallLoadProgress_couiInstallGiftBg:I

    invoke-virtual {v13, v15}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    iput-object v15, v0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mInstallGiftBg:Landroid/graphics/drawable/Drawable;

    .line 225
    sget v15, Lcoui/support/appcompat/R$styleable;->COUIInstallLoadProgress_couiInstallViewHeight:I

    invoke-virtual {v13, v15, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v15

    iput v15, v0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mTouchModeHeight:I

    .line 226
    sget v15, Lcoui/support/appcompat/R$styleable;->COUIInstallLoadProgress_couiInstallViewWidth:I

    invoke-virtual {v13, v15, v6}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v15

    iput v15, v0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mTouchModeWidth:I

    .line 227
    iget v15, v0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mTouchModeWidth:I

    const/high16 v4, 0x3fc00000    # 1.5f

    invoke-direct {v0, v15, v4, v6}, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->getDefaultSize(IFZ)I

    move-result v4

    iput v4, v0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mDefaultWidth:I

    .line 229
    sget v4, Lcoui/support/appcompat/R$styleable;->COUIInstallLoadProgress_brightness:I

    const v15, 0x3f99999a    # 1.2f

    invoke-virtual {v13, v4, v15}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    iput v4, v0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mMaxBrightness:F

    .line 230
    sget v4, Lcoui/support/appcompat/R$styleable;->COUIInstallLoadProgress_disabledColor:I

    invoke-virtual {v13, v4, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    iput v4, v0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mDisabledColor:I

    .line 231
    new-instance v4, Landroid/view/animation/PathInterpolator;

    const v15, 0x3e4ccccd    # 0.2f

    const v6, 0x3ecccccd    # 0.4f

    invoke-direct {v4, v6, v7, v15, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v4, v0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mPressAnimationInterpolator:Landroid/view/animation/Interpolator;

    .line 232
    new-instance v4, Landroid/view/animation/PathInterpolator;

    invoke-direct {v4, v6, v7, v15, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v4, v0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mNormalAnimationInterpolator:Landroid/view/animation/Interpolator;

    .line 233
    iget v4, v0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mLoadStyle:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_5

    .line 234
    iget v4, v0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mLoadStyle:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    .line 235
    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcoui/support/appcompat/R$dimen;->coui_install_download_progress_round_border_radius:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mCurrentRoundBorderRadius:I

    goto :goto_1

    .line 237
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcoui/support/appcompat/R$dimen;->coui_install_download_progress_round_border_radius_small:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mCurrentRoundBorderRadius:I

    .line 238
    iget-object v4, v0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mLocale:Ljava/util/Locale;

    invoke-direct {v0, v4}, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->isZhLanguage(Ljava/util/Locale;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 239
    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcoui/support/appcompat/R$dimen;->coui_install_download_progress_width_in_foreign_language:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 240
    .local v4, "foreignOffset":I
    iget v5, v0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mTouchModeWidth:I

    add-int/2addr v5, v4

    iput v5, v0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mTouchModeWidth:I

    .line 241
    iget v5, v0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mDefaultWidth:I

    add-int/2addr v5, v4

    iput v5, v0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mDefaultWidth:I

    .line 244
    .end local v4    # "foreignOffset":I
    :cond_3
    :goto_1
    sget v4, Lcoui/support/appcompat/R$styleable;->COUIInstallLoadProgress_couiInstallDefaultColor:I

    invoke-virtual {v13, v4}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    iput-object v4, v0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mDefaultTextColor:Landroid/content/res/ColorStateList;

    .line 245
    sget v4, Lcoui/support/appcompat/R$styleable;->COUIInstallLoadProgress_couiInstallPadding:I

    const/4 v5, 0x0

    invoke-virtual {v13, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    iput v4, v0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mTextPadding:I

    .line 246
    sget v4, Lcoui/support/appcompat/R$styleable;->COUIInstallLoadProgress_couiInstallTextview:I

    invoke-virtual {v13, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mTextView:Ljava/lang/String;

    .line 247
    sget v4, Lcoui/support/appcompat/R$styleable;->COUIInstallLoadProgress_couiInstallTextsize:I

    invoke-virtual {v13, v4, v12}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, v0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mDefaultTextSize:I

    .line 248
    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->fontScale:F

    .line 249
    .local v4, "fontScale":F
    const/4 v5, 0x2

    .line 250
    .local v5, "scaleLevel":I
    iget v6, v0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mDefaultTextSize:I

    int-to-float v6, v6

    invoke-static {v6, v4, v5}, Lcom/coui/appcompat/util/COUIChangeTextUtil;->getSuitableFontSize(FFI)F

    move-result v6

    float-to-int v6, v6

    iput v6, v0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mDefaultTextSize:I

    .line 251
    iget-object v6, v0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mApostrophe:Ljava/lang/String;

    if-nez v6, :cond_4

    .line 252
    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcoui/support/appcompat/R$string;->coui_install_load_progress_apostrophe:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mApostrophe:Ljava/lang/String;

    .line 254
    .end local v4    # "fontScale":F
    .end local v5    # "scaleLevel":I
    :cond_4
    goto :goto_2

    .line 255
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcoui/support/appcompat/R$dimen;->coui_install_download_progress_circle_round_border_radius:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mCurrentRoundBorderRadius:I

    .line 257
    :goto_2
    invoke-virtual {v13}, Landroid/content/res/TypedArray;->recycle()V

    .line 258
    return-void
.end method

.method static synthetic access$002(Lcom/coui/appcompat/widget/COUIInstallLoadProgress;F)F
    .locals 0
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUIInstallLoadProgress;
    .param p1, "x1"    # F

    .line 67
    iput p1, p0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mCurrentBrightness:F

    return p1
.end method

.method static synthetic access$102(Lcom/coui/appcompat/widget/COUIInstallLoadProgress;I)I
    .locals 0
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUIInstallLoadProgress;
    .param p1, "x1"    # I

    .line 67
    iput p1, p0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mExpandOffsetX:I

    return p1
.end method

.method static synthetic access$202(Lcom/coui/appcompat/widget/COUIInstallLoadProgress;I)I
    .locals 0
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUIInstallLoadProgress;
    .param p1, "x1"    # I

    .line 67
    iput p1, p0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mExpandOffsetY:I

    return p1
.end method

.method static synthetic access$302(Lcom/coui/appcompat/widget/COUIInstallLoadProgress;F)F
    .locals 0
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUIInstallLoadProgress;
    .param p1, "x1"    # F

    .line 67
    iput p1, p0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mNarrowOffsetFont:F

    return p1
.end method

.method static synthetic access$402(Lcom/coui/appcompat/widget/COUIInstallLoadProgress;F)F
    .locals 0
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUIInstallLoadProgress;
    .param p1, "x1"    # F

    .line 67
    iput p1, p0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mCurrentCircleRadius:F

    return p1
.end method

.method static synthetic access$501(Lcom/coui/appcompat/widget/COUIInstallLoadProgress;)Z
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUIInstallLoadProgress;

    .line 67
    invoke-super {p0}, Lcom/coui/appcompat/widget/COUILoadProgress;->performClick()Z

    move-result v0

    return v0
.end method

.method static synthetic access$602(Lcom/coui/appcompat/widget/COUIInstallLoadProgress;I)I
    .locals 0
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUIInstallLoadProgress;
    .param p1, "x1"    # I

    .line 67
    iput p1, p0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mCurrentInBitmapAlpha:I

    return p1
.end method

.method static synthetic access$702(Lcom/coui/appcompat/widget/COUIInstallLoadProgress;I)I
    .locals 0
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUIInstallLoadProgress;
    .param p1, "x1"    # I

    .line 67
    iput p1, p0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mCurrentOutBitmapAlpha:I

    return p1
.end method

.method static synthetic access$801(Lcom/coui/appcompat/widget/COUIInstallLoadProgress;)Z
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUIInstallLoadProgress;

    .line 67
    invoke-super {p0}, Lcom/coui/appcompat/widget/COUILoadProgress;->performClick()Z

    move-result v0

    return v0
.end method

.method private cancelAnimator()V
    .locals 1

    .line 843
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mPressedAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mPressedAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 844
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mPressedAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 846
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mNormalAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mNormalAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 847
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mNormalAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 849
    :cond_1
    return-void
.end method

.method private dip2px(Landroid/content/Context;F)I
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dpValue"    # F

    .line 860
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 861
    .local v0, "scale":F
    mul-float v1, p2, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method private getBitmapFromVectorDrawable(I)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "drawableId"    # I

    .line 925
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 926
    .local v0, "vectorDrawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 927
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 926
    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 928
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 929
    .local v2, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v2}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/Canvas;->getHeight()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v0, v5, v5, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 930
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 931
    return-object v1
.end method

.method private getCurrentColor(I)I
    .locals 6
    .param p1, "srcColor"    # I

    .line 883
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 884
    iget v0, p0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mDisabledColor:I

    return v0

    .line 886
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mColorHsl:[F

    invoke-static {p1, v0}, Landroidx/core/graphics/ColorUtils;->colorToHSL(I[F)V

    .line 887
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mColorHsl:[F

    const/4 v1, 0x2

    aget v2, v0, v1

    iget v3, p0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mCurrentBrightness:F

    mul-float/2addr v2, v3

    aput v2, v0, v1

    .line 888
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mColorHsl:[F

    invoke-static {v0}, Landroidx/core/graphics/ColorUtils;->HSLToColor([F)I

    move-result v0

    .line 889
    .local v0, "color":I
    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v1

    .line 890
    .local v1, "r":I
    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v2

    .line 891
    .local v2, "g":I
    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    .line 892
    .local v3, "b":I
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v4

    .line 893
    .local v4, "a":I
    const/16 v5, 0xff

    if-le v1, v5, :cond_1

    const/16 v1, 0xff

    .line 894
    :cond_1
    if-le v2, v5, :cond_2

    const/16 v2, 0xff

    .line 895
    :cond_2
    if-le v3, v5, :cond_3

    const/16 v3, 0xff

    .line 896
    :cond_3
    invoke-static {v4, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    return v5
.end method

.method private getDefaultSize(IFZ)I
    .locals 1
    .param p1, "touchModeSize"    # I
    .param p2, "offset"    # F
    .param p3, "isRadius"    # Z

    .line 873
    if-eqz p3, :cond_0

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->dip2px(Landroid/content/Context;F)I

    move-result v0

    :goto_0
    sub-int v0, p1, v0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->dip2px(Landroid/content/Context;F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    goto :goto_0

    :goto_1
    return v0
.end method

.method private getDisplayText(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4
    .param p1, "rawString"    # Ljava/lang/String;
    .param p2, "maxWidth"    # I

    .line 461
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mTextPaint:Landroid/text/TextPaint;

    int-to-float v1, p2

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, p1, v2, v1, v3}, Landroid/text/TextPaint;->breakText(Ljava/lang/String;ZF[F)I

    move-result v0

    .line 462
    .local v0, "breakIndex":I
    const-string v1, ""

    .line 463
    .local v1, "textTemp":Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 466
    :cond_0
    const/4 v2, 0x0

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 464
    :cond_1
    :goto_0
    move-object v1, p1

    .line 468
    :goto_1
    return-object v1
.end method

.method private init()V
    .locals 8

    .line 419
    iget v0, p0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mLoadStyle:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    return-void

    .line 420
    :cond_0
    new-instance v0, Landroid/text/TextPaint;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mTextPaint:Landroid/text/TextPaint;

    .line 421
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 422
    iget v0, p0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mUserTextSize:I

    .line 423
    .local v0, "textSize":I
    if-nez v0, :cond_1

    .line 424
    iget v0, p0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mDefaultTextSize:I

    .line 426
    :cond_1
    iget v3, p0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mUserTextColor:I

    iput v3, p0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mTextColor:I

    .line 427
    iget v3, p0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mTextColor:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_2

    .line 428
    iget-object v3, p0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mDefaultTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->getDrawableState()[I

    move-result-object v4

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->getContext()Landroid/content/Context;

    move-result-object v5

    sget v6, Lcoui/support/appcompat/R$attr;->couiDefaultTextColor:I

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Lcom/coui/appcompat/util/COUIContextUtil;->getAttrColor(Landroid/content/Context;II)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v3

    iput v3, p0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mTextColor:I

    .line 431
    :cond_2
    iget-object v3, p0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mTextPaint:Landroid/text/TextPaint;

    int-to-float v4, v0

    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 432
    iget-object v3, p0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mTextPaint:Landroid/text/TextPaint;

    invoke-static {v3, v2}, Lcom/coui/appcompat/util/COUIChangeTextUtil;->adaptBoldAndMediumFont(Landroid/graphics/Paint;Z)V

    .line 434
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v2

    iput-object v2, p0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mFmi:Landroid/graphics/Paint$FontMetricsInt;

    .line 436
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mTextView:Ljava/lang/String;

    invoke-static {v2}, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->isChinese(Ljava/lang/String;)Z

    move-result v2

    .line 437
    .local v2, "isChinese":Z
    iget v3, p0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mDefaultWidth:I

    iget v4, p0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mTextPadding:I

    mul-int/2addr v4, v1

    sub-int/2addr v3, v4

    .line 438
    .local v3, "disPlayWidth":I
    iget-object v4, p0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mTextView:Ljava/lang/String;

    invoke-direct {p0, v4, v3}, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->getDisplayText(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 441
    .local v4, "temp":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_3

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    iget-object v6, p0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mTextView:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v5, v6, :cond_3

    .line 442
    iget v5, p0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mDefaultWidth:I

    iget v6, p0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mTextPadding:I

    mul-int/2addr v6, v1

    sub-int/2addr v5, v6

    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mTextPaint:Landroid/text/TextPaint;

    iget-object v6, p0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mApostrophe:Ljava/lang/String;

    invoke-virtual {v1, v6}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v1

    float-to-int v1, v1

    sub-int v3, v5, v1

    .line 443
    invoke-direct {p0, v4, v3}, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->getDisplayText(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 444
    .end local v4    # "temp":Ljava/lang/String;
    .local v1, "temp":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->isEnglish(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 445
    .end local v1    # "temp":Ljava/lang/String;
    .restart local v4    # "temp":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mApostrophe:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mTextView:Ljava/lang/String;

    .line 448
    :cond_3
    return-void
.end method

.method private static isChinese(Ljava/lang/String;)Z
    .locals 7
    .param p0, "text"    # Ljava/lang/String;

    .line 496
    const-string v0, "^[\u4e00-\u9fa5]{1}$"

    .line 497
    .local v0, "Reg":Ljava/lang/String;
    const/4 v1, 0x0

    .line 498
    .local v1, "chinese":I
    const/4 v2, 0x0

    .line 499
    .local v2, "english":I
    const/4 v3, 0x0

    move v4, v1

    move v1, v3

    .local v1, "i":I
    .local v4, "chinese":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v1, v5, :cond_1

    .line 500
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v5

    .line 501
    .local v5, "b":Ljava/lang/String;
    invoke-virtual {v5, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 502
    add-int/lit8 v4, v4, 0x1

    .line 499
    .end local v5    # "b":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 505
    .end local v1    # "i":I
    :cond_1
    if-lez v4, :cond_2

    .line 506
    const/4 v1, 0x1

    return v1

    .line 508
    :cond_2
    return v3
.end method

.method private isEnglish(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "text"    # Ljava/lang/String;

    .line 479
    move-object v0, p1

    .line 480
    .local v0, "temp":Ljava/lang/String;
    invoke-static {p1}, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->isChinese(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 481
    const/16 v1, 0x20

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 482
    .local v1, "index":I
    if-lez v1, :cond_0

    .line 483
    const/4 v2, 0x0

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 486
    .end local v1    # "index":I
    :cond_0
    return-object v0
.end method

.method private isZhLanguage(Ljava/util/Locale;)Z
    .locals 2
    .param p1, "locale"    # Ljava/util/Locale;

    .line 941
    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 942
    .local v0, "language":Ljava/lang/String;
    const-string v1, "zh"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method private onDrawCircle(Landroid/graphics/Canvas;FFZLandroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "cx"    # F
    .param p3, "cy"    # F
    .param p4, "solid"    # Z
    .param p5, "inBitmap"    # Landroid/graphics/Bitmap;
    .param p6, "outBitmap"    # Landroid/graphics/Bitmap;

    .line 548
    if-eqz p5, :cond_2

    invoke-virtual {p5}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p6, :cond_2

    invoke-virtual {p6}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 552
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mCirclePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mThemeColor:I

    invoke-direct {p0, v1}, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->getCurrentColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 553
    if-nez p4, :cond_1

    .line 554
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mCirclePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mThemeSecondaryColor:I

    invoke-direct {p0, v1}, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->getCurrentColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 557
    :cond_1
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mCurrentCircleRadius:F

    sub-float v1, p2, v1

    iget v2, p0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mCurrentCircleRadius:F

    sub-float v2, p3, v2

    iget v3, p0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mCurrentCircleRadius:F

    add-float/2addr v3, p2

    iget v4, p0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mCurrentCircleRadius:F

    add-float/2addr v4, p3

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 559
    .local v0, "rectf":Landroid/graphics/RectF;
    invoke-static {}, Lcom/coui/appcompat/util/COUIRoundRectUtil;->getInstance()Lcom/coui/appcompat/util/COUIRoundRectUtil;

    move-result-object v1

    iget v2, p0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mCurrentRoundBorderRadius:I

    int-to-float v2, v2

    invoke-virtual {v1, v0, v2}, Lcom/coui/appcompat/util/COUIRoundRectUtil;->getPath(Landroid/graphics/RectF;F)Landroid/graphics/Path;

    move-result-object v1

    iput-object v1, p0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mRoundRectPath:Landroid/graphics/Path;

    .line 560
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mRoundRectPath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 562
    iget v1, p0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mTouchModeWidth:I

    invoke-virtual {p5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    .line 563
    .local v1, "left":I
    iget v2, p0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mTouchModeHeight:I

    invoke-virtual {p5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    .line 564
    .local v2, "top":I
    iget-object v3, p0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mInBitmapPaint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mCurrentInBitmapAlpha:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 565
    iget-object v3, p0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mOutBitmapPaint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mCurrentOutBitmapAlpha:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 566
    int-to-float v3, v1

    int-to-float v4, v2

    iget-object v5, p0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mInBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p5, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 567
    int-to-float v3, v1

    int-to-float v4, v2

    iget-object v5, p0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mOutBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p6, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 568
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 569
    return-void

    .line 549
    .end local v0    # "rectf":Landroid/graphics/RectF;
    .end local v1    # "left":I
    .end local v2    # "top":I
    :cond_2
    :goto_0
    return-void
.end method

.method private onDrawRoundRect(Landroid/graphics/Canvas;FFFFZFF)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "right"    # F
    .param p5, "bottom"    # F
    .param p6, "solid"    # Z
    .param p7, "diffX"    # F
    .param p8, "diffY"    # F

    .line 525
    invoke-virtual {p1, p7, p8}, Landroid/graphics/Canvas;->translate(FF)V

    .line 527
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, p2, p3, p4, p5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 528
    .local v0, "rectf":Landroid/graphics/RectF;
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mRoundRectPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mThemeColor:I

    invoke-direct {p0, v2}, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->getCurrentColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 529
    if-nez p6, :cond_0

    .line 530
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mRoundRectPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mThemeSecondaryColor:I

    invoke-direct {p0, v2}, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->getCurrentColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 533
    :cond_0
    invoke-static {}, Lcom/coui/appcompat/util/COUIRoundRectUtil;->getInstance()Lcom/coui/appcompat/util/COUIRoundRectUtil;

    move-result-object v1

    iget v2, p0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mCurrentRoundBorderRadius:I

    int-to-float v2, v2

    invoke-virtual {v1, v0, v2}, Lcom/coui/appcompat/util/COUIRoundRectUtil;->getPath(Landroid/graphics/RectF;F)Landroid/graphics/Path;

    move-result-object v1

    iput-object v1, p0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mRoundRectPath:Landroid/graphics/Path;

    .line 534
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mRoundRectPath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mRoundRectPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 535
    neg-float v1, p7

    neg-float v2, p8

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 536
    return-void
.end method

.method private onDrawText(Landroid/graphics/Canvas;FFFF)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "buttonDrawableWidth"    # F
    .param p5, "buttonDrawableHeight"    # F

    .line 581
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mTextView:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 582
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mTextPaint:Landroid/text/TextPaint;

    iget v1, p0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mDefaultTextSize:I

    int-to-float v1, v1

    iget v2, p0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mNarrowOffsetFont:F

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 583
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mTextPaint:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mTextView:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    .line 584
    .local v0, "textWidth":F
    iget v1, p0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mTextPadding:I

    int-to-float v1, v1

    sub-float v2, p4, v0

    iget v3, p0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mTextPadding:I

    mul-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    .line 585
    .local v1, "textX":F
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mFmi:Landroid/graphics/Paint$FontMetricsInt;

    iget v2, v2, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget-object v4, p0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mFmi:Landroid/graphics/Paint$FontMetricsInt;

    iget v4, v4, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v2, v4

    int-to-float v2, v2

    sub-float v2, p5, v2

    div-float/2addr v2, v3

    iget-object v3, p0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mFmi:Landroid/graphics/Paint$FontMetricsInt;

    iget v3, v3, Landroid/graphics/Paint$FontMetricsInt;->top:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    .line 587
    .local v2, "textY":F
    iget-object v3, p0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mTextView:Ljava/lang/String;

    iget-object v4, p0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v3, v1, v2, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 590
    iget-boolean v3, p0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mIsChangeTextColor:Z

    if-eqz v3, :cond_1

    .line 591
    iget-object v3, p0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mTextPaint:Landroid/text/TextPaint;

    iget v4, p0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mColorWhite:I

    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->setColor(I)V

    .line 592
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 593
    invoke-static {p0}, Landroidx/appcompat/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v3

    .line 594
    .local v3, "isRTL":Z
    if-nez v3, :cond_0

    .line 595
    iget v4, p0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mSpace:I

    int-to-float v4, v4

    invoke-virtual {p1, p2, p3, v4, p5}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    goto :goto_0

    .line 597
    :cond_0
    iget v4, p0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mSpace:I

    int-to-float v4, v4

    sub-float v4, p4, v4

    invoke-virtual {p1, v4, p3, p4, p5}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 599
    :goto_0
    iget-object v4, p0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mTextView:Ljava/lang/String;

    iget-object v5, p0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v4, v1, v2, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 600
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 601
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mIsChangeTextColor:Z

    .line 604
    .end local v0    # "textWidth":F
    .end local v1    # "textX":F
    .end local v2    # "textY":F
    .end local v3    # "isRTL":Z
    :cond_1
    return-void
.end method

.method private performTouchEndAnim(Z)V
    .locals 16
    .param p1, "isActionUp"    # Z

    .line 760
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mHasBrightness:Z

    if-nez v1, :cond_0

    .line 761
    return-void

    .line 763
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->cancelAnimator()V

    .line 765
    iget v1, v0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mLoadStyle:I

    const-wide/16 v2, 0xc8

    const/16 v4, 0x15

    const/4 v5, 0x3

    const/4 v6, 0x4

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x2

    packed-switch v1, :pswitch_data_0

    .line 839
    :goto_0
    move/from16 v4, p1

    goto/16 :goto_1

    .line 806
    :pswitch_0
    const-string v1, "circleRadiusHolder"

    new-array v11, v10, [F

    iget v12, v0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mCurrentCircleRadius:F

    aput v12, v11, v9

    iget v12, v0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mDefaultCircleRadius:I

    int-to-float v12, v12

    aput v12, v11, v8

    invoke-static {v1, v11}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 808
    .local v1, "circleRadiusHolder":Landroid/animation/PropertyValuesHolder;
    const-string v11, "circleBrightnessHolder"

    new-array v12, v10, [F

    iget v13, v0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mCurrentBrightness:F

    aput v13, v12, v9

    aput v7, v12, v8

    invoke-static {v11, v12}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v7

    .line 810
    .local v7, "circleBrightnessHolder":Landroid/animation/PropertyValuesHolder;
    const-string v11, "circleInAlphaHolder"

    new-array v12, v10, [I

    fill-array-data v12, :array_0

    invoke-static {v11, v12}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v11

    .line 812
    .local v11, "circleInAlphaHolder":Landroid/animation/PropertyValuesHolder;
    const-string v12, "circleOutAlphaHolder"

    new-array v13, v10, [I

    fill-array-data v13, :array_1

    invoke-static {v12, v13}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v12

    .line 814
    .local v12, "circleOutAlphaHolder":Landroid/animation/PropertyValuesHolder;
    new-array v6, v6, [Landroid/animation/PropertyValuesHolder;

    aput-object v1, v6, v9

    aput-object v7, v6, v8

    aput-object v11, v6, v10

    aput-object v12, v6, v5

    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object v5

    iput-object v5, v0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mNormalAnimator:Landroid/animation/ValueAnimator;

    .line 816
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v5, v4, :cond_1

    .line 817
    iget-object v4, v0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mNormalAnimator:Landroid/animation/ValueAnimator;

    iget-object v5, v0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mNormalAnimationInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 819
    :cond_1
    iget-object v4, v0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mNormalAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v4, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 820
    iget-object v2, v0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mNormalAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/coui/appcompat/widget/COUIInstallLoadProgress$5;

    invoke-direct {v3, v0}, Lcom/coui/appcompat/widget/COUIInstallLoadProgress$5;-><init>(Lcom/coui/appcompat/widget/COUIInstallLoadProgress;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 830
    iget-object v2, v0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mNormalAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/coui/appcompat/widget/COUIInstallLoadProgress$6;

    invoke-direct {v3, v0}, Lcom/coui/appcompat/widget/COUIInstallLoadProgress$6;-><init>(Lcom/coui/appcompat/widget/COUIInstallLoadProgress;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 836
    iget-object v2, v0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mNormalAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 768
    .end local v1    # "circleRadiusHolder":Landroid/animation/PropertyValuesHolder;
    .end local v7    # "circleBrightnessHolder":Landroid/animation/PropertyValuesHolder;
    .end local v11    # "circleInAlphaHolder":Landroid/animation/PropertyValuesHolder;
    .end local v12    # "circleOutAlphaHolder":Landroid/animation/PropertyValuesHolder;
    :pswitch_1
    const-string v1, "brightnessHolder"

    new-array v11, v10, [F

    iget v12, v0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mCurrentBrightness:F

    aput v12, v11, v9

    aput v7, v11, v8

    invoke-static {v1, v11}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 770
    .local v1, "brightnessHolder":Landroid/animation/PropertyValuesHolder;
    const-string v11, "narrowHolderX"

    new-array v12, v10, [F

    iget v13, v0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mExpandOffsetX:I

    int-to-float v13, v13

    aput v13, v12, v9

    const/4 v13, 0x0

    aput v13, v12, v8

    invoke-static {v11, v12}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v11

    .line 772
    .local v11, "expandHolderX":Landroid/animation/PropertyValuesHolder;
    const-string v12, "narrowHolderY"

    new-array v14, v10, [F

    iget v15, v0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mExpandOffsetY:I

    int-to-float v15, v15

    aput v15, v14, v9

    aput v13, v14, v8

    invoke-static {v12, v14}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v12

    .line 774
    .local v12, "expandHolderY":Landroid/animation/PropertyValuesHolder;
    const-string v13, "narrowHolderFont"

    new-array v14, v10, [F

    iget v15, v0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mNarrowOffsetFont:F

    aput v15, v14, v9

    aput v7, v14, v8

    invoke-static {v13, v14}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v7

    .line 777
    .local v7, "expandHolderFont":Landroid/animation/PropertyValuesHolder;
    new-array v6, v6, [Landroid/animation/PropertyValuesHolder;

    aput-object v1, v6, v9

    aput-object v11, v6, v8

    aput-object v12, v6, v10

    aput-object v7, v6, v5

    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object v5

    iput-object v5, v0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mNormalAnimator:Landroid/animation/ValueAnimator;

    .line 778
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v5, v4, :cond_2

    .line 779
    iget-object v4, v0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mNormalAnimator:Landroid/animation/ValueAnimator;

    iget-object v5, v0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mNormalAnimationInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 781
    :cond_2
    iget-object v4, v0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mNormalAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v4, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 783
    iget-object v2, v0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mNormalAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/coui/appcompat/widget/COUIInstallLoadProgress$3;

    invoke-direct {v3, v0}, Lcom/coui/appcompat/widget/COUIInstallLoadProgress$3;-><init>(Lcom/coui/appcompat/widget/COUIInstallLoadProgress;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 795
    iget-object v2, v0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mNormalAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/coui/appcompat/widget/COUIInstallLoadProgress$4;

    move/from16 v4, p1

    invoke-direct {v3, v0, v4}, Lcom/coui/appcompat/widget/COUIInstallLoadProgress$4;-><init>(Lcom/coui/appcompat/widget/COUIInstallLoadProgress;Z)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 803
    iget-object v2, v0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mNormalAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    .line 804
    nop

    .line 839
    .end local v1    # "brightnessHolder":Landroid/animation/PropertyValuesHolder;
    .end local v7    # "expandHolderFont":Landroid/animation/PropertyValuesHolder;
    .end local v11    # "expandHolderX":Landroid/animation/PropertyValuesHolder;
    .end local v12    # "expandHolderY":Landroid/animation/PropertyValuesHolder;
    :goto_1
    iput-boolean v9, v0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mHasBrightness:Z

    .line 840
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 4
        0x0
        0xff
    .end array-data

    :array_1
    .array-data 4
        0xff
        0x0
    .end array-data
.end method

.method private performTouchStartAnim()V
    .locals 12

    .line 687
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mHasBrightness:Z

    if-eqz v0, :cond_0

    .line 688
    return-void

    .line 690
    :cond_0
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->cancelAnimator()V

    .line 692
    iget v0, p0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mLoadStyle:I

    const-wide/16 v1, 0xc8

    const/16 v3, 0x15

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 730
    :pswitch_0
    const-string v0, "circleRadiusHolder"

    new-array v7, v5, [F

    iget v8, p0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mCurrentCircleRadius:F

    aput v8, v7, v4

    iget v8, p0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mDefaultCircleRadius:I

    int-to-float v8, v8

    const v9, 0x3f666666    # 0.9f

    mul-float/2addr v8, v9

    aput v8, v7, v6

    invoke-static {v0, v7}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 732
    .local v0, "circleRadiusHolder":Landroid/animation/PropertyValuesHolder;
    const-string v7, "circleBrightnessHolder"

    new-array v8, v5, [F

    iget v9, p0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mCurrentBrightness:F

    aput v9, v8, v4

    iget v9, p0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mMaxBrightness:F

    aput v9, v8, v6

    invoke-static {v7, v8}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v7

    .line 734
    .local v7, "circleBrightnessHolder":Landroid/animation/PropertyValuesHolder;
    new-array v5, v5, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, v5, v4

    aput-object v7, v5, v6

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object v4

    iput-object v4, p0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mPressedAnimator:Landroid/animation/ValueAnimator;

    .line 735
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v3, :cond_1

    .line 736
    iget-object v3, p0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mPressedAnimator:Landroid/animation/ValueAnimator;

    iget-object v4, p0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mPressAnimationInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 738
    :cond_1
    iget-object v3, p0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mPressedAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v3, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 739
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mPressedAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/coui/appcompat/widget/COUIInstallLoadProgress$2;

    invoke-direct {v2, p0}, Lcom/coui/appcompat/widget/COUIInstallLoadProgress$2;-><init>(Lcom/coui/appcompat/widget/COUIInstallLoadProgress;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 747
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mPressedAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 695
    .end local v0    # "circleRadiusHolder":Landroid/animation/PropertyValuesHolder;
    .end local v7    # "circleBrightnessHolder":Landroid/animation/PropertyValuesHolder;
    :pswitch_1
    const-string v0, "brightnessHolder"

    new-array v7, v5, [F

    const/high16 v8, 0x3f800000    # 1.0f

    aput v8, v7, v4

    iget v8, p0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mMaxBrightness:F

    aput v8, v7, v6

    invoke-static {v0, v7}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 697
    .local v0, "brightnessHolder":Landroid/animation/PropertyValuesHolder;
    const-string v7, "narrowHolderX"

    new-array v8, v5, [F

    const/4 v9, 0x0

    aput v9, v8, v4

    .line 698
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->getMeasuredWidth()I

    move-result v10

    int-to-float v10, v10

    const v11, 0x3d4ccccd    # 0.05f

    mul-float/2addr v10, v11

    aput v10, v8, v6

    .line 697
    invoke-static {v7, v8}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v7

    .line 699
    .local v7, "narrowHolderX":Landroid/animation/PropertyValuesHolder;
    const-string v8, "narrowHolderY"

    new-array v10, v5, [F

    aput v9, v10, v4

    .line 700
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->getMeasuredHeight()I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v9, v11

    aput v9, v10, v6

    .line 699
    invoke-static {v8, v10}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v8

    .line 701
    .local v8, "narrowHolderY":Landroid/animation/PropertyValuesHolder;
    const-string v9, "narrowHolderFont"

    new-array v10, v5, [F

    fill-array-data v10, :array_0

    invoke-static {v9, v10}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v9

    .line 704
    .local v9, "narrowHolderFont":Landroid/animation/PropertyValuesHolder;
    const/4 v10, 0x4

    new-array v10, v10, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, v10, v4

    aput-object v7, v10, v6

    aput-object v8, v10, v5

    const/4 v4, 0x3

    aput-object v9, v10, v4

    invoke-static {v10}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object v4

    iput-object v4, p0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mPressedAnimator:Landroid/animation/ValueAnimator;

    .line 705
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v3, :cond_2

    .line 706
    iget-object v3, p0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mPressedAnimator:Landroid/animation/ValueAnimator;

    iget-object v4, p0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mPressAnimationInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 708
    :cond_2
    iget-object v3, p0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mPressedAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v3, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 709
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mPressedAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/coui/appcompat/widget/COUIInstallLoadProgress$1;

    invoke-direct {v2, p0}, Lcom/coui/appcompat/widget/COUIInstallLoadProgress$1;-><init>(Lcom/coui/appcompat/widget/COUIInstallLoadProgress;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 727
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mPressedAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 728
    nop

    .line 750
    .end local v0    # "brightnessHolder":Landroid/animation/PropertyValuesHolder;
    .end local v7    # "narrowHolderX":Landroid/animation/PropertyValuesHolder;
    .end local v8    # "narrowHolderY":Landroid/animation/PropertyValuesHolder;
    .end local v9    # "narrowHolderFont":Landroid/animation/PropertyValuesHolder;
    :goto_0
    iput-boolean v6, p0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mHasBrightness:Z

    .line 751
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f666666    # 0.9f
    .end array-data
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 0

    .line 262
    invoke-super {p0}, Lcom/coui/appcompat/widget/COUILoadProgress;->drawableStateChanged()V

    .line 263
    return-void
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    .line 320
    const-class v0, Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 382
    invoke-super {p0}, Lcom/coui/appcompat/widget/COUILoadProgress;->onAttachedToWindow()V

    .line 383
    iget v0, p0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mLoadStyle:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    .line 384
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mCircleLoadBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mCircleLoadBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 385
    :cond_0
    sget v0, Lcoui/support/appcompat/R$drawable;->coui_install_load_progress_circle_load:I

    invoke-direct {p0, v0}, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->getBitmapFromVectorDrawable(I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mCircleLoadBitmap:Landroid/graphics/Bitmap;

    .line 387
    :cond_1
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mCircleReloadBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mCircleReloadBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 388
    :cond_2
    sget v0, Lcoui/support/appcompat/R$drawable;->coui_install_load_progress_circle_reload:I

    invoke-direct {p0, v0}, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->getBitmapFromVectorDrawable(I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mCircleReloadBitmap:Landroid/graphics/Bitmap;

    .line 390
    :cond_3
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mCirclePauseBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mCirclePauseBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 391
    :cond_4
    sget v0, Lcoui/support/appcompat/R$drawable;->coui_install_load_progress_circle_pause:I

    invoke-direct {p0, v0}, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->getBitmapFromVectorDrawable(I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mCirclePauseBitmap:Landroid/graphics/Bitmap;

    .line 394
    :cond_5
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "configuration"    # Landroid/content/res/Configuration;

    .line 398
    invoke-super {p0, p1}, Lcom/coui/appcompat/widget/COUILoadProgress;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 399
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 400
    .local v0, "locale":Ljava/util/Locale;
    iget v1, p0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mLoadStyle:I

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mLocale:Ljava/util/Locale;

    .line 401
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 402
    iput-object v0, p0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mLocale:Ljava/util/Locale;

    .line 403
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcoui/support/appcompat/R$dimen;->coui_install_download_progress_width_in_foreign_language:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 404
    .local v1, "foreignOffset":I
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mLocale:Ljava/util/Locale;

    invoke-direct {p0, v2}, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->isZhLanguage(Ljava/util/Locale;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 405
    iget v2, p0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mTouchModeWidth:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mTouchModeWidth:I

    .line 406
    iget v2, p0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mDefaultWidth:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mDefaultWidth:I

    goto :goto_0

    .line 408
    :cond_0
    iget v2, p0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mTouchModeWidth:I

    sub-int/2addr v2, v1

    iput v2, p0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mTouchModeWidth:I

    .line 409
    iget v2, p0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mDefaultWidth:I

    sub-int/2addr v2, v1

    iput v2, p0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mDefaultWidth:I

    .line 411
    :goto_0
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->invalidate()V

    .line 413
    .end local v1    # "foreignOffset":I
    :cond_1
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 366
    iget v0, p0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mLoadStyle:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 367
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mCircleLoadBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mCircleLoadBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 368
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mCircleLoadBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 370
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mCirclePauseBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mCirclePauseBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 371
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mCirclePauseBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 373
    :cond_1
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mCircleReloadBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mCircleReloadBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 374
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mCircleReloadBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 377
    :cond_2
    invoke-super {p0}, Lcom/coui/appcompat/widget/COUILoadProgress;->onDetachedFromWindow()V

    .line 378
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 22
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 608
    move-object/from16 v9, p0

    move-object/from16 v10, p1

    invoke-super/range {p0 .. p1}, Lcom/coui/appcompat/widget/COUILoadProgress;->onDraw(Landroid/graphics/Canvas;)V

    .line 609
    const/4 v11, 0x0

    .line 610
    .local v11, "diffX":F
    const/4 v12, 0x0

    .line 611
    .local v12, "diffY":F
    iget v0, v9, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mExpandOffsetX:I

    int-to-float v13, v0

    .line 612
    .local v13, "left":F
    iget v0, v9, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mExpandOffsetY:I

    int-to-float v14, v0

    .line 613
    .local v14, "top":F
    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->getWidth()I

    move-result v0

    iget v1, v9, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mExpandOffsetX:I

    sub-int/2addr v0, v1

    int-to-float v15, v0

    .line 614
    .local v15, "right":F
    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->getHeight()I

    move-result v0

    iget v1, v9, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mExpandOffsetY:I

    sub-int/2addr v0, v1

    int-to-float v8, v0

    .line 615
    .local v8, "bottom":F
    const/16 v16, 0x0

    .line 616
    .local v16, "scale":F
    iget v0, v9, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mState:I

    const/4 v7, 0x2

    const-wide/high16 v17, 0x4000000000000000L    # 2.0

    const-wide/high16 v19, 0x3ff0000000000000L    # 1.0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 617
    iget v0, v9, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mLoadStyle:I

    if-ne v0, v7, :cond_0

    .line 618
    iget v0, v9, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mTouchModeWidth:I

    int-to-double v0, v0

    mul-double v0, v0, v19

    div-double v0, v0, v17

    double-to-float v2, v0

    iget v0, v9, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mTouchModeHeight:I

    int-to-double v0, v0

    mul-double v0, v0, v19

    div-double v0, v0, v17

    double-to-float v3, v0

    const/4 v4, 0x1

    iget-object v5, v9, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mCircleReloadBitmap:Landroid/graphics/Bitmap;

    iget-object v6, v9, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mCirclePauseBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->onDrawCircle(Landroid/graphics/Canvas;FFZLandroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 680
    move/from16 v21, v8

    goto/16 :goto_8

    .line 621
    :cond_0
    const/4 v6, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v13

    move v3, v14

    move v4, v15

    move v5, v8

    move v7, v11

    move/from16 v21, v8

    .end local v8    # "bottom":F
    .local v21, "bottom":F
    move v8, v12

    invoke-direct/range {v0 .. v8}, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->onDrawRoundRect(Landroid/graphics/Canvas;FFFFZFF)V

    .line 622
    iget-object v0, v9, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mTextPaint:Landroid/text/TextPaint;

    iget v1, v9, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mColorWhite:I

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 623
    const/4 v0, 0x0

    iput-boolean v0, v9, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mIsChangeTextColor:Z

    .line 624
    iget v0, v9, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mTouchModeWidth:I

    int-to-float v4, v0

    iget v0, v9, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mTouchModeHeight:I

    int-to-float v5, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->onDrawText(Landroid/graphics/Canvas;FFFF)V

    goto/16 :goto_8

    .line 627
    .end local v21    # "bottom":F
    .restart local v8    # "bottom":F
    :cond_1
    move/from16 v21, v8

    .end local v8    # "bottom":F
    .restart local v21    # "bottom":F
    iget v0, v9, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mState:I

    const/4 v8, 0x1

    if-nez v0, :cond_5

    .line 628
    iget v0, v9, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mLoadStyle:I

    if-ne v0, v7, :cond_2

    .line 629
    iget v0, v9, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mTouchModeWidth:I

    int-to-double v0, v0

    mul-double v0, v0, v19

    div-double v0, v0, v17

    double-to-float v2, v0

    iget v0, v9, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mTouchModeHeight:I

    int-to-double v0, v0

    mul-double v0, v0, v19

    div-double v0, v0, v17

    double-to-float v3, v0

    const/4 v4, 0x0

    iget-object v5, v9, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mCircleLoadBitmap:Landroid/graphics/Bitmap;

    iget-object v6, v9, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mCirclePauseBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->onDrawCircle(Landroid/graphics/Canvas;FFZLandroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 636
    move v10, v8

    goto :goto_0

    .line 631
    :cond_2
    iget v0, v9, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mLoadStyle:I

    if-ne v0, v8, :cond_3

    .line 632
    const/4 v6, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v13

    move v3, v14

    move v4, v15

    move/from16 v5, v21

    move v7, v11

    move v10, v8

    move v8, v12

    invoke-direct/range {v0 .. v8}, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->onDrawRoundRect(Landroid/graphics/Canvas;FFFFZFF)V

    goto :goto_0

    .line 634
    :cond_3
    move v10, v8

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v13

    move v3, v14

    move v4, v15

    move/from16 v5, v21

    move v7, v11

    move v8, v12

    invoke-direct/range {v0 .. v8}, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->onDrawRoundRect(Landroid/graphics/Canvas;FFFFZFF)V

    .line 636
    :goto_0
    iget v0, v9, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mLoadStyle:I

    if-ne v0, v10, :cond_4

    .line 637
    iget-object v0, v9, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mTextPaint:Landroid/text/TextPaint;

    iget v1, v9, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mColorWhite:I

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    goto :goto_1

    .line 638
    :cond_4
    iget v0, v9, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mLoadStyle:I

    if-nez v0, :cond_6

    .line 639
    iget-object v0, v9, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mTextPaint:Landroid/text/TextPaint;

    iget v1, v9, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mThemeColor:I

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    goto :goto_1

    .line 642
    :cond_5
    move v10, v8

    :cond_6
    :goto_1
    iget v0, v9, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mState:I

    if-eq v0, v10, :cond_7

    iget v0, v9, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mState:I

    const/4 v8, 0x2

    if-ne v0, v8, :cond_d

    goto :goto_2

    .line 643
    :cond_7
    const/4 v8, 0x2

    :goto_2
    iget v0, v9, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mLoadStyle:I

    if-ne v0, v8, :cond_9

    .line 644
    iget v0, v9, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mState:I

    if-ne v0, v10, :cond_8

    .line 645
    iget v0, v9, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mTouchModeWidth:I

    int-to-double v0, v0

    mul-double v0, v0, v19

    div-double v0, v0, v17

    double-to-float v2, v0

    iget v0, v9, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mTouchModeHeight:I

    int-to-double v0, v0

    mul-double v0, v0, v19

    div-double v0, v0, v17

    double-to-float v3, v0

    const/4 v4, 0x1

    iget-object v5, v9, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mCirclePauseBitmap:Landroid/graphics/Bitmap;

    iget-object v6, v9, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mCircleReloadBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->onDrawCircle(Landroid/graphics/Canvas;FFZLandroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    goto/16 :goto_7

    .line 647
    :cond_8
    iget v0, v9, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mState:I

    if-ne v0, v8, :cond_d

    .line 648
    iget v0, v9, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mTouchModeWidth:I

    int-to-double v0, v0

    mul-double v0, v0, v19

    div-double v0, v0, v17

    double-to-float v2, v0

    iget v0, v9, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mTouchModeHeight:I

    int-to-double v0, v0

    mul-double v0, v0, v19

    div-double v0, v0, v17

    double-to-float v3, v0

    const/4 v4, 0x1

    iget-object v5, v9, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mCircleReloadBitmap:Landroid/graphics/Bitmap;

    iget-object v6, v9, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mCirclePauseBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->onDrawCircle(Landroid/graphics/Canvas;FFZLandroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    goto/16 :goto_7

    .line 652
    :cond_9
    iget-boolean v0, v9, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mIsUpdateWithAnimation:Z

    if-eqz v0, :cond_a

    .line 653
    iget v0, v9, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mVisualProgress:F

    iget v1, v9, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mMax:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 657
    :goto_3
    move/from16 v16, v0

    goto :goto_4

    .line 655
    :cond_a
    iget v0, v9, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mProgress:I

    int-to-float v0, v0

    iget v1, v9, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mMax:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    goto :goto_3

    .line 657
    :goto_4
    iget v0, v9, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mTouchModeWidth:I

    int-to-float v0, v0

    mul-float v0, v0, v16

    float-to-int v0, v0

    iput v0, v9, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mSpace:I

    .line 658
    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v13

    move v3, v14

    move v4, v15

    move/from16 v5, v21

    move v7, v11

    move v10, v8

    move v8, v12

    invoke-direct/range {v0 .. v8}, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->onDrawRoundRect(Landroid/graphics/Canvas;FFFFZFF)V

    .line 659
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 660
    invoke-static/range {p0 .. p0}, Landroidx/appcompat/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v17

    .line 661
    .local v17, "isRTL":Z
    if-nez v17, :cond_b

    .line 662
    iget v0, v9, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mSpace:I

    int-to-float v0, v0

    iget v1, v9, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mTouchModeHeight:I

    int-to-float v1, v1

    const/4 v7, 0x1

    move-object/from16 v8, p1

    invoke-virtual {v8, v13, v14, v0, v1}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    goto :goto_5

    .line 664
    :cond_b
    const/4 v7, 0x1

    move-object/from16 v8, p1

    const/4 v0, 0x0

    invoke-virtual {v8, v11, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 665
    iget v1, v9, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mSpace:I

    int-to-float v1, v1

    sub-float v1, v15, v1

    add-float/2addr v1, v11

    iget v2, v9, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mTouchModeHeight:I

    int-to-float v2, v2

    invoke-virtual {v8, v1, v14, v15, v2}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 666
    neg-float v1, v11

    invoke-virtual {v8, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 668
    :goto_5
    iget v0, v9, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mLoadStyle:I

    if-eq v0, v10, :cond_c

    .line 669
    const/4 v6, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v13

    move v3, v14

    move v4, v15

    move/from16 v5, v21

    move v10, v7

    move v7, v11

    move v8, v12

    invoke-direct/range {v0 .. v8}, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->onDrawRoundRect(Landroid/graphics/Canvas;FFFFZFF)V

    .line 670
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_6

    .line 672
    :cond_c
    move v10, v7

    :goto_6
    iput-boolean v10, v9, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mIsChangeTextColor:Z

    .line 673
    iget-object v0, v9, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mTextPaint:Landroid/text/TextPaint;

    iget v1, v9, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mThemeColor:I

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 676
    .end local v17    # "isRTL":Z
    :cond_d
    :goto_7
    iget v0, v9, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mLoadStyle:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_e

    .line 677
    iget v0, v9, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mTouchModeWidth:I

    int-to-float v4, v0

    iget v0, v9, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mTouchModeHeight:I

    int-to-float v5, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v13

    move v3, v14

    invoke-direct/range {v0 .. v5}, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->onDrawText(Landroid/graphics/Canvas;FFFF)V

    .line 680
    :cond_e
    :goto_8
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 325
    invoke-super {p0, p1}, Lcom/coui/appcompat/widget/COUILoadProgress;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 326
    iget v0, p0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mMax:I

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    .line 327
    iget v0, p0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mProgress:I

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setCurrentItemIndex(I)V

    .line 328
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 332
    invoke-super {p0, p1}, Lcom/coui/appcompat/widget/COUILoadProgress;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 333
    iget v0, p0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mState:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mTextView:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 334
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mTextView:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 336
    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 314
    iget v0, p0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mTouchModeWidth:I

    iget v1, p0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mTouchModeHeight:I

    invoke-virtual {p0, v0, v1}, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->setMeasuredDimension(II)V

    .line 315
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->init()V

    .line 316
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 901
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 911
    :pswitch_0
    invoke-direct {p0, v2}, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->performTouchEndAnim(Z)V

    goto :goto_0

    .line 903
    :pswitch_1
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->performTouchStartAnim()V

    .line 904
    goto :goto_0

    .line 907
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->performTouchEndAnim(Z)V

    .line 908
    nop

    .line 915
    :goto_0
    return v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public refresh()V
    .locals 8

    .line 1003
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mAttrArray:[I

    invoke-virtual {v0, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1004
    .local v0, "colorArray":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mThemeColor:I

    .line 1005
    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mThemeSecondaryColor:I

    .line 1006
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1008
    const/4 v2, 0x0

    .line 1009
    .local v2, "array":Landroid/content/res/TypedArray;
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v4, p0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mStyle:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v3

    .line 1010
    .local v3, "styleAttrType":Ljava/lang/String;
    const-string v4, "attr"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    .line 1011
    iget-object v4, p0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mContext:Landroid/content/Context;

    sget-object v6, Lcoui/support/appcompat/R$styleable;->COUIInstallLoadProgress:[I

    iget v7, p0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mStyle:I

    invoke-virtual {v4, v5, v6, v7, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    goto :goto_0

    .line 1012
    :cond_0
    const-string v4, "style"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1013
    iget-object v4, p0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mContext:Landroid/content/Context;

    sget-object v6, Lcoui/support/appcompat/R$styleable;->COUIInstallLoadProgress:[I

    iget v7, p0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mStyle:I

    invoke-virtual {v4, v5, v6, v1, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 1015
    :cond_1
    :goto_0
    if-eqz v2, :cond_2

    .line 1016
    sget v4, Lcoui/support/appcompat/R$styleable;->COUIInstallLoadProgress_disabledColor:I

    invoke-virtual {v2, v4, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mDisabledColor:I

    .line 1017
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 1020
    :cond_2
    return-void
.end method

.method public setDefaultTextSize(I)V
    .locals 0
    .param p1, "textSize"    # I

    .line 996
    iput p1, p0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mDefaultTextSize:I

    .line 997
    return-void
.end method

.method public setDisabledColor(I)V
    .locals 0
    .param p1, "color"    # I

    .line 978
    iput p1, p0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mDisabledColor:I

    .line 979
    return-void
.end method

.method public setLoadStyle(I)V
    .locals 3
    .param p1, "loadStyle"    # I

    .line 344
    const/4 v0, 0x2

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    .line 345
    iput v0, p0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mLoadStyle:I

    .line 346
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mCirclePaint:Landroid/graphics/Paint;

    .line 347
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 348
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mInBitmapPaint:Landroid/graphics/Paint;

    .line 349
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mInBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 350
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mOutBitmapPaint:Landroid/graphics/Paint;

    .line 351
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mOutBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 352
    sget v0, Lcoui/support/appcompat/R$drawable;->coui_install_load_progress_circle_load:I

    invoke-direct {p0, v0}, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->getBitmapFromVectorDrawable(I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mCircleLoadBitmap:Landroid/graphics/Bitmap;

    .line 353
    sget v0, Lcoui/support/appcompat/R$drawable;->coui_install_load_progress_circle_reload:I

    invoke-direct {p0, v0}, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->getBitmapFromVectorDrawable(I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mCircleReloadBitmap:Landroid/graphics/Bitmap;

    .line 354
    sget v0, Lcoui/support/appcompat/R$drawable;->coui_install_load_progress_circle_pause:I

    invoke-direct {p0, v0}, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->getBitmapFromVectorDrawable(I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mCirclePauseBitmap:Landroid/graphics/Bitmap;

    .line 355
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcoui/support/appcompat/R$dimen;->coui_install_download_progress_default_circle_radius:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mTouchModeCircleRadius:I

    .line 356
    iget v0, p0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mTouchModeCircleRadius:I

    const/high16 v2, 0x3fc00000    # 1.5f

    invoke-direct {p0, v0, v2, v1}, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->getDefaultSize(IFZ)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mDefaultCircleRadius:I

    .line 357
    iget v0, p0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mDefaultCircleRadius:I

    int-to-float v0, v0

    iput v0, p0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mCurrentCircleRadius:F

    goto :goto_0

    .line 359
    :cond_0
    iput p1, p0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mLoadStyle:I

    .line 360
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mRoundRectPaint:Landroid/graphics/Paint;

    .line 362
    :goto_0
    return-void
.end method

.method public setMaxBrightness(I)V
    .locals 1
    .param p1, "brightness"    # I

    .line 969
    int-to-float v0, p1

    iput v0, p0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mMaxBrightness:F

    .line 970
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .line 282
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mTextView:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 283
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mTextView:Ljava/lang/String;

    .line 284
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->invalidate()V

    .line 286
    :cond_0
    return-void
.end method

.method public setTextColor(I)V
    .locals 0
    .param p1, "textColor"    # I

    .line 307
    if-eqz p1, :cond_0

    .line 308
    iput p1, p0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mUserTextColor:I

    .line 310
    :cond_0
    return-void
.end method

.method public setTextId(I)V
    .locals 1
    .param p1, "stringId"    # I

    .line 271
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 272
    .local v0, "text":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->setText(Ljava/lang/String;)V

    .line 273
    return-void
.end method

.method public setTextPadding(I)V
    .locals 0
    .param p1, "padding"    # I

    .line 987
    iput p1, p0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mTextPadding:I

    .line 988
    return-void
.end method

.method public setTextSize(I)V
    .locals 0
    .param p1, "textSize"    # I

    .line 295
    if-eqz p1, :cond_0

    .line 296
    iput p1, p0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mUserTextSize:I

    .line 298
    :cond_0
    return-void
.end method

.method public setTouchModeHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .line 960
    iput p1, p0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mTouchModeHeight:I

    .line 961
    return-void
.end method

.method public setTouchModeWidth(I)V
    .locals 0
    .param p1, "width"    # I

    .line 951
    iput p1, p0, Lcom/coui/appcompat/widget/COUIInstallLoadProgress;->mTouchModeWidth:I

    .line 952
    return-void
.end method
