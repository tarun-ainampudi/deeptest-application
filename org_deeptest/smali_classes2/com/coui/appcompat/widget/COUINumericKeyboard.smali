.class public Lcom/coui/appcompat/widget/COUINumericKeyboard;
.super Landroid/view/View;
.source "COUINumericKeyboard.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/widget/COUINumericKeyboard$OnTouchUpListener;,
        Lcom/coui/appcompat/widget/COUINumericKeyboard$OnTouchTextListener;,
        Lcom/coui/appcompat/widget/COUINumericKeyboard$OnItemTouchListener;,
        Lcom/coui/appcompat/widget/COUINumericKeyboard$SideStyle;,
        Lcom/coui/appcompat/widget/COUINumericKeyboard$OnClickItemListener;,
        Lcom/coui/appcompat/widget/COUINumericKeyboard$PatternExploreByTouchHelper;,
        Lcom/coui/appcompat/widget/COUINumericKeyboard$Cell;
    }
.end annotation


# static fields
.field public static final ALPHA_DELAY:J = 0xa6L

.field public static final ALPHA_DURATION:J = 0xa7L

.field public static final ALPHA_OFFSET:J = 0x10L

.field public static final CELL_COLUMN_COUNT:I = 0x3

.field public static final CELL_ROW_COUNT:I = 0x4

.field private static final ELEVEN:I = 0xb

.field public static final EMPTY_NINE_AND_ELEVEN:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FONT_VARIATION_DEFAULT:I = 0x226

.field public static final FONT_VARIATION_SETTINGS:Ljava/lang/String; = "font_variation_settings"

.field private static final NINE:I = 0x9

.field public static final RETAIN_ELEVEN:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final RETAIN_NINE:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "COUINumericKeyboard"

.field private static final TEN:I = 0xa

.field public static final TRANSLATE_Y_DURATION:J = 0x1f4L

.field public static final TRANSLATE_Y_OFFSET:J = 0x10L


# instance fields
.field public NUMERIC:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public WORD:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private final mAccessibilityManagerService:Landroid/view/accessibility/AccessibilityManager;

.field private mAlphaInterpolator:Landroid/view/animation/Interpolator;

.field private mBgHeight:I

.field private mBlurAlpha:F

.field private mBlurCircle:Landroid/graphics/drawable/Drawable;

.field private mBlurScale:F

.field private mCircleDiameter:I

.field private mCircleMaxAlpha:F

.field private mCircleRadius:I

.field private mContext:Landroid/content/Context;

.field public final mDeleteStyle:Lcom/coui/appcompat/widget/COUINumericKeyboard$SideStyle;

.field private mDownState:Z

.field private mDrawableAlpha:F

.field private mDrawableTranslateX:I

.field private mDrawableTranslateY:I

.field private mEnableHapticFeedback:Z

.field private mExploreByTouchHelper:Lcom/coui/appcompat/widget/COUINumericKeyboard$PatternExploreByTouchHelper;

.field private mFadeAnimator:Landroid/animation/AnimatorSet;

.field public final mFinishStyle:Lcom/coui/appcompat/widget/COUINumericKeyboard$SideStyle;

.field private mIndex:I

.field private mIsLinearMotorVersion:Z

.field private mKeyboardDelete:Landroid/graphics/drawable/Drawable;

.field private mKeyboardLineColor:I

.field private mKeyboardNumberTextColor:I

.field private mKeyboardNumberTextSize:F

.field private mKeyboardNumbers:[I

.field private mLeftStyle:Lcom/coui/appcompat/widget/COUINumericKeyboard$SideStyle;

.field private mLevelSpace:I

.field private mLineHeight:F

.field private mLinePaint:Landroid/graphics/Paint;

.field private mLineWidth:F

.field private mMaxTranslateY:I

.field private mNormalAlpha:F

.field private mNormalCircle:Landroid/graphics/drawable/Drawable;

.field private mNormalScale:F

.field private mNumberTextFontMetrics:Landroid/graphics/Paint$FontMetricsInt;

.field private mNumberTextPaint:Landroid/text/TextPaint;

.field private mOnClickItemListener:Lcom/coui/appcompat/widget/COUINumericKeyboard$OnClickItemListener;

.field private mPaint:Landroid/graphics/Paint;

.field private mPreVariation:I

.field private mPressedColor:I

.field private mRightStyle:Lcom/coui/appcompat/widget/COUINumericKeyboard$SideStyle;

.field private mShowAnimator:Landroid/animation/AnimatorSet;

.field private mShowAnimatorListener:Landroid/animation/Animator$AnimatorListener;

.field private mStyle:I

.field private mTextAlpha:F

.field private mTextTranslateX:I

.field private mTextTranslateY:I

.field private mTouchCell:Lcom/coui/appcompat/widget/COUINumericKeyboard$Cell;

.field private mTranslateYInterpolator:Landroid/view/animation/Interpolator;

.field private mVerticalSpace:I

.field private mWordTextFontMetrics:Landroid/graphics/Paint$FontMetricsInt;

.field private mWordTextPaint:Landroid/text/TextPaint;

.field private sCells:[[Lcom/coui/appcompat/widget/COUINumericKeyboard$Cell;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 297
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/widget/COUINumericKeyboard;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 298
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 304
    sget v0, Lcoui/support/appcompat/R$attr;->couiNumericKeyboardStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/widget/COUINumericKeyboard;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 305
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 17
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 319
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    invoke-direct/range {p0 .. p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 101
    const/4 v4, 0x1

    iput v4, v0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->NUMERIC:I

    .line 104
    const/4 v5, 0x2

    iput v5, v0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->WORD:I

    .line 137
    const/4 v5, 0x0

    iput-object v5, v0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mPaint:Landroid/graphics/Paint;

    .line 138
    iput-object v5, v0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mTouchCell:Lcom/coui/appcompat/widget/COUINumericKeyboard$Cell;

    .line 140
    const/4 v6, -0x1

    iput v6, v0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mIndex:I

    .line 150
    iput-boolean v4, v0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mEnableHapticFeedback:Z

    .line 152
    const/4 v7, 0x0

    iput-boolean v7, v0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mDownState:Z

    .line 153
    const/4 v8, 0x4

    const/4 v9, 0x3

    filled-new-array {v8, v9}, [I

    move-result-object v10

    const-class v11, Lcom/coui/appcompat/widget/COUINumericKeyboard$Cell;

    invoke-static {v11, v10}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [[Lcom/coui/appcompat/widget/COUINumericKeyboard$Cell;

    iput-object v10, v0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->sCells:[[Lcom/coui/appcompat/widget/COUINumericKeyboard$Cell;

    .line 154
    iput-object v5, v0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mKeyboardDelete:Landroid/graphics/drawable/Drawable;

    .line 157
    const/16 v10, 0xc

    new-array v10, v10, [I

    fill-array-data v10, :array_0

    iput-object v10, v0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mKeyboardNumbers:[I

    .line 159
    new-instance v10, Landroid/text/TextPaint;

    invoke-direct {v10}, Landroid/text/TextPaint;-><init>()V

    iput-object v10, v0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mNumberTextPaint:Landroid/text/TextPaint;

    .line 160
    iput-object v5, v0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mNumberTextFontMetrics:Landroid/graphics/Paint$FontMetricsInt;

    .line 161
    iput-object v5, v0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mWordTextFontMetrics:Landroid/graphics/Paint$FontMetricsInt;

    .line 163
    new-instance v10, Landroid/graphics/Paint;

    invoke-direct {v10}, Landroid/graphics/Paint;-><init>()V

    iput-object v10, v0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mLinePaint:Landroid/graphics/Paint;

    .line 164
    const/high16 v10, -0x40800000    # -1.0f

    iput v10, v0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mLineWidth:F

    .line 165
    iput v10, v0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mLineHeight:F

    .line 166
    iput v10, v0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mKeyboardNumberTextSize:F

    .line 167
    iput v6, v0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mKeyboardNumberTextColor:I

    .line 168
    iput v6, v0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mKeyboardLineColor:I

    .line 169
    new-instance v10, Landroid/text/TextPaint;

    invoke-direct {v10}, Landroid/text/TextPaint;-><init>()V

    iput-object v10, v0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mWordTextPaint:Landroid/text/TextPaint;

    .line 171
    const v10, 0x3df5c28f    # 0.12f

    iput v10, v0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mNormalAlpha:F

    .line 180
    new-instance v10, Lcom/coui/appcompat/widget/COUINumericKeyboard$1;

    invoke-direct {v10, v0}, Lcom/coui/appcompat/widget/COUINumericKeyboard$1;-><init>(Lcom/coui/appcompat/widget/COUINumericKeyboard;)V

    iput-object v10, v0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mShowAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    .line 195
    const/high16 v10, 0x3f800000    # 1.0f

    iput v10, v0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mDrawableAlpha:F

    .line 198
    iput v10, v0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mTextAlpha:F

    .line 199
    new-instance v11, Landroid/view/animation/PathInterpolator;

    const/4 v12, 0x0

    const v13, 0x3ea8f5c3    # 0.33f

    const v14, 0x3f2b851f    # 0.67f

    invoke-direct {v11, v13, v12, v14, v10}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v11, v0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mAlphaInterpolator:Landroid/view/animation/Interpolator;

    .line 200
    new-instance v11, Landroid/view/animation/PathInterpolator;

    const v13, 0x3e947ae1    # 0.29f

    const v14, 0x3f547ae1    # 0.83f

    const v15, 0x3e4ccccd    # 0.2f

    invoke-direct {v11, v13, v14, v15, v10}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v11, v0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mTranslateYInterpolator:Landroid/view/animation/Interpolator;

    .line 321
    if-eqz v2, :cond_0

    invoke-interface/range {p2 .. p2}, Landroid/util/AttributeSet;->getStyleAttribute()I

    move-result v10

    if-eqz v10, :cond_0

    .line 322
    invoke-interface/range {p2 .. p2}, Landroid/util/AttributeSet;->getStyleAttribute()I

    move-result v10

    iput v10, v0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mStyle:I

    goto :goto_0

    .line 324
    :cond_0
    iput v3, v0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mStyle:I

    .line 326
    :goto_0
    invoke-static {v0, v7}, Lcom/coui/appcompat/util/COUIDarkModeUtil;->setForceDarkAllow(Landroid/view/View;Z)V

    .line 327
    iput-object v1, v0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mContext:Landroid/content/Context;

    .line 328
    sget-object v10, Lcoui/support/appcompat/R$styleable;->COUINumericKeyboard:[I

    invoke-virtual {v1, v2, v10, v3, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v10

    .line 330
    .local v10, "a":Landroid/content/res/TypedArray;
    sget v11, Lcoui/support/appcompat/R$styleable;->COUINumericKeyboard_couiNumPressColor:I

    invoke-virtual {v10, v11, v7}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v11

    iput v11, v0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mPressedColor:I

    .line 331
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    .line 333
    .local v11, "resources":Landroid/content/res/Resources;
    sget v13, Lcoui/support/appcompat/R$dimen;->coui_numeric_keyboard_circle_diametor:I

    invoke-virtual {v11, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    iput v13, v0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mCircleDiameter:I

    .line 334
    sget v13, Lcoui/support/appcompat/R$dimen;->coui_numeric_keyboard_level_space:I

    invoke-virtual {v11, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    iput v13, v0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mLevelSpace:I

    .line 335
    sget v13, Lcoui/support/appcompat/R$dimen;->coui_numeric_keyboard_vertical_space:I

    invoke-virtual {v11, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    iput v13, v0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mVerticalSpace:I

    .line 336
    sget v13, Lcoui/support/appcompat/R$dimen;->coui_numeric_keyboard_line_height:I

    invoke-virtual {v11, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    int-to-float v13, v13

    iput v13, v0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mLineHeight:F

    .line 337
    sget v13, Lcoui/support/appcompat/R$dimen;->coui_numeric_keyboard_line_width:I

    invoke-virtual {v11, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    int-to-float v13, v13

    iput v13, v0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mLineWidth:F

    .line 338
    sget v13, Lcoui/support/appcompat/R$dimen;->number_keyboard_number_size:I

    invoke-virtual {v11, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    int-to-float v13, v13

    iput v13, v0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mKeyboardNumberTextSize:F

    .line 339
    sget v13, Lcoui/support/appcompat/R$dimen;->coui_numeric_keyboard_height:I

    invoke-virtual {v11, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    iput v13, v0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mBgHeight:I

    .line 340
    sget v13, Lcoui/support/appcompat/R$dimen;->coui_numeric_keyboard_max_translate_y:I

    invoke-virtual {v11, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    iput v13, v0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mMaxTranslateY:I

    .line 342
    sget v13, Lcoui/support/appcompat/R$styleable;->COUINumericKeyboard_couiNumberColor:I

    invoke-virtual {v10, v13, v7}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v13

    iput v13, v0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mKeyboardNumberTextColor:I

    .line 343
    sget v13, Lcoui/support/appcompat/R$styleable;->COUINumericKeyboard_couiLineColor:I

    invoke-virtual {v10, v13, v7}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v13

    iput v13, v0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mKeyboardLineColor:I

    .line 344
    sget v13, Lcoui/support/appcompat/R$styleable;->COUINumericKeyboard_couiWordTextNormalColor:I

    invoke-virtual {v10, v13, v7}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v13

    .line 345
    .local v13, "wordTextColor":I
    sget v14, Lcoui/support/appcompat/R$styleable;->COUINumericKeyboard_couiCircleMaxAlpha:I

    invoke-virtual {v10, v14, v12}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v12

    iput v12, v0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mCircleMaxAlpha:F

    .line 346
    invoke-virtual {v10}, Landroid/content/res/TypedArray;->recycle()V

    .line 347
    new-instance v12, Lcom/coui/appcompat/widget/COUINumericKeyboard$PatternExploreByTouchHelper;

    invoke-direct {v12, v0, v0}, Lcom/coui/appcompat/widget/COUINumericKeyboard$PatternExploreByTouchHelper;-><init>(Lcom/coui/appcompat/widget/COUINumericKeyboard;Landroid/view/View;)V

    iput-object v12, v0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mExploreByTouchHelper:Lcom/coui/appcompat/widget/COUINumericKeyboard$PatternExploreByTouchHelper;

    .line 348
    iget-object v12, v0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mExploreByTouchHelper:Lcom/coui/appcompat/widget/COUINumericKeyboard$PatternExploreByTouchHelper;

    invoke-static {v0, v12}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    .line 349
    invoke-virtual {v0, v4}, Lcom/coui/appcompat/widget/COUINumericKeyboard;->setImportantForAccessibility(I)V

    .line 350
    iget-object v12, v0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mExploreByTouchHelper:Lcom/coui/appcompat/widget/COUINumericKeyboard$PatternExploreByTouchHelper;

    invoke-virtual {v12}, Lcom/coui/appcompat/widget/COUINumericKeyboard$PatternExploreByTouchHelper;->invalidateRoot()V

    .line 351
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v14, Lcoui/support/appcompat/R$array;->coui_number_keyboard_letters:I

    invoke-virtual {v12, v14}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v12

    .line 352
    .local v12, "keyboardLetters":[Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    sget v15, Lcoui/support/appcompat/R$drawable;->coui_number_keyboard_delete:I

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    iput-object v14, v0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mKeyboardDelete:Landroid/graphics/drawable/Drawable;

    .line 353
    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/COUINumericKeyboard;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    sget v15, Lcoui/support/appcompat/R$drawable;->coui_number_keyboard_normal_circle:I

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    iput-object v14, v0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mNormalCircle:Landroid/graphics/drawable/Drawable;

    .line 354
    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/COUINumericKeyboard;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    sget v15, Lcoui/support/appcompat/R$drawable;->coui_number_keyboard_blur_circle:I

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    iput-object v14, v0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mBlurCircle:Landroid/graphics/drawable/Drawable;

    .line 355
    iget-object v14, v0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mNormalCircle:Landroid/graphics/drawable/Drawable;

    iget v15, v0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mPressedColor:I

    invoke-virtual {v14, v15}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 356
    iget-object v14, v0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mBlurCircle:Landroid/graphics/drawable/Drawable;

    iget v15, v0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mPressedColor:I

    invoke-virtual {v14, v15}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 357
    invoke-static/range {p1 .. p1}, Lcom/coui/appcompat/util/VibrateUtils;->isLinearMotorVersion(Landroid/content/Context;)Z

    move-result v14

    iput-boolean v14, v0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mIsLinearMotorVersion:Z

    .line 359
    move v14, v7

    .local v14, "i":I
    :goto_1
    if-ge v14, v8, :cond_3

    .line 360
    move v15, v7

    .local v15, "j":I
    :goto_2
    if-ge v15, v9, :cond_2

    .line 361
    iget-object v8, v0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->sCells:[[Lcom/coui/appcompat/widget/COUINumericKeyboard$Cell;

    aget-object v8, v8, v14

    new-instance v9, Lcom/coui/appcompat/widget/COUINumericKeyboard$Cell;

    invoke-direct {v9, v0, v14, v15, v5}, Lcom/coui/appcompat/widget/COUINumericKeyboard$Cell;-><init>(Lcom/coui/appcompat/widget/COUINumericKeyboard;IILcom/coui/appcompat/widget/COUINumericKeyboard$1;)V

    aput-object v9, v8, v15

    .line 362
    iget-object v8, v0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->sCells:[[Lcom/coui/appcompat/widget/COUINumericKeyboard$Cell;

    aget-object v8, v8, v14

    aget-object v8, v8, v15

    mul-int/lit8 v9, v14, 0x3

    add-int/2addr v9, v15

    aget-object v9, v12, v9

    iput-object v9, v8, Lcom/coui/appcompat/widget/COUINumericKeyboard$Cell;->cellLettersStr:Ljava/lang/String;

    .line 363
    iget-object v8, v0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mKeyboardNumbers:[I

    mul-int/lit8 v9, v14, 0x3

    add-int/2addr v9, v15

    aget v8, v8, v9

    .line 364
    .local v8, "number":I
    if-le v8, v6, :cond_1

    .line 365
    iget-object v9, v0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->sCells:[[Lcom/coui/appcompat/widget/COUINumericKeyboard$Cell;

    aget-object v9, v9, v14

    aget-object v9, v9, v15

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    const-string v6, "%d"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v2, v7

    invoke-static {v5, v6, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v9, Lcom/coui/appcompat/widget/COUINumericKeyboard$Cell;->cellNumberStr:Ljava/lang/String;

    .line 360
    .end local v8    # "number":I
    :cond_1
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v2, p2

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v8, 0x4

    const/4 v9, 0x3

    goto :goto_2

    .line 359
    .end local v15    # "j":I
    :cond_2
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v2, p2

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v8, 0x4

    const/4 v9, 0x3

    goto :goto_1

    .line 369
    .end local v14    # "i":I
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/COUINumericKeyboard;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcoui/support/appcompat/R$string;->coui_numeric_keyboard_sure:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 370
    .local v2, "finishText":Ljava/lang/String;
    new-instance v4, Lcom/coui/appcompat/widget/COUINumericKeyboard$SideStyle$Builder;

    invoke-direct {v4}, Lcom/coui/appcompat/widget/COUINumericKeyboard$SideStyle$Builder;-><init>()V

    invoke-virtual {v4, v2}, Lcom/coui/appcompat/widget/COUINumericKeyboard$SideStyle$Builder;->text(Ljava/lang/String;)Lcom/coui/appcompat/widget/COUINumericKeyboard$SideStyle$Builder;

    move-result-object v4

    .line 371
    invoke-virtual {v4, v13}, Lcom/coui/appcompat/widget/COUINumericKeyboard$SideStyle$Builder;->textColor(I)Lcom/coui/appcompat/widget/COUINumericKeyboard$SideStyle$Builder;

    move-result-object v4

    sget v5, Lcoui/support/appcompat/R$dimen;->coui_number_keyboard_finish_text_size:I

    .line 372
    invoke-virtual {v11, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Lcom/coui/appcompat/widget/COUINumericKeyboard$SideStyle$Builder;->textSize(F)Lcom/coui/appcompat/widget/COUINumericKeyboard$SideStyle$Builder;

    move-result-object v4

    .line 373
    invoke-virtual {v4, v2}, Lcom/coui/appcompat/widget/COUINumericKeyboard$SideStyle$Builder;->description(Ljava/lang/String;)Lcom/coui/appcompat/widget/COUINumericKeyboard$SideStyle$Builder;

    move-result-object v4

    .line 374
    invoke-virtual {v4}, Lcom/coui/appcompat/widget/COUINumericKeyboard$SideStyle$Builder;->build()Lcom/coui/appcompat/widget/COUINumericKeyboard$SideStyle;

    move-result-object v4

    iput-object v4, v0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mFinishStyle:Lcom/coui/appcompat/widget/COUINumericKeyboard$SideStyle;

    .line 376
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcoui/support/appcompat/R$drawable;->coui_number_keyboard_delete:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, v0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mKeyboardDelete:Landroid/graphics/drawable/Drawable;

    .line 377
    iget-object v4, v0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mKeyboardDelete:Landroid/graphics/drawable/Drawable;

    iget v5, v0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mKeyboardNumberTextColor:I

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 378
    new-instance v4, Lcom/coui/appcompat/widget/COUINumericKeyboard$SideStyle$Builder;

    invoke-direct {v4}, Lcom/coui/appcompat/widget/COUINumericKeyboard$SideStyle$Builder;-><init>()V

    iget-object v5, v0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mKeyboardDelete:Landroid/graphics/drawable/Drawable;

    .line 379
    invoke-virtual {v4, v5}, Lcom/coui/appcompat/widget/COUINumericKeyboard$SideStyle$Builder;->drawable(Landroid/graphics/drawable/Drawable;)Lcom/coui/appcompat/widget/COUINumericKeyboard$SideStyle$Builder;

    move-result-object v4

    .line 380
    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/COUINumericKeyboard;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcoui/support/appcompat/R$string;->coui_number_keyboard_delete:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/coui/appcompat/widget/COUINumericKeyboard$SideStyle$Builder;->description(Ljava/lang/String;)Lcom/coui/appcompat/widget/COUINumericKeyboard$SideStyle$Builder;

    move-result-object v4

    .line 381
    invoke-virtual {v4}, Lcom/coui/appcompat/widget/COUINumericKeyboard$SideStyle$Builder;->build()Lcom/coui/appcompat/widget/COUINumericKeyboard$SideStyle;

    move-result-object v4

    iput-object v4, v0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mDeleteStyle:Lcom/coui/appcompat/widget/COUINumericKeyboard$SideStyle;

    .line 382
    const-string v4, "accessibility"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/accessibility/AccessibilityManager;

    iput-object v4, v0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mAccessibilityManagerService:Landroid/view/accessibility/AccessibilityManager;

    .line 383
    invoke-direct/range {p0 .. p0}, Lcom/coui/appcompat/widget/COUINumericKeyboard;->initPaint()V

    .line 384
    invoke-direct/range {p0 .. p0}, Lcom/coui/appcompat/widget/COUINumericKeyboard;->initAnimator()V

    .line 385
    return-void

    :array_0
    .array-data 4
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        -0x1
        0x0
        -0x1
    .end array-data
.end method

.method static synthetic access$000(Lcom/coui/appcompat/widget/COUINumericKeyboard;)Landroid/animation/AnimatorSet;
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUINumericKeyboard;

    .line 88
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mFadeAnimator:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method static synthetic access$100(Lcom/coui/appcompat/widget/COUINumericKeyboard;II)V
    .locals 0
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUINumericKeyboard;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 88
    invoke-direct {p0, p1, p2}, Lcom/coui/appcompat/widget/COUINumericKeyboard;->checkRange(II)V

    return-void
.end method

.method static synthetic access$1000(Lcom/coui/appcompat/widget/COUINumericKeyboard;)I
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUINumericKeyboard;

    .line 88
    iget v0, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mCircleRadius:I

    return v0
.end method

.method static synthetic access$1100(Lcom/coui/appcompat/widget/COUINumericKeyboard;FF)Lcom/coui/appcompat/widget/COUINumericKeyboard$Cell;
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUINumericKeyboard;
    .param p1, "x1"    # F
    .param p2, "x2"    # F

    .line 88
    invoke-direct {p0, p1, p2}, Lcom/coui/appcompat/widget/COUINumericKeyboard;->checkForNewHit(FF)Lcom/coui/appcompat/widget/COUINumericKeyboard$Cell;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/coui/appcompat/widget/COUINumericKeyboard;)Lcom/coui/appcompat/widget/COUINumericKeyboard$SideStyle;
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUINumericKeyboard;

    .line 88
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mLeftStyle:Lcom/coui/appcompat/widget/COUINumericKeyboard$SideStyle;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/coui/appcompat/widget/COUINumericKeyboard;Lcom/coui/appcompat/widget/COUINumericKeyboard$SideStyle;)Z
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUINumericKeyboard;
    .param p1, "x1"    # Lcom/coui/appcompat/widget/COUINumericKeyboard$SideStyle;

    .line 88
    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/COUINumericKeyboard;->isEmptyStyle(Lcom/coui/appcompat/widget/COUINumericKeyboard$SideStyle;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/coui/appcompat/widget/COUINumericKeyboard;)Lcom/coui/appcompat/widget/COUINumericKeyboard$SideStyle;
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUINumericKeyboard;

    .line 88
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mRightStyle:Lcom/coui/appcompat/widget/COUINumericKeyboard$SideStyle;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/coui/appcompat/widget/COUINumericKeyboard;)[I
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUINumericKeyboard;

    .line 88
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mKeyboardNumbers:[I

    return-object v0
.end method

.method static synthetic access$700(Lcom/coui/appcompat/widget/COUINumericKeyboard;I)V
    .locals 0
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUINumericKeyboard;
    .param p1, "x1"    # I

    .line 88
    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/COUINumericKeyboard;->callback(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/coui/appcompat/widget/COUINumericKeyboard;I)F
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUINumericKeyboard;
    .param p1, "x1"    # I

    .line 88
    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/COUINumericKeyboard;->getCenterXForColumn(I)F

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/coui/appcompat/widget/COUINumericKeyboard;I)F
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUINumericKeyboard;
    .param p1, "x1"    # I

    .line 88
    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/COUINumericKeyboard;->getCenterYForRow(I)F

    move-result v0

    return v0
.end method

.method private callback(I)V
    .locals 2
    .param p1, "index"    # I

    .line 597
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mOnClickItemListener:Lcom/coui/appcompat/widget/COUINumericKeyboard$OnClickItemListener;

    if-eqz v0, :cond_3

    .line 598
    if-ltz p1, :cond_0

    const/16 v0, 0x8

    if-gt p1, v0, :cond_0

    .line 599
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mOnClickItemListener:Lcom/coui/appcompat/widget/COUINumericKeyboard$OnClickItemListener;

    add-int/lit8 v1, p1, 0x1

    invoke-interface {v0, v1}, Lcom/coui/appcompat/widget/COUINumericKeyboard$OnClickItemListener;->onClickNumber(I)V

    .line 601
    :cond_0
    const/16 v0, 0xa

    if-ne p1, v0, :cond_1

    .line 602
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mOnClickItemListener:Lcom/coui/appcompat/widget/COUINumericKeyboard$OnClickItemListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/coui/appcompat/widget/COUINumericKeyboard$OnClickItemListener;->onClickNumber(I)V

    .line 604
    :cond_1
    const/16 v0, 0x9

    if-ne p1, v0, :cond_2

    .line 605
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mOnClickItemListener:Lcom/coui/appcompat/widget/COUINumericKeyboard$OnClickItemListener;

    invoke-interface {v0}, Lcom/coui/appcompat/widget/COUINumericKeyboard$OnClickItemListener;->onClickLeft()V

    .line 607
    :cond_2
    const/16 v0, 0xb

    if-ne p1, v0, :cond_3

    .line 608
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mOnClickItemListener:Lcom/coui/appcompat/widget/COUINumericKeyboard$OnClickItemListener;

    invoke-interface {v0}, Lcom/coui/appcompat/widget/COUINumericKeyboard$OnClickItemListener;->onClickRight()V

    .line 611
    :cond_3
    return-void
.end method

.method private checkForNewHit(FF)Lcom/coui/appcompat/widget/COUINumericKeyboard$Cell;
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 664
    invoke-direct {p0, p2}, Lcom/coui/appcompat/widget/COUINumericKeyboard;->getRowHit(F)I

    move-result v0

    .line 665
    .local v0, "rowHit":I
    const/4 v1, 0x0

    if-gez v0, :cond_0

    .line 666
    return-object v1

    .line 668
    :cond_0
    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/COUINumericKeyboard;->getColumnHit(F)I

    move-result v2

    .line 669
    .local v2, "columnHit":I
    if-gez v2, :cond_1

    .line 670
    return-object v1

    .line 672
    :cond_1
    invoke-virtual {p0, v0, v2}, Lcom/coui/appcompat/widget/COUINumericKeyboard;->of(II)Lcom/coui/appcompat/widget/COUINumericKeyboard$Cell;

    move-result-object v1

    return-object v1
.end method

.method private checkRange(II)V
    .locals 2
    .param p1, "row"    # I
    .param p2, "column"    # I

    .line 215
    if-ltz p1, :cond_1

    const/4 v0, 0x3

    if-gt p1, v0, :cond_1

    .line 218
    if-ltz p2, :cond_0

    const/4 v0, 0x2

    if-gt p2, v0, :cond_0

    .line 221
    return-void

    .line 219
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "column must be in range 0-2"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 216
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "row must be in range 0-3"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private drawCell(Landroid/graphics/Canvas;II)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "column"    # I
    .param p3, "row"    # I

    .line 761
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->sCells:[[Lcom/coui/appcompat/widget/COUINumericKeyboard$Cell;

    aget-object v0, v0, p3

    aget-object v0, v0, p2

    .line 762
    .local v0, "cell":Lcom/coui/appcompat/widget/COUINumericKeyboard$Cell;
    invoke-direct {p0, p2}, Lcom/coui/appcompat/widget/COUINumericKeyboard;->getCenterXForColumn(I)F

    move-result v1

    .line 763
    .local v1, "startX":F
    invoke-direct {p0, p3}, Lcom/coui/appcompat/widget/COUINumericKeyboard;->getCenterYForRow(I)F

    move-result v2

    .line 764
    .local v2, "startY":F
    mul-int/lit8 v3, p3, 0x3

    add-int/2addr v3, p2

    .line 765
    .local v3, "index":I
    const/16 v4, 0x9

    if-ne v3, v4, :cond_0

    .line 766
    iget-object v4, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mLeftStyle:Lcom/coui/appcompat/widget/COUINumericKeyboard$SideStyle;

    invoke-direct {p0, v4, p1, v1, v2}, Lcom/coui/appcompat/widget/COUINumericKeyboard;->drawSide(Lcom/coui/appcompat/widget/COUINumericKeyboard$SideStyle;Landroid/graphics/Canvas;FF)V

    goto :goto_0

    .line 767
    :cond_0
    const/16 v4, 0xb

    if-ne v3, v4, :cond_1

    .line 768
    iget-object v4, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mRightStyle:Lcom/coui/appcompat/widget/COUINumericKeyboard$SideStyle;

    invoke-direct {p0, v4, p1, v1, v2}, Lcom/coui/appcompat/widget/COUINumericKeyboard;->drawSide(Lcom/coui/appcompat/widget/COUINumericKeyboard$SideStyle;Landroid/graphics/Canvas;FF)V

    goto :goto_0

    .line 769
    :cond_1
    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    .line 770
    iget-object v4, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mNumberTextPaint:Landroid/text/TextPaint;

    iget-object v5, v0, Lcom/coui/appcompat/widget/COUINumericKeyboard$Cell;->cellNumberStr:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v4

    .line 771
    .local v4, "textWidth":F
    iget-object v5, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mNumberTextFontMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v5, v5, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget-object v6, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mNumberTextFontMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v6, v6, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    add-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    sub-float v5, v2, v5

    .line 772
    .local v5, "baseLine":F
    iget-object v6, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mNumberTextPaint:Landroid/text/TextPaint;

    iget v7, v0, Lcom/coui/appcompat/widget/COUINumericKeyboard$Cell;->cellNumberAlpha:F

    const/high16 v8, 0x437f0000    # 255.0f

    mul-float/2addr v7, v8

    float-to-int v7, v7

    invoke-virtual {v6, v7}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 773
    iget-object v6, v0, Lcom/coui/appcompat/widget/COUINumericKeyboard$Cell;->cellNumberStr:Ljava/lang/String;

    const/high16 v7, 0x40000000    # 2.0f

    div-float v7, v4, v7

    sub-float v7, v1, v7

    iget v8, v0, Lcom/coui/appcompat/widget/COUINumericKeyboard$Cell;->cellNumberTranslateX:I

    int-to-float v8, v8

    add-float/2addr v7, v8

    iget v8, v0, Lcom/coui/appcompat/widget/COUINumericKeyboard$Cell;->cellNumberTranslateY:I

    int-to-float v8, v8

    add-float/2addr v8, v5

    iget-object v9, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mNumberTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v6, v7, v8, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 775
    .end local v4    # "textWidth":F
    .end local v5    # "baseLine":F
    :cond_2
    :goto_0
    return-void
.end method

.method private drawLine(Landroid/graphics/Canvas;I)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "column"    # I

    .line 753
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUINumericKeyboard;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mLineWidth:F

    sub-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 754
    .local v0, "startX":F
    iget v1, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mCircleDiameter:I

    iget v2, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mVerticalSpace:I

    add-int/2addr v1, v2

    add-int/lit8 v2, p2, 0x1

    mul-int/2addr v1, v2

    int-to-float v1, v1

    .line 755
    .local v1, "startY":F
    iget v2, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mLineWidth:F

    add-float v5, v0, v2

    iget-object v7, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mLinePaint:Landroid/graphics/Paint;

    move-object v2, p1

    move v3, v0

    move v4, v1

    move v6, v1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 756
    return-void
.end method

.method private drawPressCircle(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 726
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mTouchCell:Lcom/coui/appcompat/widget/COUINumericKeyboard$Cell;

    if-eqz v0, :cond_0

    .line 727
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mTouchCell:Lcom/coui/appcompat/widget/COUINumericKeyboard$Cell;

    iget v0, v0, Lcom/coui/appcompat/widget/COUINumericKeyboard$Cell;->column:I

    invoke-direct {p0, v0}, Lcom/coui/appcompat/widget/COUINumericKeyboard;->getCenterXForColumn(I)F

    move-result v0

    .line 728
    .local v0, "centerX":F
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mTouchCell:Lcom/coui/appcompat/widget/COUINumericKeyboard$Cell;

    iget v1, v1, Lcom/coui/appcompat/widget/COUINumericKeyboard$Cell;->row:I

    invoke-direct {p0, v1}, Lcom/coui/appcompat/widget/COUINumericKeyboard;->getCenterYForRow(I)F

    move-result v1

    .line 729
    .local v1, "centerY":F
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mTouchCell:Lcom/coui/appcompat/widget/COUINumericKeyboard$Cell;

    invoke-direct {p0, v2}, Lcom/coui/appcompat/widget/COUINumericKeyboard;->getTouchIndex(Lcom/coui/appcompat/widget/COUINumericKeyboard$Cell;)I

    move-result v2

    .line 730
    .local v2, "index":I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 731
    iget v3, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mCircleRadius:I

    int-to-float v3, v3

    sub-float v3, v0, v3

    float-to-int v3, v3

    .line 732
    .local v3, "left":I
    iget v4, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mCircleRadius:I

    int-to-float v4, v4

    sub-float v4, v1, v4

    float-to-int v4, v4

    .line 733
    .local v4, "top":I
    iget v5, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mCircleRadius:I

    int-to-float v5, v5

    add-float/2addr v5, v0

    float-to-int v5, v5

    .line 734
    .local v5, "right":I
    iget v6, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mCircleRadius:I

    int-to-float v6, v6

    add-float/2addr v6, v1

    float-to-int v6, v6

    .line 735
    .local v6, "bottom":I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 736
    iget v7, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mNormalScale:F

    iget v8, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mNormalScale:F

    invoke-virtual {p1, v7, v8, v0, v1}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 737
    iget-object v7, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mNormalCircle:Landroid/graphics/drawable/Drawable;

    iget v8, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mNormalAlpha:F

    const/high16 v9, 0x437f0000    # 255.0f

    mul-float/2addr v8, v9

    float-to-int v8, v8

    invoke-virtual {v7, v8}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 738
    iget-object v7, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mNormalCircle:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, v3, v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 739
    iget-object v7, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mNormalCircle:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 740
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 742
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 743
    iget v7, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mBlurScale:F

    iget v8, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mBlurScale:F

    invoke-virtual {p1, v7, v8, v0, v1}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 744
    iget-object v7, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mBlurCircle:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, v3, v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 745
    iget-object v7, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mBlurCircle:Landroid/graphics/drawable/Drawable;

    iget v8, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mBlurAlpha:F

    mul-float/2addr v8, v9

    float-to-int v8, v8

    invoke-virtual {v7, v8}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 746
    iget-object v7, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mBlurCircle:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 747
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 750
    .end local v0    # "centerX":F
    .end local v1    # "centerY":F
    .end local v2    # "index":I
    .end local v3    # "left":I
    .end local v4    # "top":I
    .end local v5    # "right":I
    .end local v6    # "bottom":I
    :cond_0
    return-void
.end method

.method private drawSide(Lcom/coui/appcompat/widget/COUINumericKeyboard$SideStyle;Landroid/graphics/Canvas;FF)V
    .locals 10
    .param p1, "sideStyle"    # Lcom/coui/appcompat/widget/COUINumericKeyboard$SideStyle;
    .param p2, "canvas"    # Landroid/graphics/Canvas;
    .param p3, "startX"    # F
    .param p4, "startY"    # F

    .line 778
    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/COUINumericKeyboard;->isEmptyStyle(Lcom/coui/appcompat/widget/COUINumericKeyboard$SideStyle;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 779
    return-void

    .line 781
    :cond_0
    invoke-static {p1}, Lcom/coui/appcompat/widget/COUINumericKeyboard$SideStyle;->access$300(Lcom/coui/appcompat/widget/COUINumericKeyboard$SideStyle;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/high16 v1, 0x437f0000    # 255.0f

    if-eqz v0, :cond_1

    .line 782
    invoke-static {p1}, Lcom/coui/appcompat/widget/COUINumericKeyboard$SideStyle;->access$300(Lcom/coui/appcompat/widget/COUINumericKeyboard$SideStyle;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    sub-float v0, p3, v0

    float-to-int v0, v0

    .line 783
    .local v0, "left":I
    invoke-static {p1}, Lcom/coui/appcompat/widget/COUINumericKeyboard$SideStyle;->access$300(Lcom/coui/appcompat/widget/COUINumericKeyboard$SideStyle;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    add-int/2addr v2, v0

    .line 784
    .local v2, "right":I
    invoke-static {p1}, Lcom/coui/appcompat/widget/COUINumericKeyboard$SideStyle;->access$300(Lcom/coui/appcompat/widget/COUINumericKeyboard$SideStyle;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float v3, p4, v3

    float-to-int v3, v3

    .line 785
    .local v3, "top":I
    invoke-static {p1}, Lcom/coui/appcompat/widget/COUINumericKeyboard$SideStyle;->access$300(Lcom/coui/appcompat/widget/COUINumericKeyboard$SideStyle;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    add-int/2addr v4, v3

    .line 786
    .local v4, "bottom":I
    invoke-static {p1}, Lcom/coui/appcompat/widget/COUINumericKeyboard$SideStyle;->access$300(Lcom/coui/appcompat/widget/COUINumericKeyboard$SideStyle;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iget v6, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mDrawableTranslateX:I

    add-int/2addr v6, v0

    iget v7, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mDrawableTranslateY:I

    add-int/2addr v7, v3

    iget v8, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mDrawableTranslateX:I

    add-int/2addr v8, v2

    iget v9, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mDrawableTranslateY:I

    add-int/2addr v9, v4

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 787
    invoke-static {p1}, Lcom/coui/appcompat/widget/COUINumericKeyboard$SideStyle;->access$300(Lcom/coui/appcompat/widget/COUINumericKeyboard$SideStyle;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iget v6, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mDrawableAlpha:F

    mul-float/2addr v6, v1

    float-to-int v1, v6

    invoke-virtual {v5, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 788
    invoke-static {p1}, Lcom/coui/appcompat/widget/COUINumericKeyboard$SideStyle;->access$300(Lcom/coui/appcompat/widget/COUINumericKeyboard$SideStyle;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 789
    .end local v0    # "left":I
    .end local v2    # "right":I
    .end local v3    # "top":I
    .end local v4    # "bottom":I
    goto :goto_0

    :cond_1
    invoke-static {p1}, Lcom/coui/appcompat/widget/COUINumericKeyboard$SideStyle;->access$400(Lcom/coui/appcompat/widget/COUINumericKeyboard$SideStyle;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 790
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mWordTextPaint:Landroid/text/TextPaint;

    invoke-static {p1}, Lcom/coui/appcompat/widget/COUINumericKeyboard$SideStyle;->access$500(Lcom/coui/appcompat/widget/COUINumericKeyboard$SideStyle;)F

    move-result v2

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 791
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mWordTextPaint:Landroid/text/TextPaint;

    invoke-static {p1}, Lcom/coui/appcompat/widget/COUINumericKeyboard$SideStyle;->access$600(Lcom/coui/appcompat/widget/COUINumericKeyboard$SideStyle;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 792
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mWordTextPaint:Landroid/text/TextPaint;

    iget v2, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mTextAlpha:F

    mul-float/2addr v2, v1

    float-to-int v1, v2

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 793
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mWordTextPaint:Landroid/text/TextPaint;

    invoke-static {p1}, Lcom/coui/appcompat/widget/COUINumericKeyboard$SideStyle;->access$400(Lcom/coui/appcompat/widget/COUINumericKeyboard$SideStyle;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    .line 794
    .local v0, "textWidth":F
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mWordTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v1

    iput-object v1, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mWordTextFontMetrics:Landroid/graphics/Paint$FontMetricsInt;

    .line 795
    const/high16 v1, 0x40000000    # 2.0f

    div-float v1, v0, v1

    sub-float v1, p3, v1

    .line 796
    .local v1, "textX":F
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mWordTextFontMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v2, v2, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget-object v3, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mWordTextFontMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v3, v3, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    add-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float v2, p4, v2

    .line 797
    .local v2, "textY":F
    invoke-static {p1}, Lcom/coui/appcompat/widget/COUINumericKeyboard$SideStyle;->access$400(Lcom/coui/appcompat/widget/COUINumericKeyboard$SideStyle;)Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mTextTranslateX:I

    int-to-float v4, v4

    add-float/2addr v4, v1

    iget v5, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mTextTranslateY:I

    int-to-float v5, v5

    add-float/2addr v5, v2

    iget-object v6, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mWordTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p2, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 799
    .end local v0    # "textWidth":F
    .end local v1    # "textX":F
    .end local v2    # "textY":F
    :cond_2
    :goto_0
    return-void
.end method

.method private fade()V
    .locals 2

    .line 588
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mShowAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 589
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mShowAnimator:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mShowAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_0

    .line 591
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mFadeAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 594
    :goto_0
    return-void
.end method

.method private getCenterXForColumn(I)F
    .locals 3
    .param p1, "column"    # I

    .line 654
    iget v0, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mCircleDiameter:I

    iget v1, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mVerticalSpace:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    .line 655
    .local v0, "squareWidth":F
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUINumericKeyboard;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float v2, v0, v2

    add-float/2addr v1, v2

    int-to-float v2, p1

    mul-float/2addr v2, v0

    add-float/2addr v1, v2

    iget v2, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mCircleRadius:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    add-float/2addr v1, v2

    return v1
.end method

.method private getCenterYForRow(I)F
    .locals 4
    .param p1, "row"    # I

    .line 659
    iget v0, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mCircleDiameter:I

    int-to-float v0, v0

    .line 660
    .local v0, "squareHeight":F
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUINumericKeyboard;->getPaddingTop()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float v2, v0, v2

    add-float/2addr v1, v2

    iget v2, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mCircleRadius:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    add-float/2addr v1, v2

    int-to-float v2, p1

    mul-float/2addr v2, v0

    add-float/2addr v1, v2

    iget v2, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mLineHeight:F

    add-int/lit8 v3, p1, 0x1

    int-to-float v3, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    return v1
.end method

.method private getColumnHit(F)I
    .locals 5
    .param p1, "x"    # F

    .line 688
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_1

    .line 689
    invoke-direct {p0, v0}, Lcom/coui/appcompat/widget/COUINumericKeyboard;->getCenterXForColumn(I)F

    move-result v1

    float-to-int v1, v1

    .line 690
    .local v1, "centerX":I
    iget v2, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mCircleDiameter:I

    div-int/lit8 v2, v2, 0x2

    sub-int v2, v1, v2

    iget v3, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mVerticalSpace:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    .line 691
    .local v2, "left":I
    iget v3, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mCircleDiameter:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v1

    iget v4, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mVerticalSpace:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    .line 692
    .local v3, "right":I
    int-to-float v4, v2

    cmpg-float v4, v4, p1

    if-gtz v4, :cond_0

    int-to-float v4, v3

    cmpg-float v4, p1, v4

    if-gtz v4, :cond_0

    .line 693
    return v0

    .line 688
    .end local v1    # "centerX":I
    .end local v2    # "left":I
    .end local v3    # "right":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 696
    .end local v0    # "i":I
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method private getRowHit(F)I
    .locals 6
    .param p1, "y"    # F

    .line 676
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_1

    .line 677
    invoke-direct {p0, v0}, Lcom/coui/appcompat/widget/COUINumericKeyboard;->getCenterYForRow(I)F

    move-result v1

    float-to-int v1, v1

    .line 678
    .local v1, "centerY":I
    iget v2, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mCircleDiameter:I

    div-int/lit8 v2, v2, 0x2

    sub-int v2, v1, v2

    int-to-float v2, v2

    iget v3, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mLineHeight:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    float-to-int v2, v2

    .line 679
    .local v2, "top":I
    iget v3, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mCircleDiameter:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v1

    int-to-float v3, v3

    iget v5, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mLineHeight:F

    div-float/2addr v5, v4

    add-float/2addr v3, v5

    float-to-int v3, v3

    .line 680
    .local v3, "bottom":I
    int-to-float v4, v2

    cmpg-float v4, v4, p1

    if-gtz v4, :cond_0

    int-to-float v4, v3

    cmpg-float v4, p1, v4

    if-gtz v4, :cond_0

    .line 681
    return v0

    .line 676
    .end local v1    # "centerY":I
    .end local v2    # "top":I
    .end local v3    # "bottom":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 684
    .end local v0    # "i":I
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method private getStatusAndVariation()[I
    .locals 4

    .line 420
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "font_variation_settings"

    const/16 v2, 0x226

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 421
    .local v0, "fontVariation":I
    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 422
    .local v1, "fontVariationArray":[I
    const v2, 0xf000

    and-int/2addr v2, v0

    shr-int/lit8 v2, v2, 0xc

    const/4 v3, 0x0

    aput v2, v1, v3

    .line 423
    and-int/lit16 v2, v0, 0xfff

    const/4 v3, 0x1

    aput v2, v1, v3

    .line 424
    return-object v1
.end method

.method private getTouchIndex(Lcom/coui/appcompat/widget/COUINumericKeyboard$Cell;)I
    .locals 5
    .param p1, "cell"    # Lcom/coui/appcompat/widget/COUINumericKeyboard$Cell;

    .line 640
    invoke-virtual {p1}, Lcom/coui/appcompat/widget/COUINumericKeyboard$Cell;->getRow()I

    move-result v0

    .line 641
    .local v0, "row":I
    invoke-virtual {p1}, Lcom/coui/appcompat/widget/COUINumericKeyboard$Cell;->getColumn()I

    move-result v1

    .line 642
    .local v1, "column":I
    mul-int/lit8 v2, v0, 0x3

    add-int/2addr v2, v1

    iput v2, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mIndex:I

    .line 643
    iget v2, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mIndex:I

    const/4 v3, -0x1

    const/16 v4, 0x9

    if-ne v2, v4, :cond_0

    iget-object v2, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mLeftStyle:Lcom/coui/appcompat/widget/COUINumericKeyboard$SideStyle;

    invoke-direct {p0, v2}, Lcom/coui/appcompat/widget/COUINumericKeyboard;->isEmptyStyle(Lcom/coui/appcompat/widget/COUINumericKeyboard$SideStyle;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 644
    iput v3, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mIndex:I

    .line 647
    :cond_0
    iget v2, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mIndex:I

    const/16 v4, 0xb

    if-ne v2, v4, :cond_1

    iget-object v2, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mRightStyle:Lcom/coui/appcompat/widget/COUINumericKeyboard$SideStyle;

    invoke-direct {p0, v2}, Lcom/coui/appcompat/widget/COUINumericKeyboard;->isEmptyStyle(Lcom/coui/appcompat/widget/COUINumericKeyboard$SideStyle;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 648
    iput v3, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mIndex:I

    .line 650
    :cond_1
    iget v2, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mIndex:I

    return v2
.end method

.method private getTypeface([I)Landroid/graphics/Typeface;
    .locals 4
    .param p1, "fontVariationArray"    # [I

    .line 428
    const/4 v0, 0x1

    aget v1, p1, v0

    iput v1, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mPreVariation:I

    .line 430
    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    .line 431
    .local v1, "typeface":Landroid/graphics/Typeface;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v2, v3, :cond_1

    .line 432
    const/4 v2, 0x0

    aget v2, p1, v2

    if-eqz v2, :cond_0

    .line 433
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\'wght\' "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v0, p1, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 434
    .local v0, "fontVariationSettings":Ljava/lang/String;
    new-instance v2, Landroid/graphics/Typeface$Builder;

    const-string v3, "/system/fonts/SysSans-En-Regular.ttf"

    invoke-direct {v2, v3}, Landroid/graphics/Typeface$Builder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Landroid/graphics/Typeface$Builder;->setFontVariationSettings(Ljava/lang/String;)Landroid/graphics/Typeface$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Typeface$Builder;->build()Landroid/graphics/Typeface;

    move-result-object v1

    .line 435
    .end local v0    # "fontVariationSettings":Ljava/lang/String;
    goto :goto_0

    .line 436
    :cond_0
    new-instance v0, Landroid/graphics/Typeface$Builder;

    const-string v2, "/system/fonts/SysSans-En-Regular.ttf"

    invoke-direct {v0, v2}, Landroid/graphics/Typeface$Builder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/graphics/Typeface$Builder;->build()Landroid/graphics/Typeface;

    move-result-object v1

    .line 439
    :cond_1
    :goto_0
    return-object v1
.end method

.method private handleActionDown(Landroid/view/MotionEvent;)V
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 614
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mAccessibilityManagerService:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 615
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 616
    .local v0, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 617
    .local v1, "y":F
    invoke-direct {p0, v0, v1}, Lcom/coui/appcompat/widget/COUINumericKeyboard;->checkForNewHit(FF)Lcom/coui/appcompat/widget/COUINumericKeyboard$Cell;

    move-result-object v2

    iput-object v2, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mTouchCell:Lcom/coui/appcompat/widget/COUINumericKeyboard$Cell;

    .line 618
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mTouchCell:Lcom/coui/appcompat/widget/COUINumericKeyboard$Cell;

    const/4 v3, -0x1

    if-eqz v2, :cond_1

    .line 619
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mTouchCell:Lcom/coui/appcompat/widget/COUINumericKeyboard$Cell;

    invoke-direct {p0, v2}, Lcom/coui/appcompat/widget/COUINumericKeyboard;->getTouchIndex(Lcom/coui/appcompat/widget/COUINumericKeyboard$Cell;)I

    move-result v2

    .line 620
    .local v2, "index":I
    iget-object v4, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mExploreByTouchHelper:Lcom/coui/appcompat/widget/COUINumericKeyboard$PatternExploreByTouchHelper;

    invoke-virtual {v4}, Lcom/coui/appcompat/widget/COUINumericKeyboard$PatternExploreByTouchHelper;->invalidateRoot()V

    .line 621
    iget-boolean v4, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mEnableHapticFeedback:Z

    if-eqz v4, :cond_0

    if-eq v2, v3, :cond_0

    .line 622
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUINumericKeyboard;->setTouchFeedback()V

    .line 624
    .end local v2    # "index":I
    :cond_0
    goto :goto_0

    .line 625
    :cond_1
    iput v3, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mIndex:I

    .line 628
    .end local v0    # "x":F
    .end local v1    # "y":F
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mShowAnimator:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mShowAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 629
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mFadeAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 630
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mFadeAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    .line 632
    :cond_3
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mShowAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 633
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mShowAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    .line 635
    :cond_4
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mShowAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 636
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUINumericKeyboard;->invalidate()V

    .line 637
    return-void
.end method

.method private handleActionUp(Landroid/view/MotionEvent;)V
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 560
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mAccessibilityManagerService:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_2

    .line 561
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 562
    .local v0, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 563
    .local v2, "y":F
    invoke-direct {p0, v0, v2}, Lcom/coui/appcompat/widget/COUINumericKeyboard;->checkForNewHit(FF)Lcom/coui/appcompat/widget/COUINumericKeyboard$Cell;

    move-result-object v3

    iput-object v3, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mTouchCell:Lcom/coui/appcompat/widget/COUINumericKeyboard$Cell;

    .line 564
    iget-object v3, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mTouchCell:Lcom/coui/appcompat/widget/COUINumericKeyboard$Cell;

    if-eqz v3, :cond_1

    .line 565
    iget-object v3, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mTouchCell:Lcom/coui/appcompat/widget/COUINumericKeyboard$Cell;

    invoke-direct {p0, v3}, Lcom/coui/appcompat/widget/COUINumericKeyboard;->getTouchIndex(Lcom/coui/appcompat/widget/COUINumericKeyboard$Cell;)I

    move-result v3

    .line 566
    .local v3, "index":I
    iget-object v4, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mExploreByTouchHelper:Lcom/coui/appcompat/widget/COUINumericKeyboard$PatternExploreByTouchHelper;

    invoke-virtual {v4}, Lcom/coui/appcompat/widget/COUINumericKeyboard$PatternExploreByTouchHelper;->invalidateRoot()V

    .line 567
    iget-boolean v4, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mEnableHapticFeedback:Z

    if-eqz v4, :cond_0

    if-eq v3, v1, :cond_0

    .line 568
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUINumericKeyboard;->setTouchFeedback()V

    .line 570
    .end local v3    # "index":I
    :cond_0
    goto :goto_0

    .line 571
    :cond_1
    iput v1, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mIndex:I

    .line 574
    .end local v0    # "x":F
    .end local v2    # "y":F
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUINumericKeyboard;->fade()V

    .line 575
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/coui/appcompat/widget/COUINumericKeyboard;->getRowHit(F)I

    move-result v0

    if-eq v0, v1, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/coui/appcompat/widget/COUINumericKeyboard;->getColumnHit(F)I

    move-result v0

    if-eq v0, v1, :cond_3

    .line 576
    iget v0, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mIndex:I

    invoke-direct {p0, v0}, Lcom/coui/appcompat/widget/COUINumericKeyboard;->callback(I)V

    .line 580
    :cond_3
    iget v0, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mIndex:I

    if-eq v0, v1, :cond_4

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUINumericKeyboard;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUINumericKeyboard;->hasOnClickListeners()Z

    move-result v0

    if-nez v0, :cond_4

    .line 581
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUINumericKeyboard;->setTouchSoundFeedBack()V

    .line 584
    :cond_4
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUINumericKeyboard;->invalidate()V

    .line 585
    return-void
.end method

.method private initAnimator()V
    .locals 0

    .line 453
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUINumericKeyboard;->initShowAnimator()V

    .line 454
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUINumericKeyboard;->initFadeAnimator()V

    .line 455
    return-void
.end method

.method private initCellAnim(Lcom/coui/appcompat/widget/COUINumericKeyboard$Cell;Ljava/util/List;I)V
    .locals 9
    .param p1, "cell"    # Lcom/coui/appcompat/widget/COUINumericKeyboard$Cell;
    .param p3, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/coui/appcompat/widget/COUINumericKeyboard$Cell;",
            "Ljava/util/List<",
            "Landroid/animation/Animator;",
            ">;I)V"
        }
    .end annotation

    .line 998
    .local p2, "animatorList":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/coui/appcompat/widget/COUINumericKeyboard$Cell;->setCellNumberAlpha(F)V

    .line 999
    iget v0, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mMaxTranslateY:I

    invoke-virtual {p1, v0}, Lcom/coui/appcompat/widget/COUINumericKeyboard$Cell;->setCellNumberTranslateY(I)V

    .line 1001
    const-string v0, "cellNumberAlpha"

    const/4 v1, 0x2

    new-array v2, v1, [F

    fill-array-data v2, :array_0

    invoke-static {p1, v0, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 1002
    .local v0, "alphaAnimator":Landroid/animation/ObjectAnimator;
    const/16 v2, 0xa

    if-ne p3, v2, :cond_0

    iget-object v3, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mLeftStyle:Lcom/coui/appcompat/widget/COUINumericKeyboard$SideStyle;

    invoke-direct {p0, v3}, Lcom/coui/appcompat/widget/COUINumericKeyboard;->isEmptyStyle(Lcom/coui/appcompat/widget/COUINumericKeyboard$SideStyle;)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v3, p3, -0x1

    goto :goto_0

    :cond_0
    move v3, p3

    :goto_0
    int-to-long v3, v3

    const-wide/16 v5, 0x10

    mul-long/2addr v3, v5

    const-wide/16 v7, 0xa6

    add-long/2addr v3, v7

    invoke-virtual {v0, v3, v4}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 1003
    const-wide/16 v3, 0xa7

    invoke-virtual {v0, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1004
    iget-object v3, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mAlphaInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1005
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1007
    const-string v3, "cellNumberTranslateY"

    new-array v1, v1, [I

    iget v4, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mMaxTranslateY:I

    const/4 v7, 0x0

    aput v4, v1, v7

    const/4 v4, 0x1

    aput v7, v1, v4

    invoke-static {p1, v3, v1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 1008
    .local v1, "translateYAnimator":Landroid/animation/ObjectAnimator;
    if-ne p3, v2, :cond_1

    iget-object v2, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mLeftStyle:Lcom/coui/appcompat/widget/COUINumericKeyboard$SideStyle;

    invoke-direct {p0, v2}, Lcom/coui/appcompat/widget/COUINumericKeyboard;->isEmptyStyle(Lcom/coui/appcompat/widget/COUINumericKeyboard$SideStyle;)Z

    move-result v2

    if-eqz v2, :cond_1

    add-int/lit8 v2, p3, -0x1

    goto :goto_1

    :cond_1
    move v2, p3

    :goto_1
    int-to-long v2, v2

    mul-long/2addr v2, v5

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 1009
    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1010
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mTranslateYInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1011
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1012
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private initFadeAnimator()V
    .locals 12

    .line 467
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const v3, 0x3f19999a    # 0.6f

    invoke-direct {v0, v2, v2, v3, v1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 468
    .local v0, "interpolator":Landroid/view/animation/Interpolator;
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v3, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mFadeAnimator:Landroid/animation/AnimatorSet;

    .line 469
    const-string v3, "normalScale"

    const/4 v4, 0x2

    new-array v5, v4, [F

    fill-array-data v5, :array_0

    invoke-static {p0, v3, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 470
    .local v3, "normalScaleAnimator":Landroid/animation/ObjectAnimator;
    const-wide/16 v5, 0xa0

    invoke-virtual {v3, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 471
    invoke-virtual {v3, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 473
    const-string v7, "normalAlpha"

    new-array v8, v4, [F

    iget v9, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mCircleMaxAlpha:F

    const/4 v10, 0x0

    aput v9, v8, v10

    const/4 v9, 0x1

    aput v2, v8, v9

    invoke-static {p0, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    .line 474
    .local v7, "normalAlphaAnimator":Landroid/animation/ObjectAnimator;
    invoke-virtual {v7, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 475
    invoke-virtual {v7, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 477
    invoke-static {v2, v2}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v5

    .line 478
    .local v5, "keyframe1":Landroid/animation/Keyframe;
    iget v6, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mCircleMaxAlpha:F

    const/high16 v8, 0x3f000000    # 0.5f

    invoke-static {v8, v6}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v6

    .line 479
    .local v6, "keyframe2":Landroid/animation/Keyframe;
    invoke-static {v1, v2}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v1

    .line 480
    .local v1, "keyframe3":Landroid/animation/Keyframe;
    const-string v2, "blurAlpha"

    const/4 v8, 0x3

    new-array v8, v8, [Landroid/animation/Keyframe;

    aput-object v5, v8, v10

    aput-object v6, v8, v9

    aput-object v1, v8, v4

    invoke-static {v2, v8}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Ljava/lang/String;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 481
    .local v2, "holder":Landroid/animation/PropertyValuesHolder;
    new-array v8, v9, [Landroid/animation/PropertyValuesHolder;

    aput-object v2, v8, v10

    invoke-static {p0, v8}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v8

    .line 482
    .local v8, "blurAlphaAnimator":Landroid/animation/ObjectAnimator;
    const-wide/16 v9, 0x190

    invoke-virtual {v8, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 483
    invoke-virtual {v8, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 485
    const-string v11, "blurScale"

    new-array v4, v4, [F

    fill-array-data v4, :array_1

    invoke-static {p0, v11, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 486
    .local v4, "blurScaleAnimator":Landroid/animation/ObjectAnimator;
    invoke-virtual {v8, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 487
    invoke-virtual {v8, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 489
    iget-object v9, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mFadeAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v9, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v9

    invoke-virtual {v9, v7}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v9

    invoke-virtual {v9, v4}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 490
    return-void

    :array_0
    .array-data 4
        0x40000000    # 2.0f
        0x40200000    # 2.5f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
    .end array-data
.end method

.method private initPaint()V
    .locals 4

    .line 395
    iget v0, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mCircleDiameter:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mCircleRadius:I

    .line 396
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mPaint:Landroid/graphics/Paint;

    .line 397
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mPressedColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 398
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/BlurMaskFilter;

    sget-object v2, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    const/high16 v3, 0x41a00000    # 20.0f

    invoke-direct {v1, v3, v2}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 399
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 400
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mNumberTextPaint:Landroid/text/TextPaint;

    iget v1, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mKeyboardNumberTextSize:F

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 401
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mNumberTextPaint:Landroid/text/TextPaint;

    iget v1, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mKeyboardNumberTextColor:I

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 402
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mNumberTextPaint:Landroid/text/TextPaint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 405
    :try_start_0
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUINumericKeyboard;->getStatusAndVariation()[I

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/coui/appcompat/widget/COUINumericKeyboard;->getTypeface([I)Landroid/graphics/Typeface;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 408
    .local v0, "typeface":Landroid/graphics/Typeface;
    goto :goto_0

    .line 406
    .end local v0    # "typeface":Landroid/graphics/Typeface;
    :catch_0
    move-exception v0

    .line 407
    .local v0, "e":Ljava/lang/Exception;
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    .line 409
    .local v0, "typeface":Landroid/graphics/Typeface;
    :goto_0
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mNumberTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2, v0}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 410
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mNumberTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v2

    iput-object v2, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mNumberTextFontMetrics:Landroid/graphics/Paint$FontMetricsInt;

    .line 411
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mLinePaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mKeyboardLineColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 412
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 413
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mLinePaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 414
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mLinePaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mLineHeight:F

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 415
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mWordTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2, v1}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 416
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mWordTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2, v1}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 417
    return-void
.end method

.method private initShowAnimator()V
    .locals 5

    .line 458
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mShowAnimator:Landroid/animation/AnimatorSet;

    .line 459
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mShowAnimator:Landroid/animation/AnimatorSet;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 460
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mShowAnimator:Landroid/animation/AnimatorSet;

    new-instance v1, Landroid/view/animation/PathInterpolator;

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const v4, 0x3e99999a    # 0.3f

    invoke-direct {v1, v4, v3, v2, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 461
    const-string v0, "normalScale"

    const/4 v1, 0x2

    new-array v2, v1, [F

    fill-array-data v2, :array_0

    invoke-static {p0, v0, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 462
    .local v0, "circleScaleAnimator":Landroid/animation/ObjectAnimator;
    const-string v2, "normalAlpha"

    new-array v1, v1, [F

    const/4 v4, 0x0

    aput v3, v1, v4

    iget v3, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mCircleMaxAlpha:F

    const/4 v4, 0x1

    aput v3, v1, v4

    invoke-static {p0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 463
    .local v1, "normalCircleAlphaAnimator":Landroid/animation/ObjectAnimator;
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mShowAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 464
    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
    .end array-data
.end method

.method private initSideAnim(Lcom/coui/appcompat/widget/COUINumericKeyboard$SideStyle;Ljava/util/List;I)V
    .locals 16
    .param p1, "sideStyle"    # Lcom/coui/appcompat/widget/COUINumericKeyboard$SideStyle;
    .param p3, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/coui/appcompat/widget/COUINumericKeyboard$SideStyle;",
            "Ljava/util/List<",
            "Landroid/animation/Animator;",
            ">;I)V"
        }
    .end annotation

    .line 962
    .local p2, "animatorList":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-direct/range {p0 .. p1}, Lcom/coui/appcompat/widget/COUINumericKeyboard;->isEmptyStyle(Lcom/coui/appcompat/widget/COUINumericKeyboard$SideStyle;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 963
    invoke-static/range {p1 .. p1}, Lcom/coui/appcompat/widget/COUINumericKeyboard$SideStyle;->access$300(Lcom/coui/appcompat/widget/COUINumericKeyboard$SideStyle;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/4 v6, 0x1

    const-wide/16 v7, 0xa7

    const-wide/16 v9, 0xa6

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-wide/16 v13, 0x10

    const/4 v15, 0x2

    if-eqz v3, :cond_0

    .line 964
    invoke-virtual {v0, v11}, Lcom/coui/appcompat/widget/COUINumericKeyboard;->setDrawableAlpha(F)V

    .line 965
    iget v3, v0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mMaxTranslateY:I

    invoke-virtual {v0, v3}, Lcom/coui/appcompat/widget/COUINumericKeyboard;->setDrawableTranslateY(I)V

    .line 967
    const-string v3, "drawableAlpha"

    new-array v11, v15, [F

    fill-array-data v11, :array_0

    invoke-static {v0, v3, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 968
    .local v3, "alphaAnimator":Landroid/animation/ObjectAnimator;
    int-to-long v4, v2

    mul-long/2addr v4, v13

    add-long/2addr v4, v9

    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 969
    invoke-virtual {v3, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 970
    iget-object v4, v0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mAlphaInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v3, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 971
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 973
    const-string v4, "drawableTranslateY"

    new-array v5, v15, [I

    iget v7, v0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mMaxTranslateY:I

    aput v7, v5, v12

    aput v12, v5, v6

    invoke-static {v0, v4, v5}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 974
    .local v4, "translateYAnimator":Landroid/animation/ObjectAnimator;
    int-to-long v5, v2

    mul-long/2addr v5, v13

    invoke-virtual {v4, v5, v6}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 975
    const-wide/16 v5, 0x1f4

    invoke-virtual {v4, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 976
    iget-object v5, v0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mTranslateYInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v4, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 977
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 978
    .end local v3    # "alphaAnimator":Landroid/animation/ObjectAnimator;
    .end local v4    # "translateYAnimator":Landroid/animation/ObjectAnimator;
    goto :goto_0

    :cond_0
    invoke-static/range {p1 .. p1}, Lcom/coui/appcompat/widget/COUINumericKeyboard$SideStyle;->access$400(Lcom/coui/appcompat/widget/COUINumericKeyboard$SideStyle;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 979
    invoke-virtual {v0, v11}, Lcom/coui/appcompat/widget/COUINumericKeyboard;->setTextAlpha(F)V

    .line 980
    iget v3, v0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mMaxTranslateY:I

    invoke-virtual {v0, v3}, Lcom/coui/appcompat/widget/COUINumericKeyboard;->setTextTranslateY(I)V

    .line 982
    const-string v3, "textAlpha"

    new-array v4, v15, [F

    fill-array-data v4, :array_1

    invoke-static {v0, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 983
    .restart local v3    # "alphaAnimator":Landroid/animation/ObjectAnimator;
    int-to-long v4, v2

    mul-long/2addr v4, v13

    add-long/2addr v4, v9

    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 984
    invoke-virtual {v3, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 985
    iget-object v4, v0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mAlphaInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v3, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 986
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 988
    const-string v4, "textTranslateY"

    new-array v5, v15, [I

    iget v7, v0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mMaxTranslateY:I

    aput v7, v5, v12

    aput v12, v5, v6

    invoke-static {v0, v4, v5}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 989
    .restart local v4    # "translateYAnimator":Landroid/animation/ObjectAnimator;
    int-to-long v5, v2

    mul-long/2addr v5, v13

    invoke-virtual {v4, v5, v6}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 990
    const-wide/16 v5, 0x1f4

    invoke-virtual {v4, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 991
    iget-object v5, v0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mTranslateYInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v4, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 992
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 995
    .end local v3    # "alphaAnimator":Landroid/animation/ObjectAnimator;
    .end local v4    # "translateYAnimator":Landroid/animation/ObjectAnimator;
    :cond_1
    :goto_0
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private isEmptyStyle(Lcom/coui/appcompat/widget/COUINumericKeyboard$SideStyle;)Z
    .locals 1
    .param p1, "sideStyle"    # Lcom/coui/appcompat/widget/COUINumericKeyboard$SideStyle;

    .line 918
    if-eqz p1, :cond_1

    invoke-static {p1}, Lcom/coui/appcompat/widget/COUINumericKeyboard$SideStyle;->access$300(Lcom/coui/appcompat/widget/COUINumericKeyboard$SideStyle;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/coui/appcompat/widget/COUINumericKeyboard$SideStyle;->access$400(Lcom/coui/appcompat/widget/COUINumericKeyboard$SideStyle;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private isMultiPointerEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 539
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 540
    .local v0, "pointerIndex":I
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 541
    .local v1, "pointerId":I
    if-lez v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method private needFadeWhenDisabled(I)Z
    .locals 2
    .param p1, "action"    # I

    .line 532
    iget v0, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mNormalAlpha:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    const/4 v1, 0x1

    if-lez v0, :cond_1

    if-eq v1, p1, :cond_0

    const/4 v0, 0x3

    if-eq v0, p1, :cond_0

    if-nez p1, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private setBlurAlpha(F)V
    .locals 0
    .param p1, "blurAlpha"    # F

    .line 826
    iput p1, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mBlurAlpha:F

    .line 827
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUINumericKeyboard;->invalidate()V

    .line 828
    return-void
.end method

.method private setBlurScale(F)V
    .locals 0
    .param p1, "blurScale"    # F

    .line 816
    iput p1, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mBlurScale:F

    .line 817
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUINumericKeyboard;->invalidate()V

    .line 818
    return-void
.end method

.method private setNormalAlpha(F)V
    .locals 0
    .param p1, "normalAlpha"    # F

    .line 831
    iput p1, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mNormalAlpha:F

    .line 832
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUINumericKeyboard;->invalidate()V

    .line 833
    return-void
.end method

.method private setNormalScale(F)V
    .locals 0
    .param p1, "normalScale"    # F

    .line 821
    iput p1, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mNormalScale:F

    .line 822
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUINumericKeyboard;->invalidate()V

    .line 823
    return-void
.end method

.method private setTouchFeedback()V
    .locals 1

    .line 545
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mIsLinearMotorVersion:Z

    if-eqz v0, :cond_0

    .line 546
    const/16 v0, 0x12e

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/COUINumericKeyboard;->performHapticFeedback(I)Z

    goto :goto_0

    .line 548
    :cond_0
    const/16 v0, 0x12d

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/COUINumericKeyboard;->performHapticFeedback(I)Z

    .line 550
    :goto_0
    return-void
.end method

.method private setTouchSoundFeedBack()V
    .locals 1

    .line 555
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/COUINumericKeyboard;->playSoundEffect(I)V

    .line 556
    return-void
.end method


# virtual methods
.method protected dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 1039
    invoke-super {p0, p1}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 1040
    .local v0, "handled":Z
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mExploreByTouchHelper:Lcom/coui/appcompat/widget/COUINumericKeyboard$PatternExploreByTouchHelper;

    invoke-virtual {v1, p1}, Lcom/coui/appcompat/widget/COUINumericKeyboard$PatternExploreByTouchHelper;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1041
    return v0
.end method

.method public getEnterAnim()Landroid/animation/AnimatorSet;
    .locals 9

    .line 942
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 943
    .local v0, "animatorSet":Landroid/animation/AnimatorSet;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 944
    .local v1, "animatorList":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    const/4 v2, 0x0

    move v3, v2

    .local v3, "i":I
    :goto_0
    const/4 v4, 0x4

    if-ge v3, v4, :cond_4

    .line 945
    move v4, v2

    .local v4, "j":I
    :goto_1
    const/4 v5, 0x3

    if-ge v4, v5, :cond_3

    .line 946
    invoke-virtual {p0, v3, v4}, Lcom/coui/appcompat/widget/COUINumericKeyboard;->of(II)Lcom/coui/appcompat/widget/COUINumericKeyboard$Cell;

    move-result-object v5

    .line 947
    .local v5, "cell":Lcom/coui/appcompat/widget/COUINumericKeyboard$Cell;
    mul-int/lit8 v6, v3, 0x3

    add-int/2addr v6, v4

    .line 948
    .local v6, "index":I
    const/16 v7, 0x9

    if-ne v6, v7, :cond_0

    .line 949
    iget-object v7, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mLeftStyle:Lcom/coui/appcompat/widget/COUINumericKeyboard$SideStyle;

    invoke-direct {p0, v7, v1, v6}, Lcom/coui/appcompat/widget/COUINumericKeyboard;->initSideAnim(Lcom/coui/appcompat/widget/COUINumericKeyboard$SideStyle;Ljava/util/List;I)V

    goto :goto_3

    .line 950
    :cond_0
    const/16 v7, 0xb

    if-ne v6, v7, :cond_2

    .line 951
    iget-object v7, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mRightStyle:Lcom/coui/appcompat/widget/COUINumericKeyboard$SideStyle;

    iget-object v8, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mLeftStyle:Lcom/coui/appcompat/widget/COUINumericKeyboard$SideStyle;

    invoke-direct {p0, v8}, Lcom/coui/appcompat/widget/COUINumericKeyboard;->isEmptyStyle(Lcom/coui/appcompat/widget/COUINumericKeyboard$SideStyle;)Z

    move-result v8

    if-eqz v8, :cond_1

    add-int/lit8 v8, v6, -0x1

    goto :goto_2

    :cond_1
    move v8, v6

    :goto_2
    invoke-direct {p0, v7, v1, v8}, Lcom/coui/appcompat/widget/COUINumericKeyboard;->initSideAnim(Lcom/coui/appcompat/widget/COUINumericKeyboard$SideStyle;Ljava/util/List;I)V

    goto :goto_3

    .line 953
    :cond_2
    invoke-direct {p0, v5, v1, v6}, Lcom/coui/appcompat/widget/COUINumericKeyboard;->initCellAnim(Lcom/coui/appcompat/widget/COUINumericKeyboard$Cell;Ljava/util/List;I)V

    .line 945
    .end local v5    # "cell":Lcom/coui/appcompat/widget/COUINumericKeyboard$Cell;
    .end local v6    # "index":I
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 944
    .end local v4    # "j":I
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 957
    .end local v3    # "i":I
    :cond_4
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 958
    return-object v0
.end method

.method public getTouchIndex()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1343
    const/4 v0, 0x0

    return v0
.end method

.method public isTactileFeedbackEnabled()Z
    .locals 1

    .line 926
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mEnableHapticFeedback:Z

    return v0
.end method

.method public declared-synchronized of(II)Lcom/coui/appcompat/widget/COUINumericKeyboard$Cell;
    .locals 1
    .param p1, "row"    # I
    .param p2, "column"    # I

    monitor-enter p0

    .line 210
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/coui/appcompat/widget/COUINumericKeyboard;->checkRange(II)V

    .line 211
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->sCells:[[Lcom/coui/appcompat/widget/COUINumericKeyboard$Cell;

    aget-object v0, v0, p1

    aget-object v0, v0, p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 209
    .end local p1    # "row":I
    .end local p2    # "column":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/coui/appcompat/widget/COUINumericKeyboard;
    throw p1
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 444
    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 445
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUINumericKeyboard;->getStatusAndVariation()[I

    move-result-object v0

    .line 446
    .local v0, "fontVariationArray":[I
    iget v1, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mPreVariation:I

    const/4 v2, 0x1

    aget v2, v0, v2

    if-eq v1, v2, :cond_0

    .line 447
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mNumberTextPaint:Landroid/text/TextPaint;

    invoke-direct {p0, v0}, Lcom/coui/appcompat/widget/COUINumericKeyboard;->getTypeface([I)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 448
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUINumericKeyboard;->invalidate()V

    .line 450
    :cond_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .line 701
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 702
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 703
    iput-object v1, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mPaint:Landroid/graphics/Paint;

    .line 705
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mTouchCell:Lcom/coui/appcompat/widget/COUINumericKeyboard$Cell;

    if-eqz v0, :cond_1

    .line 706
    iput-object v1, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mTouchCell:Lcom/coui/appcompat/widget/COUINumericKeyboard$Cell;

    .line 708
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mDownState:Z

    .line 709
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 713
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 714
    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/COUINumericKeyboard;->drawPressCircle(Landroid/graphics/Canvas;)V

    .line 715
    const/4 v0, -0x1

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 716
    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/widget/COUINumericKeyboard;->drawLine(Landroid/graphics/Canvas;I)V

    .line 715
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 718
    .end local v0    # "i":I
    :cond_0
    const/4 v0, 0x0

    move v2, v0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_2

    .line 719
    move v3, v0

    .local v3, "j":I
    :goto_2
    const/4 v4, 0x3

    if-ge v3, v4, :cond_1

    .line 720
    invoke-direct {p0, p1, v3, v2}, Lcom/coui/appcompat/widget/COUINumericKeyboard;->drawCell(Landroid/graphics/Canvas;II)V

    .line 719
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 718
    .end local v3    # "j":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 723
    .end local v2    # "i":I
    :cond_2
    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 1016
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mAccessibilityManagerService:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1017
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1018
    .local v0, "action":I
    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1026
    :pswitch_0
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    .line 1020
    :pswitch_1
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 1021
    goto :goto_0

    .line 1023
    :cond_0
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 1024
    nop

    .line 1029
    :goto_0
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/widget/COUINumericKeyboard;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1030
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 1032
    .end local v0    # "action":I
    :cond_1
    invoke-super {p0, p1}, Landroid/view/View;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .locals 4
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 389
    iget v0, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mCircleDiameter:I

    iget v1, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mVerticalSpace:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x3

    iget v1, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mCircleRadius:I

    add-int/2addr v0, v1

    .line 390
    .local v0, "width":I
    iget v1, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mCircleDiameter:I

    mul-int/lit8 v1, v1, 0x4

    int-to-float v1, v1

    iget v2, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mLineHeight:F

    const/high16 v3, 0x40a00000    # 5.0f

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    float-to-int v1, v1

    iget v2, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mCircleRadius:I

    add-int/2addr v1, v2

    .line 391
    .local v1, "height":I
    invoke-virtual {p0, v0, v1}, Lcom/coui/appcompat/widget/COUINumericKeyboard;->setMeasuredDimension(II)V

    .line 392
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 494
    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/COUINumericKeyboard;->isMultiPointerEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 496
    return v1

    .line 499
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 500
    .local v0, "action":I
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUINumericKeyboard;->isEnabled()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_2

    .line 501
    invoke-direct {p0, v0}, Lcom/coui/appcompat/widget/COUINumericKeyboard;->needFadeWhenDisabled(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 502
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUINumericKeyboard;->fade()V

    .line 504
    :cond_1
    return v3

    .line 506
    :cond_2
    const/4 v2, 0x6

    if-eq v0, v2, :cond_3

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 518
    :pswitch_0
    iput-boolean v3, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mDownState:Z

    .line 519
    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/COUINumericKeyboard;->handleActionUp(Landroid/view/MotionEvent;)V

    .line 520
    goto :goto_0

    .line 516
    :pswitch_1
    goto :goto_0

    .line 512
    :pswitch_2
    iput-boolean v3, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mDownState:Z

    .line 513
    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/COUINumericKeyboard;->handleActionUp(Landroid/view/MotionEvent;)V

    .line 514
    goto :goto_0

    .line 508
    :pswitch_3
    iput-boolean v1, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mDownState:Z

    .line 509
    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/COUINumericKeyboard;->handleActionDown(Landroid/view/MotionEvent;)V

    .line 510
    goto :goto_0

    .line 522
    :cond_3
    iput-boolean v3, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mDownState:Z

    .line 523
    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/COUINumericKeyboard;->handleActionUp(Landroid/view/MotionEvent;)V

    .line 524
    nop

    .line 528
    :goto_0
    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public refresh()V
    .locals 7

    .line 1376
    const/4 v0, 0x0

    .line 1377
    .local v0, "array":Landroid/content/res/TypedArray;
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUINumericKeyboard;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mStyle:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v1

    .line 1378
    .local v1, "styleAttrType":Ljava/lang/String;
    const-string v2, "attr"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    .line 1379
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mContext:Landroid/content/Context;

    sget-object v5, Lcoui/support/appcompat/R$styleable;->COUINumericKeyboard:[I

    iget v6, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mStyle:I

    invoke-virtual {v2, v3, v5, v6, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    goto :goto_0

    .line 1380
    :cond_0
    const-string v2, "style"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1381
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mContext:Landroid/content/Context;

    sget-object v5, Lcoui/support/appcompat/R$styleable;->COUINumericKeyboard:[I

    iget v6, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mStyle:I

    invoke-virtual {v2, v3, v5, v4, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1383
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 1384
    sget v2, Lcoui/support/appcompat/R$styleable;->COUINumericKeyboard_couiNumPressColor:I

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mPressedColor:I

    .line 1385
    sget v2, Lcoui/support/appcompat/R$styleable;->COUINumericKeyboard_couiNumberColor:I

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mKeyboardNumberTextColor:I

    .line 1386
    sget v2, Lcoui/support/appcompat/R$styleable;->COUINumericKeyboard_couiLineColor:I

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mKeyboardLineColor:I

    .line 1387
    sget v2, Lcoui/support/appcompat/R$styleable;->COUINumericKeyboard_couiCircleMaxAlpha:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mCircleMaxAlpha:F

    .line 1388
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1390
    :cond_2
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mNormalCircle:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mPressedColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 1391
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mBlurCircle:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mPressedColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 1392
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mKeyboardDelete:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mKeyboardNumberTextColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 1393
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUINumericKeyboard;->initPaint()V

    .line 1394
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUINumericKeyboard;->initAnimator()V

    .line 1395
    return-void
.end method

.method public setCircleMaxAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .line 1364
    int-to-float v0, p1

    iput v0, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mCircleMaxAlpha:F

    .line 1365
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUINumericKeyboard;->initAnimator()V

    .line 1366
    return-void
.end method

.method public setDrawableAlpha(F)V
    .locals 0
    .param p1, "drawableAlpha"    # F

    .line 858
    iput p1, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mDrawableAlpha:F

    .line 859
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUINumericKeyboard;->invalidate()V

    .line 860
    return-void
.end method

.method public setDrawableTranslateX(I)V
    .locals 0
    .param p1, "drawableTranslateX"    # I

    .line 840
    iput p1, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mDrawableTranslateX:I

    .line 841
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUINumericKeyboard;->invalidate()V

    .line 842
    return-void
.end method

.method public setDrawableTranslateY(I)V
    .locals 0
    .param p1, "drawableTranslateY"    # I

    .line 849
    iput p1, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mDrawableTranslateY:I

    .line 850
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUINumericKeyboard;->invalidate()V

    .line 851
    return-void
.end method

.method public setEnabled(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .line 805
    if-nez p1, :cond_0

    iget-boolean v0, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mDownState:Z

    if-eqz v0, :cond_0

    .line 806
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    .line 807
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 808
    iput-boolean v1, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mDownState:Z

    .line 809
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUINumericKeyboard;->invalidate()V

    .line 812
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 813
    return-void
.end method

.method public setHasFinishButton(Z)V
    .locals 0
    .param p1, "isVisibility"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1308
    return-void
.end method

.method public setItemTouchListener(Lcom/coui/appcompat/widget/COUINumericKeyboard$OnItemTouchListener;)V
    .locals 0
    .param p1, "itemClick"    # Lcom/coui/appcompat/widget/COUINumericKeyboard$OnItemTouchListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1313
    return-void
.end method

.method public setKeyboardLineColor(I)V
    .locals 0
    .param p1, "color"    # I

    .line 1359
    iput p1, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mKeyboardLineColor:I

    .line 1360
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUINumericKeyboard;->initPaint()V

    .line 1361
    return-void
.end method

.method public setKeyboardNumberTextColor(I)V
    .locals 2
    .param p1, "color"    # I

    .line 1354
    iput p1, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mKeyboardNumberTextColor:I

    .line 1355
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mKeyboardDelete:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mKeyboardNumberTextColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 1356
    return-void
.end method

.method public setLeftStyle(Lcom/coui/appcompat/widget/COUINumericKeyboard$SideStyle;)V
    .locals 2
    .param p1, "sideStyle"    # Lcom/coui/appcompat/widget/COUINumericKeyboard$SideStyle;

    .line 902
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mLeftStyle:Lcom/coui/appcompat/widget/COUINumericKeyboard$SideStyle;

    .line 903
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mExploreByTouchHelper:Lcom/coui/appcompat/widget/COUINumericKeyboard$PatternExploreByTouchHelper;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/widget/COUINumericKeyboard$PatternExploreByTouchHelper;->invalidateVirtualView(I)V

    .line 904
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUINumericKeyboard;->invalidate()V

    .line 905
    return-void
.end method

.method public setOnClickItemListener(Lcom/coui/appcompat/widget/COUINumericKeyboard$OnClickItemListener;)V
    .locals 0
    .param p1, "onClickItemListener"    # Lcom/coui/appcompat/widget/COUINumericKeyboard$OnClickItemListener;

    .line 894
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mOnClickItemListener:Lcom/coui/appcompat/widget/COUINumericKeyboard$OnClickItemListener;

    .line 895
    return-void
.end method

.method public setPressedColor(I)V
    .locals 2
    .param p1, "color"    # I

    .line 1347
    iput p1, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mPressedColor:I

    .line 1348
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mNormalCircle:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mPressedColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 1349
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mBlurCircle:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mPressedColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 1350
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUINumericKeyboard;->initPaint()V

    .line 1351
    return-void
.end method

.method public setRightStyle(Lcom/coui/appcompat/widget/COUINumericKeyboard$SideStyle;)V
    .locals 2
    .param p1, "sideStyle"    # Lcom/coui/appcompat/widget/COUINumericKeyboard$SideStyle;

    .line 912
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mRightStyle:Lcom/coui/appcompat/widget/COUINumericKeyboard$SideStyle;

    .line 913
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mExploreByTouchHelper:Lcom/coui/appcompat/widget/COUINumericKeyboard$PatternExploreByTouchHelper;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/widget/COUINumericKeyboard$PatternExploreByTouchHelper;->invalidateVirtualView(I)V

    .line 914
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUINumericKeyboard;->invalidate()V

    .line 915
    return-void
.end method

.method public setTactileFeedbackEnabled(Z)V
    .locals 0
    .param p1, "tactileFeedbackEnabled"    # Z

    .line 934
    iput-boolean p1, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mEnableHapticFeedback:Z

    .line 935
    return-void
.end method

.method public setTextAlpha(F)V
    .locals 0
    .param p1, "textAlpha"    # F

    .line 885
    iput p1, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mTextAlpha:F

    .line 886
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUINumericKeyboard;->invalidate()V

    .line 887
    return-void
.end method

.method public setTextTranslateX(I)V
    .locals 0
    .param p1, "textTranslateX"    # I

    .line 867
    iput p1, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mTextTranslateX:I

    .line 868
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUINumericKeyboard;->invalidate()V

    .line 869
    return-void
.end method

.method public setTextTranslateY(I)V
    .locals 0
    .param p1, "textTranslateY"    # I

    .line 876
    iput p1, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mTextTranslateY:I

    .line 877
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUINumericKeyboard;->invalidate()V

    .line 878
    return-void
.end method

.method public setTouchTextListener(Lcom/coui/appcompat/widget/COUINumericKeyboard$OnTouchTextListener;)V
    .locals 0
    .param p1, "itemClick"    # Lcom/coui/appcompat/widget/COUINumericKeyboard$OnTouchTextListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1323
    return-void
.end method

.method public setTouchUpListener(Lcom/coui/appcompat/widget/COUINumericKeyboard$OnTouchUpListener;)V
    .locals 0
    .param p1, "touchUp"    # Lcom/coui/appcompat/widget/COUINumericKeyboard$OnTouchUpListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1333
    return-void
.end method

.method public setType(I)V
    .locals 0
    .param p1, "type"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1303
    return-void
.end method

.method public setWordTextNormalColor(I)V
    .locals 1
    .param p1, "color"    # I

    .line 1369
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard;->mFinishStyle:Lcom/coui/appcompat/widget/COUINumericKeyboard$SideStyle;

    invoke-static {v0, p1}, Lcom/coui/appcompat/widget/COUINumericKeyboard$SideStyle;->access$602(Lcom/coui/appcompat/widget/COUINumericKeyboard$SideStyle;I)I

    .line 1370
    return-void
.end method
