.class public Lcom/coui/appcompat/widget/toolbar/COUIToolbar;
.super Landroidx/appcompat/widget/Toolbar;
.source "COUIToolbar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/widget/toolbar/COUIToolbar$ExpandedActionViewMenuPresenter;,
        Lcom/coui/appcompat/widget/toolbar/COUIToolbar$LayoutParams;
    }
.end annotation


# static fields
.field private static final DEFAULT_TEXT_MAX:I = 0x18

.field private static final DEFAULT_TEXT_MIN:I = 0x10

.field private static final TAG:Ljava/lang/String; = "Toolbar"

.field public static final TITLE_TYPE_HEAD:I = 0x0

.field public static final TITLE_TYPE_SECONDARY:I = 0x1


# instance fields
.field private mActionMenuPresenterCallback:Landroidx/appcompat/view/menu/MenuPresenter$Callback;

.field private mButtonGravity:I

.field private mCollapseButtonView:Landroid/widget/ImageButton;

.field private mCollapseDescription:Ljava/lang/CharSequence;

.field private mCollapseIcon:Landroid/graphics/drawable/Drawable;

.field private mCollapsible:Z

.field private final mContentInsets:Lcom/coui/appcompat/util/COUIRtlSpacingHelper;

.field private mEatingHover:Z

.field private mEatingTouch:Z

.field mExpandedActionView:Landroid/view/View;

.field private mExpandedMenuPresenter:Lcom/coui/appcompat/widget/toolbar/COUIToolbar$ExpandedActionViewMenuPresenter;

.field private mGravity:I

.field mHasSearchViewFlag:Z

.field private mIsTitleCenterStyle:Z

.field private mLogoView:Landroid/widget/ImageView;

.field private mMaxButtonHeight:I

.field private mMenuBuilderCallback:Landroidx/appcompat/view/menu/MenuBuilder$Callback;

.field private mMenuView:Landroidx/appcompat/widget/ActionMenuView;

.field private final mMenuViewItemClickListener:Landroidx/appcompat/widget/ActionMenuView$OnMenuItemClickListener;

.field private mMinHeight:I

.field private mNavButtonView:Landroid/widget/ImageButton;

.field private mOnMenuItemClickListener:Landroidx/appcompat/widget/Toolbar$OnMenuItemClickListener;

.field private mPopupContext:Landroid/content/Context;

.field private mPopupTheme:I

.field private final mSearchCollapsingMargins:[I

.field private final mShowOverflowMenuRunnable:Ljava/lang/Runnable;

.field private mStyle:I

.field private mSubtitleText:Ljava/lang/CharSequence;

.field private mSubtitleTextAppearance:I

.field private mSubtitleTextColor:I

.field private mSubtitleTextView:Landroid/widget/TextView;

.field private final mTempMargins:[I

.field private final mTempViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mTextMaxSize:F

.field private mTextMinSize:F

.field private mTitleMarginBottom:I

.field private mTitleMarginEnd:I

.field private mTitleMarginStart:I

.field private mTitleMarginTop:I

.field private mTitlePosition:[I

.field private mTitleText:Ljava/lang/CharSequence;

.field private mTitleTextAppearance:I

.field private mTitleTextColor:I

.field private mTitleTextSize:F

.field private mTitleTextView:Landroid/widget/TextView;

.field private mTitleType:I

.field private mToolbarNormalPadding:I

.field private mToolbarOverFlowPadding:I

.field private mWrapper:Landroidx/appcompat/widget/ToolbarWidgetWrapper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 236
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 237
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 242
    sget v0, Lcoui/support/appcompat/R$attr;->toolbarStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 243
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 23
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "defStyleAttr"    # I

    .line 258
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-direct/range {p0 .. p3}, Landroidx/appcompat/widget/Toolbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 163
    new-instance v3, Lcom/coui/appcompat/util/COUIRtlSpacingHelper;

    invoke-direct {v3}, Lcom/coui/appcompat/util/COUIRtlSpacingHelper;-><init>()V

    iput-object v3, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mContentInsets:Lcom/coui/appcompat/util/COUIRtlSpacingHelper;

    .line 165
    const v3, 0x800013

    iput v3, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mGravity:I

    .line 177
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mTempViews:Ljava/util/ArrayList;

    .line 179
    const/4 v3, 0x2

    new-array v4, v3, [I

    iput-object v4, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mTempMargins:[I

    .line 183
    new-instance v4, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$1;

    invoke-direct {v4, v0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$1;-><init>(Lcom/coui/appcompat/widget/toolbar/COUIToolbar;)V

    iput-object v4, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mMenuViewItemClickListener:Landroidx/appcompat/widget/ActionMenuView$OnMenuItemClickListener;

    .line 203
    const/4 v4, 0x0

    iput-boolean v4, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mIsTitleCenterStyle:Z

    .line 213
    new-array v5, v3, [I

    iput-object v5, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mTitlePosition:[I

    .line 214
    const/4 v5, 0x0

    iput v5, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mTitleTextSize:F

    .line 221
    new-array v5, v3, [I

    iput-object v5, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mSearchCollapsingMargins:[I

    .line 224
    new-instance v5, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$2;

    invoke-direct {v5, v0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$2;-><init>(Lcom/coui/appcompat/widget/toolbar/COUIToolbar;)V

    iput-object v5, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mShowOverflowMenuRunnable:Ljava/lang/Runnable;

    .line 409
    iput-boolean v4, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mHasSearchViewFlag:Z

    .line 259
    invoke-virtual {v0, v4}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->setClipToPadding(Z)V

    .line 260
    invoke-virtual {v0, v4}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->setClipChildren(Z)V

    .line 262
    if-eqz v1, :cond_0

    .line 263
    invoke-interface/range {p2 .. p2}, Landroid/util/AttributeSet;->getStyleAttribute()I

    move-result v5

    iput v5, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mStyle:I

    .line 264
    iget v5, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mStyle:I

    if-nez v5, :cond_1

    .line 265
    iput v2, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mStyle:I

    goto :goto_0

    .line 268
    :cond_0
    iput v4, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mStyle:I

    .line 272
    :cond_1
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->getContext()Landroid/content/Context;

    move-result-object v5

    sget-object v6, Lcoui/support/appcompat/R$styleable;->COUIToolbar:[I

    invoke-static {v5, v1, v6, v2, v4}, Landroidx/appcompat/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroidx/appcompat/widget/TintTypedArray;

    move-result-object v5

    .line 277
    .local v5, "a":Landroidx/appcompat/widget/TintTypedArray;
    sget v6, Lcoui/support/appcompat/R$styleable;->COUIToolbar_titleType:I

    invoke-virtual {v5, v6}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 278
    sget v6, Lcoui/support/appcompat/R$styleable;->COUIToolbar_titleType:I

    invoke-virtual {v5, v6, v4}, Landroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    move-result v6

    iput v6, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mTitleType:I

    .line 281
    :cond_2
    sget v6, Lcoui/support/appcompat/R$styleable;->COUIToolbar_supportTitleTextAppearance:I

    invoke-virtual {v5, v6, v4}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v6

    iput v6, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mTitleTextAppearance:I

    .line 282
    sget v6, Lcoui/support/appcompat/R$styleable;->COUIToolbar_supportSubtitleTextAppearance:I

    invoke-virtual {v5, v6, v4}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v6

    iput v6, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mSubtitleTextAppearance:I

    .line 283
    sget v6, Lcoui/support/appcompat/R$styleable;->COUIToolbar_android_gravity:I

    iget v7, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mGravity:I

    invoke-virtual {v5, v6, v7}, Landroidx/appcompat/widget/TintTypedArray;->getInteger(II)I

    move-result v6

    iput v6, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mGravity:I

    .line 284
    sget v6, Lcoui/support/appcompat/R$styleable;->COUIToolbar_supportButtonGravity:I

    const/16 v7, 0x30

    invoke-virtual {v5, v6, v7}, Landroidx/appcompat/widget/TintTypedArray;->getInteger(II)I

    move-result v6

    iput v6, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mButtonGravity:I

    .line 285
    sget v6, Lcoui/support/appcompat/R$styleable;->COUIToolbar_supportTitleMargins:I

    .line 286
    invoke-virtual {v5, v6, v4}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelOffset(II)I

    move-result v6

    iput v6, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mTitleMarginBottom:I

    iput v6, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mTitleMarginTop:I

    iput v6, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mTitleMarginEnd:I

    iput v6, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mTitleMarginStart:I

    .line 288
    sget v6, Lcoui/support/appcompat/R$styleable;->COUIToolbar_supportTitleMarginStart:I

    const/4 v7, -0x1

    invoke-virtual {v5, v6, v7}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelOffset(II)I

    move-result v6

    .line 289
    .local v6, "marginStart":I
    if-ltz v6, :cond_3

    .line 290
    iput v6, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mTitleMarginStart:I

    .line 293
    :cond_3
    sget v8, Lcoui/support/appcompat/R$styleable;->COUIToolbar_supportTitleMarginEnd:I

    invoke-virtual {v5, v8, v7}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelOffset(II)I

    move-result v8

    .line 294
    .local v8, "marginEnd":I
    if-ltz v8, :cond_4

    .line 295
    iput v8, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mTitleMarginEnd:I

    .line 298
    :cond_4
    sget v9, Lcoui/support/appcompat/R$styleable;->COUIToolbar_supportTitleMarginTop:I

    invoke-virtual {v5, v9, v7}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelOffset(II)I

    move-result v9

    .line 299
    .local v9, "marginTop":I
    if-ltz v9, :cond_5

    .line 300
    iput v9, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mTitleMarginTop:I

    .line 303
    :cond_5
    sget v10, Lcoui/support/appcompat/R$styleable;->COUIToolbar_supportTitleMarginBottom:I

    invoke-virtual {v5, v10, v7}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelOffset(II)I

    move-result v10

    .line 305
    .local v10, "marginBottom":I
    if-ltz v10, :cond_6

    .line 306
    iput v10, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mTitleMarginBottom:I

    .line 309
    :cond_6
    sget v11, Lcoui/support/appcompat/R$styleable;->COUIToolbar_supportMaxButtonHeight:I

    invoke-virtual {v5, v11, v7}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v7

    iput v7, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mMaxButtonHeight:I

    .line 311
    sget v7, Lcoui/support/appcompat/R$styleable;->COUIToolbar_supportContentInsetStart:I

    .line 312
    const/high16 v11, -0x80000000

    invoke-virtual {v5, v7, v11}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelOffset(II)I

    move-result v7

    .line 314
    .local v7, "contentInsetStart":I
    sget v12, Lcoui/support/appcompat/R$styleable;->COUIToolbar_supportContentInsetEnd:I

    .line 315
    invoke-virtual {v5, v12, v11}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelOffset(II)I

    move-result v12

    .line 317
    .local v12, "contentInsetEnd":I
    sget v13, Lcoui/support/appcompat/R$styleable;->COUIToolbar_supportContentInsetLeft:I

    .line 318
    invoke-virtual {v5, v13, v4}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v13

    .line 319
    .local v13, "contentInsetLeft":I
    sget v14, Lcoui/support/appcompat/R$styleable;->COUIToolbar_supportContentInsetRight:I

    .line 320
    invoke-virtual {v5, v14, v4}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v14

    .line 322
    .local v14, "contentInsetRight":I
    iget-object v15, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mContentInsets:Lcom/coui/appcompat/util/COUIRtlSpacingHelper;

    invoke-virtual {v15, v13, v14}, Lcom/coui/appcompat/util/COUIRtlSpacingHelper;->setAbsolute(II)V

    .line 324
    if-ne v7, v11, :cond_7

    if-eq v12, v11, :cond_8

    .line 326
    :cond_7
    iget-object v11, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mContentInsets:Lcom/coui/appcompat/util/COUIRtlSpacingHelper;

    invoke-virtual {v11, v7, v12}, Lcom/coui/appcompat/util/COUIRtlSpacingHelper;->setRelative(II)V

    .line 329
    :cond_8
    sget v11, Lcoui/support/appcompat/R$styleable;->COUIToolbar_supportCollapseIcon:I

    invoke-virtual {v5, v11}, Landroidx/appcompat/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    iput-object v11, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mCollapseIcon:Landroid/graphics/drawable/Drawable;

    .line 330
    sget v11, Lcoui/support/appcompat/R$styleable;->COUIToolbar_supportCollapseContentDescription:I

    invoke-virtual {v5, v11}, Landroidx/appcompat/widget/TintTypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    iput-object v11, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mCollapseDescription:Ljava/lang/CharSequence;

    .line 332
    sget v11, Lcoui/support/appcompat/R$styleable;->COUIToolbar_supportTitle:I

    invoke-virtual {v5, v11}, Landroidx/appcompat/widget/TintTypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    .line 333
    .local v11, "title":Ljava/lang/CharSequence;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_9

    .line 334
    invoke-virtual {v0, v11}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 337
    :cond_9
    sget v15, Lcoui/support/appcompat/R$styleable;->COUIToolbar_supportSubtitle:I

    invoke-virtual {v5, v15}, Landroidx/appcompat/widget/TintTypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v15

    .line 338
    .local v15, "subtitle":Ljava/lang/CharSequence;
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_a

    .line 339
    invoke-virtual {v0, v15}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 342
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->getContext()Landroid/content/Context;

    move-result-object v3

    iput-object v3, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mPopupContext:Landroid/content/Context;

    .line 343
    sget v3, Lcoui/support/appcompat/R$styleable;->COUIToolbar_supportPopupTheme:I

    invoke-virtual {v5, v3, v4}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->setPopupTheme(I)V

    .line 345
    sget v3, Lcoui/support/appcompat/R$styleable;->COUIToolbar_supportNavigationIcon:I

    invoke-virtual {v5, v3}, Landroidx/appcompat/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 346
    .local v3, "navIcon":Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_b

    .line 347
    invoke-virtual {v0, v3}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 349
    :cond_b
    sget v4, Lcoui/support/appcompat/R$styleable;->COUIToolbar_supportNavigationContentDescription:I

    invoke-virtual {v5, v4}, Landroidx/appcompat/widget/TintTypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    .line 350
    .local v4, "navDesc":Ljava/lang/CharSequence;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_c

    .line 351
    invoke-virtual {v0, v4}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->setNavigationContentDescription(Ljava/lang/CharSequence;)V

    .line 355
    :cond_c
    sget v1, Lcoui/support/appcompat/R$styleable;->Toolbar_android_minHeight:I

    const/4 v2, 0x0

    invoke-virtual {v5, v1, v2}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mMinHeight:I

    .line 357
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 358
    .local v1, "displayMetrics":Landroid/util/DisplayMetrics;
    sget v2, Lcoui/support/appcompat/R$styleable;->COUIToolbar_minTitleTextSize:I

    invoke-virtual {v5, v2}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v2

    const/high16 v16, 0x41800000    # 16.0f

    if-eqz v2, :cond_d

    .line 359
    sget v2, Lcoui/support/appcompat/R$styleable;->COUIToolbar_minTitleTextSize:I

    move-object/from16 v18, v3

    .end local v3    # "navIcon":Landroid/graphics/drawable/Drawable;
    .local v18, "navIcon":Landroid/graphics/drawable/Drawable;
    iget v3, v1, Landroid/util/DisplayMetrics;->scaledDensity:F

    mul-float v3, v3, v16

    float-to-int v3, v3

    invoke-virtual {v5, v2, v3}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v2

    int-to-float v2, v2

    iput v2, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mTextMinSize:F

    goto :goto_1

    .line 361
    .end local v18    # "navIcon":Landroid/graphics/drawable/Drawable;
    .restart local v3    # "navIcon":Landroid/graphics/drawable/Drawable;
    :cond_d
    move-object/from16 v18, v3

    .end local v3    # "navIcon":Landroid/graphics/drawable/Drawable;
    .restart local v18    # "navIcon":Landroid/graphics/drawable/Drawable;
    iget v2, v1, Landroid/util/DisplayMetrics;->scaledDensity:F

    mul-float v2, v2, v16

    iput v2, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mTextMinSize:F

    .line 363
    :goto_1
    const/4 v2, 0x1

    new-array v3, v2, [I

    const v16, 0x1010095

    const/16 v17, 0x0

    aput v16, v3, v17

    .line 364
    .local v3, "textAttrs":[I
    iget v2, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mTitleTextAppearance:I

    move-object/from16 v19, v4

    move-object/from16 v4, p1

    .end local v4    # "navDesc":Ljava/lang/CharSequence;
    .local v19, "navDesc":Ljava/lang/CharSequence;
    invoke-virtual {v4, v2, v3}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 365
    .local v2, "typedArray":Landroid/content/res/TypedArray;
    if-eqz v2, :cond_e

    .line 366
    move-object/from16 v20, v3

    .end local v3    # "textAttrs":[I
    .local v20, "textAttrs":[I
    iget v3, v1, Landroid/util/DisplayMetrics;->scaledDensity:F

    const/high16 v16, 0x41c00000    # 24.0f

    mul-float v3, v3, v16

    float-to-int v3, v3

    move-object/from16 v21, v1

    const/4 v1, 0x0

    .end local v1    # "displayMetrics":Landroid/util/DisplayMetrics;
    .local v21, "displayMetrics":Landroid/util/DisplayMetrics;
    invoke-virtual {v2, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    int-to-float v1, v3

    iput v1, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mTextMaxSize:F

    .line 367
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_2

    .line 372
    .end local v20    # "textAttrs":[I
    .end local v21    # "displayMetrics":Landroid/util/DisplayMetrics;
    .restart local v1    # "displayMetrics":Landroid/util/DisplayMetrics;
    .restart local v3    # "textAttrs":[I
    :cond_e
    move-object/from16 v21, v1

    move-object/from16 v20, v3

    .end local v1    # "displayMetrics":Landroid/util/DisplayMetrics;
    .end local v3    # "textAttrs":[I
    .restart local v20    # "textAttrs":[I
    .restart local v21    # "displayMetrics":Landroid/util/DisplayMetrics;
    :goto_2
    iget v1, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mTitleType:I

    const/4 v3, 0x1

    if-ne v1, v3, :cond_f

    .line 373
    iget v1, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mTextMaxSize:F

    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->fontScale:F

    move-object/from16 v22, v2

    const/4 v2, 0x2

    .end local v2    # "typedArray":Landroid/content/res/TypedArray;
    .local v22, "typedArray":Landroid/content/res/TypedArray;
    invoke-static {v1, v3, v2}, Lcom/coui/appcompat/util/COUIChangeTextUtil;->getSuitableFontSize(FFI)F

    move-result v1

    iput v1, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mTextMaxSize:F

    .line 374
    iget v1, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mTextMinSize:F

    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->fontScale:F

    invoke-static {v1, v3, v2}, Lcom/coui/appcompat/util/COUIChangeTextUtil;->getSuitableFontSize(FFI)F

    move-result v1

    iput v1, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mTextMinSize:F

    goto :goto_3

    .line 376
    .end local v22    # "typedArray":Landroid/content/res/TypedArray;
    .restart local v2    # "typedArray":Landroid/content/res/TypedArray;
    :cond_f
    move-object/from16 v22, v2

    .end local v2    # "typedArray":Landroid/content/res/TypedArray;
    .restart local v22    # "typedArray":Landroid/content/res/TypedArray;
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcoui/support/appcompat/R$dimen;->toolbar_normal_menu_padding:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mToolbarNormalPadding:I

    .line 377
    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcoui/support/appcompat/R$dimen;->toolbar_overflow_menu_padding:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mToolbarOverFlowPadding:I

    .line 379
    sget v1, Lcoui/support/appcompat/R$styleable;->COUIToolbar_titleCenter:I

    invoke-virtual {v5, v1}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 380
    sget v1, Lcoui/support/appcompat/R$styleable;->COUIToolbar_titleCenter:I

    const/4 v2, 0x0

    invoke-virtual {v5, v1, v2}, Landroidx/appcompat/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mIsTitleCenterStyle:Z

    goto :goto_4

    .line 382
    :cond_10
    const/4 v2, 0x0

    :goto_4
    invoke-virtual {v0, v2}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->setWillNotDraw(Z)V

    .line 383
    invoke-virtual {v5}, Landroidx/appcompat/widget/TintTypedArray;->recycle()V

    .line 387
    return-void
.end method

.method static synthetic access$000(Lcom/coui/appcompat/widget/toolbar/COUIToolbar;)Landroidx/appcompat/widget/Toolbar$OnMenuItemClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/toolbar/COUIToolbar;

    .line 123
    iget-object v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mOnMenuItemClickListener:Landroidx/appcompat/widget/Toolbar$OnMenuItemClickListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/coui/appcompat/widget/toolbar/COUIToolbar;)V
    .locals 0
    .param p0, "x0"    # Lcom/coui/appcompat/widget/toolbar/COUIToolbar;

    .line 123
    invoke-direct {p0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->ensureCollapseButtonView()V

    return-void
.end method

.method static synthetic access$300(Lcom/coui/appcompat/widget/toolbar/COUIToolbar;)Landroid/widget/ImageButton;
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/toolbar/COUIToolbar;

    .line 123
    iget-object v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$400(Lcom/coui/appcompat/widget/toolbar/COUIToolbar;)I
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/toolbar/COUIToolbar;

    .line 123
    iget v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mButtonGravity:I

    return v0
.end method

.method static synthetic access$500(Lcom/coui/appcompat/widget/toolbar/COUIToolbar;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/coui/appcompat/widget/toolbar/COUIToolbar;
    .param p1, "x1"    # Z

    .line 123
    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->setChildVisibilityForExpandedActionView(Z)V

    return-void
.end method

.method private addCustomViewsWithGravity(Ljava/util/List;I)V
    .locals 7
    .param p2, "gravity"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation

    .line 2056
    .local p1, "views":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    move v0, v2

    .line 2057
    .local v0, "isRtl":Z
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->getChildCount()I

    move-result v2

    .line 2058
    .local v2, "childCount":I
    nop

    .line 2059
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v3

    .line 2058
    invoke-static {p2, v3}, Landroidx/core/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v3

    .line 2061
    .local v3, "absGrav":I
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 2063
    if-eqz v0, :cond_2

    .line 2064
    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_1
    if-ltz v1, :cond_4

    .line 2065
    invoke-virtual {p0, v1}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 2066
    .local v4, "child":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$LayoutParams;

    .line 2067
    .local v5, "lp":Lcom/coui/appcompat/widget/toolbar/COUIToolbar$LayoutParams;
    iget v6, v5, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$LayoutParams;->mViewType:I

    if-nez v6, :cond_1

    invoke-direct {p0, v4}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget v6, v5, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$LayoutParams;->gravity:I

    .line 2068
    invoke-direct {p0, v6}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->getChildHorizontalGravity(I)I

    move-result v6

    if-ne v6, v3, :cond_1

    .line 2069
    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2064
    .end local v4    # "child":Landroid/view/View;
    .end local v5    # "lp":Lcom/coui/appcompat/widget/toolbar/COUIToolbar$LayoutParams;
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 2073
    .end local v1    # "i":I
    :cond_2
    nop

    .restart local v1    # "i":I
    :goto_2
    if-ge v1, v2, :cond_4

    .line 2074
    invoke-virtual {p0, v1}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 2075
    .restart local v4    # "child":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$LayoutParams;

    .line 2076
    .restart local v5    # "lp":Lcom/coui/appcompat/widget/toolbar/COUIToolbar$LayoutParams;
    iget v6, v5, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$LayoutParams;->mViewType:I

    if-nez v6, :cond_3

    invoke-direct {p0, v4}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_3

    iget v6, v5, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$LayoutParams;->gravity:I

    .line 2077
    invoke-direct {p0, v6}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->getChildHorizontalGravity(I)I

    move-result v6

    if-ne v6, v3, :cond_3

    .line 2078
    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2073
    .end local v4    # "child":Landroid/view/View;
    .end local v5    # "lp":Lcom/coui/appcompat/widget/toolbar/COUIToolbar$LayoutParams;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 2082
    .end local v1    # "i":I
    :cond_4
    return-void
.end method

.method private addSystemView(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 1133
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1135
    .local v0, "vlp":Landroid/view/ViewGroup$LayoutParams;
    if-nez v0, :cond_0

    .line 1136
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->generateDefaultLayoutParams()Lcom/coui/appcompat/widget/toolbar/COUIToolbar$LayoutParams;

    move-result-object v1

    goto :goto_0

    .line 1137
    :cond_0
    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1138
    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/coui/appcompat/widget/toolbar/COUIToolbar$LayoutParams;

    move-result-object v1

    goto :goto_0

    .line 1140
    :cond_1
    move-object v1, v0

    check-cast v1, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$LayoutParams;

    .line 1142
    .local v1, "lp":Lcom/coui/appcompat/widget/toolbar/COUIToolbar$LayoutParams;
    :goto_0
    const/4 v2, 0x1

    iput v2, v1, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$LayoutParams;->mViewType:I

    .line 1143
    invoke-virtual {p0, p1, v1}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1144
    return-void
.end method

.method private calculateTitlePosition([I)V
    .locals 8
    .param p1, "position"    # [I

    .line 1627
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 1628
    .local v0, "isRtl":Z
    :goto_0
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcoui/support/appcompat/R$dimen;->coui_actionbar_menuitemview_item_spacing:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 1629
    .local v3, "padding":I
    iget-object v4, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mContentInsets:Lcom/coui/appcompat/util/COUIRtlSpacingHelper;

    invoke-virtual {v4}, Lcom/coui/appcompat/util/COUIRtlSpacingHelper;->getLeft()I

    move-result v4

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->getPaddingLeft()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    aput v4, p1, v1

    .line 1630
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->getMeasuredWidth()I

    move-result v4

    iget-object v5, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mContentInsets:Lcom/coui/appcompat/util/COUIRtlSpacingHelper;

    invoke-virtual {v5}, Lcom/coui/appcompat/util/COUIRtlSpacingHelper;->getRight()I

    move-result v5

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->getPaddingRight()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    sub-int/2addr v4, v5

    aput v4, p1, v2

    .line 1631
    iget-object v4, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    invoke-direct {p0, v4}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {v4}, Landroidx/appcompat/widget/ActionMenuView;->getChildCount()I

    move-result v4

    if-nez v4, :cond_1

    goto :goto_4

    .line 1634
    :cond_1
    const/4 v4, 0x0

    .line 1635
    .local v4, "menuStartUsed":I
    const/4 v5, 0x0

    .line 1636
    .local v5, "menuEndUsed":I
    iget-object v6, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {v6}, Landroidx/appcompat/widget/ActionMenuView;->getChildCount()I

    move-result v6

    if-ne v6, v2, :cond_2

    .line 1637
    iget-object v6, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {v6, v1}, Landroidx/appcompat/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    add-int/2addr v6, v3

    add-int/2addr v5, v6

    goto :goto_2

    .line 1639
    :cond_2
    iget-object v6, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {v6, v1}, Landroidx/appcompat/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    add-int/2addr v6, v3

    add-int/2addr v4, v6

    .line 1640
    move v6, v5

    move v5, v2

    .local v5, "i":I
    .local v6, "menuEndUsed":I
    :goto_1
    iget-object v7, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {v7}, Landroidx/appcompat/widget/ActionMenuView;->getChildCount()I

    move-result v7

    if-ge v5, v7, :cond_3

    .line 1641
    iget-object v7, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {v7, v5}, Landroidx/appcompat/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v7, v3

    add-int/2addr v6, v7

    .line 1640
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1645
    .end local v5    # "i":I
    :cond_3
    move v5, v6

    .end local v6    # "menuEndUsed":I
    .local v5, "menuEndUsed":I
    :goto_2
    if-eqz v0, :cond_4

    .line 1646
    aget v6, p1, v1

    add-int/2addr v6, v5

    aput v6, p1, v1

    .line 1647
    aget v1, p1, v2

    sub-int/2addr v1, v4

    aput v1, p1, v2

    goto :goto_3

    .line 1649
    :cond_4
    aget v6, p1, v1

    add-int/2addr v6, v4

    aput v6, p1, v1

    .line 1650
    aget v1, p1, v2

    sub-int/2addr v1, v5

    aput v1, p1, v2

    .line 1652
    :goto_3
    return-void

    .line 1632
    .end local v4    # "menuStartUsed":I
    .end local v5    # "menuEndUsed":I
    :cond_5
    :goto_4
    return-void
.end method

.method private changeToolbarPadding(Landroidx/appcompat/view/menu/MenuBuilder;Z)V
    .locals 4
    .param p1, "menu"    # Landroidx/appcompat/view/menu/MenuBuilder;
    .param p2, "isRtl"    # Z

    .line 1605
    if-nez p1, :cond_0

    .line 1606
    return-void

    .line 1608
    :cond_0
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1609
    if-eqz p2, :cond_1

    .line 1610
    iget v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mToolbarOverFlowPadding:I

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->getPaddingRight()I

    move-result v2

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->getPaddingBottom()I

    move-result v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->setPadding(IIII)V

    goto :goto_0

    .line 1612
    :cond_1
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->getPaddingTop()I

    move-result v1

    iget v2, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mToolbarOverFlowPadding:I

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->getPaddingBottom()I

    move-result v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->setPadding(IIII)V

    goto :goto_0

    .line 1615
    :cond_2
    if-eqz p2, :cond_3

    .line 1616
    iget v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mToolbarNormalPadding:I

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->getPaddingTop()I

    move-result v1

    iget v2, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mToolbarNormalPadding:I

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->getPaddingBottom()I

    move-result v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->setPadding(IIII)V

    goto :goto_0

    .line 1618
    :cond_3
    iget v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mToolbarNormalPadding:I

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->getPaddingTop()I

    move-result v1

    iget v2, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mToolbarNormalPadding:I

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->getPaddingBottom()I

    move-result v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->setPadding(IIII)V

    .line 1621
    :goto_0
    return-void
.end method

.method private ensureCollapseButtonView()V
    .locals 4

    .line 1114
    iget-object v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    if-nez v0, :cond_0

    .line 1115
    new-instance v0, Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    sget v3, Lcoui/support/appcompat/R$attr;->toolbarNavigationButtonStyle:I

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    .line 1117
    iget-object v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mCollapseIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1118
    iget-object v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mCollapseDescription:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1119
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->generateDefaultLayoutParams()Lcom/coui/appcompat/widget/toolbar/COUIToolbar$LayoutParams;

    move-result-object v0

    .line 1120
    .local v0, "lp":Lcom/coui/appcompat/widget/toolbar/COUIToolbar$LayoutParams;
    const v1, 0x800003

    iget v2, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mButtonGravity:I

    and-int/lit8 v2, v2, 0x70

    or-int/2addr v1, v2

    iput v1, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$LayoutParams;->gravity:I

    .line 1121
    const/4 v1, 0x2

    iput v1, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$LayoutParams;->mViewType:I

    .line 1122
    iget-object v1, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1123
    iget-object v1, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    new-instance v2, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$3;

    invoke-direct {v2, p0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$3;-><init>(Lcom/coui/appcompat/widget/toolbar/COUIToolbar;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1130
    .end local v0    # "lp":Lcom/coui/appcompat/widget/toolbar/COUIToolbar$LayoutParams;
    :cond_0
    return-void
.end method

.method private ensureLogoView()V
    .locals 2

    .line 570
    iget-object v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mLogoView:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 571
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mLogoView:Landroid/widget/ImageView;

    .line 573
    :cond_0
    return-void
.end method

.method private ensureMenu()V
    .locals 3

    .line 938
    invoke-direct {p0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->ensureMenuView()V

    .line 939
    iget-object v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuView;->peekMenu()Landroidx/appcompat/view/menu/MenuBuilder;

    move-result-object v0

    if-nez v0, :cond_1

    .line 941
    iget-object v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuView;->getMenu()Landroid/view/Menu;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/MenuBuilder;

    .line 942
    .local v0, "menu":Landroidx/appcompat/view/menu/MenuBuilder;
    iget-object v1, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mExpandedMenuPresenter:Lcom/coui/appcompat/widget/toolbar/COUIToolbar$ExpandedActionViewMenuPresenter;

    if-nez v1, :cond_0

    .line 943
    new-instance v1, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$ExpandedActionViewMenuPresenter;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$ExpandedActionViewMenuPresenter;-><init>(Lcom/coui/appcompat/widget/toolbar/COUIToolbar;Lcom/coui/appcompat/widget/toolbar/COUIToolbar$1;)V

    iput-object v1, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mExpandedMenuPresenter:Lcom/coui/appcompat/widget/toolbar/COUIToolbar$ExpandedActionViewMenuPresenter;

    .line 945
    :cond_0
    iget-object v1, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/ActionMenuView;->setExpandedActionViewsExclusive(Z)V

    .line 946
    iget-object v1, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mExpandedMenuPresenter:Lcom/coui/appcompat/widget/toolbar/COUIToolbar$ExpandedActionViewMenuPresenter;

    iget-object v2, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mPopupContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/view/menu/MenuBuilder;->addMenuPresenter(Landroidx/appcompat/view/menu/MenuPresenter;Landroid/content/Context;)V

    .line 948
    .end local v0    # "menu":Landroidx/appcompat/view/menu/MenuBuilder;
    :cond_1
    return-void
.end method

.method private ensureMenuView()V
    .locals 3

    .line 951
    iget-object v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    if-nez v0, :cond_1

    .line 954
    new-instance v0, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    .line 956
    iget-object v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    iget v1, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mPopupTheme:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ActionMenuView;->setPopupTheme(I)V

    .line 957
    iget-object v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    iget-object v1, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mMenuViewItemClickListener:Landroidx/appcompat/widget/ActionMenuView$OnMenuItemClickListener;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ActionMenuView;->setOnMenuItemClickListener(Landroidx/appcompat/widget/ActionMenuView$OnMenuItemClickListener;)V

    .line 958
    iget-object v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    iget-object v1, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mActionMenuPresenterCallback:Landroidx/appcompat/view/menu/MenuPresenter$Callback;

    iget-object v2, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mMenuBuilderCallback:Landroidx/appcompat/view/menu/MenuBuilder$Callback;

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/widget/ActionMenuView;->setMenuCallbacks(Landroidx/appcompat/view/menu/MenuPresenter$Callback;Landroidx/appcompat/view/menu/MenuBuilder$Callback;)V

    .line 959
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->generateDefaultLayoutParams()Lcom/coui/appcompat/widget/toolbar/COUIToolbar$LayoutParams;

    move-result-object v0

    .line 962
    .local v0, "lp":Lcom/coui/appcompat/widget/toolbar/COUIToolbar$LayoutParams;
    iget-boolean v1, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mIsTitleCenterStyle:Z

    if-eqz v1, :cond_0

    .line 963
    const/4 v1, -0x1

    iput v1, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$LayoutParams;->width:I

    goto :goto_0

    .line 965
    :cond_0
    const/4 v1, -0x2

    iput v1, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$LayoutParams;->width:I

    .line 968
    :goto_0
    const v1, 0x800005

    iget v2, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mButtonGravity:I

    and-int/lit8 v2, v2, 0x70

    or-int/2addr v1, v2

    iput v1, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$LayoutParams;->gravity:I

    .line 969
    iget-object v1, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/ActionMenuView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 970
    iget-object v1, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    invoke-direct {p0, v1}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->addSystemView(Landroid/view/View;)V

    .line 972
    .end local v0    # "lp":Lcom/coui/appcompat/widget/toolbar/COUIToolbar$LayoutParams;
    :cond_1
    return-void
.end method

.method private ensureNavButtonView()V
    .locals 4

    .line 1103
    iget-object v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mNavButtonView:Landroid/widget/ImageButton;

    if-nez v0, :cond_0

    .line 1104
    new-instance v0, Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    sget v3, Lcoui/support/appcompat/R$attr;->toolbarNavigationButtonStyle:I

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mNavButtonView:Landroid/widget/ImageButton;

    .line 1106
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->generateDefaultLayoutParams()Lcom/coui/appcompat/widget/toolbar/COUIToolbar$LayoutParams;

    move-result-object v0

    .line 1107
    .local v0, "lp":Lcom/coui/appcompat/widget/toolbar/COUIToolbar$LayoutParams;
    const v1, 0x800003

    iget v2, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mButtonGravity:I

    and-int/lit8 v2, v2, 0x70

    or-int/2addr v1, v2

    iput v1, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$LayoutParams;->gravity:I

    .line 1108
    iget-object v1, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1109
    iget-object v1, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mNavButtonView:Landroid/widget/ImageButton;

    sget v2, Lcoui/support/appcompat/R$drawable;->coui_toolbar_menu_bg:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 1111
    .end local v0    # "lp":Lcom/coui/appcompat/widget/toolbar/COUIToolbar$LayoutParams;
    :cond_0
    return-void
.end method

.method private getChildHorizontalGravity(I)I
    .locals 6
    .param p1, "gravity"    # I

    .line 2085
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    .line 2086
    .local v0, "ld":I
    invoke-static {p1, v0}, Landroidx/core/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v1

    .line 2087
    .local v1, "absGrav":I
    and-int/lit8 v2, v1, 0x7

    .line 2088
    .local v2, "hGrav":I
    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    const/4 v4, 0x3

    if-eq v2, v4, :cond_1

    const/4 v5, 0x5

    if-eq v2, v5, :cond_1

    .line 2094
    if-ne v0, v3, :cond_0

    move v4, v5

    nop

    :cond_0
    return v4

    .line 2092
    :cond_1
    return v2
.end method

.method private getChildTop(Landroid/view/View;I)I
    .locals 11
    .param p1, "child"    # Landroid/view/View;
    .param p2, "alignmentHeight"    # I

    .line 2005
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$LayoutParams;

    .line 2006
    .local v0, "lp":Lcom/coui/appcompat/widget/toolbar/COUIToolbar$LayoutParams;
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 2007
    .local v1, "childHeight":I
    const/4 v2, 0x0

    if-lez p2, :cond_0

    sub-int v3, v1, p2

    div-int/lit8 v3, v3, 0x2

    goto :goto_0

    :cond_0
    move v3, v2

    .line 2008
    .local v3, "alignmentOffset":I
    :goto_0
    iget v4, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$LayoutParams;->gravity:I

    invoke-direct {p0, v4}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->getChildVerticalGravity(I)I

    move-result v4

    const/16 v5, 0x30

    if-eq v4, v5, :cond_4

    const/16 v5, 0x50

    if-eq v4, v5, :cond_3

    .line 2018
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->getPaddingTop()I

    move-result v4

    .line 2019
    .local v4, "paddingTop":I
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->getPaddingBottom()I

    move-result v5

    .line 2020
    .local v5, "paddingBottom":I
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->getHeight()I

    move-result v6

    .line 2021
    .local v6, "height":I
    sub-int v7, v6, v4

    sub-int/2addr v7, v5

    .line 2022
    .local v7, "space":I
    sub-int v8, v7, v1

    div-int/lit8 v8, v8, 0x2

    .line 2023
    .local v8, "spaceAbove":I
    iget v9, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$LayoutParams;->topMargin:I

    if-ge v8, v9, :cond_1

    .line 2024
    iget v8, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$LayoutParams;->topMargin:I

    goto :goto_1

    .line 2026
    :cond_1
    sub-int v9, v6, v5

    sub-int/2addr v9, v1

    sub-int/2addr v9, v8

    sub-int/2addr v9, v4

    .line 2028
    .local v9, "spaceBelow":I
    iget v10, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$LayoutParams;->bottomMargin:I

    if-ge v9, v10, :cond_2

    .line 2029
    iget v10, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$LayoutParams;->bottomMargin:I

    sub-int/2addr v10, v9

    sub-int v10, v8, v10

    invoke-static {v2, v10}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 2032
    .end local v9    # "spaceBelow":I
    :cond_2
    :goto_1
    add-int v2, v4, v8

    return v2

    .line 2013
    .end local v4    # "paddingTop":I
    .end local v5    # "paddingBottom":I
    .end local v6    # "height":I
    .end local v7    # "space":I
    .end local v8    # "spaceAbove":I
    :cond_3
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v2, v4

    sub-int/2addr v2, v1

    iget v4, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$LayoutParams;->bottomMargin:I

    sub-int/2addr v2, v4

    sub-int/2addr v2, v3

    return v2

    .line 2010
    :cond_4
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->getPaddingTop()I

    move-result v2

    sub-int/2addr v2, v3

    return v2
.end method

.method private getChildVerticalGravity(I)I
    .locals 2
    .param p1, "gravity"    # I

    .line 2037
    and-int/lit8 v0, p1, 0x70

    .line 2038
    .local v0, "vgrav":I
    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    const/16 v1, 0x30

    if-eq v0, v1, :cond_0

    const/16 v1, 0x50

    if-eq v0, v1, :cond_0

    .line 2044
    iget v1, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mGravity:I

    and-int/lit8 v1, v1, 0x70

    return v1

    .line 2042
    :cond_0
    return v0
.end method

.method private getHorizontalMargins(Landroid/view/View;)I
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 2103
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 2104
    .local v0, "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-static {v0}, Landroidx/core/view/MarginLayoutParamsCompat;->getMarginStart(Landroid/view/ViewGroup$MarginLayoutParams;)I

    move-result v1

    .line 2105
    invoke-static {v0}, Landroidx/core/view/MarginLayoutParamsCompat;->getMarginEnd(Landroid/view/ViewGroup$MarginLayoutParams;)I

    move-result v2

    add-int/2addr v1, v2

    return v1
.end method

.method private getMinimumHeightCompat()I
    .locals 2

    .line 2199
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 2201
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v0

    return v0

    .line 2204
    :cond_0
    iget v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mMinHeight:I

    return v0
.end method

.method private getVerticalMargins(Landroid/view/View;)I
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 2109
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 2110
    .local v0, "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v1, v2

    return v1
.end method

.method private getViewListMeasuredWidth(Ljava/util/List;[I)I
    .locals 13
    .param p2, "collapsingMargins"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;[I)I"
        }
    .end annotation

    .line 1960
    .local p1, "views":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    const/4 v0, 0x0

    aget v1, p2, v0

    .line 1961
    .local v1, "collapseLeft":I
    const/4 v2, 0x1

    aget v2, p2, v2

    .line 1962
    .local v2, "collapseRight":I
    const/4 v3, 0x0

    .line 1963
    .local v3, "width":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    .line 1964
    .local v4, "count":I
    move v5, v3

    move v3, v2

    move v2, v1

    move v1, v0

    .local v1, "i":I
    .local v2, "collapseLeft":I
    .local v3, "collapseRight":I
    .local v5, "width":I
    :goto_0
    if-ge v1, v4, :cond_0

    .line 1965
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    .line 1966
    .local v6, "v":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$LayoutParams;

    .line 1967
    .local v7, "lp":Lcom/coui/appcompat/widget/toolbar/COUIToolbar$LayoutParams;
    iget v8, v7, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$LayoutParams;->leftMargin:I

    sub-int/2addr v8, v2

    .line 1968
    .local v8, "l":I
    iget v9, v7, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$LayoutParams;->rightMargin:I

    sub-int/2addr v9, v3

    .line 1969
    .local v9, "r":I
    invoke-static {v0, v8}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 1970
    .local v10, "leftMargin":I
    invoke-static {v0, v9}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 1971
    .local v11, "rightMargin":I
    neg-int v12, v8

    invoke-static {v0, v12}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1972
    neg-int v12, v9

    invoke-static {v0, v12}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1973
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v12

    add-int/2addr v12, v10

    add-int/2addr v12, v11

    add-int/2addr v5, v12

    .line 1964
    .end local v6    # "v":Landroid/view/View;
    .end local v7    # "lp":Lcom/coui/appcompat/widget/toolbar/COUIToolbar$LayoutParams;
    .end local v8    # "l":I
    .end local v9    # "r":I
    .end local v10    # "leftMargin":I
    .end local v11    # "rightMargin":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1975
    .end local v1    # "i":I
    :cond_0
    return v5
.end method

.method private static isCustomView(Landroid/view/View;)Z
    .locals 1
    .param p0, "child"    # Landroid/view/View;

    .line 2150
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$LayoutParams;

    iget v0, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$LayoutParams;->mViewType:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private layoutChildLeft(Landroid/view/View;I[II)I
    .locals 6
    .param p1, "child"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "collapsingMargins"    # [I
    .param p4, "alignmentHeight"    # I

    .line 1980
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$LayoutParams;

    .line 1981
    .local v0, "lp":Lcom/coui/appcompat/widget/toolbar/COUIToolbar$LayoutParams;
    iget v1, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$LayoutParams;->leftMargin:I

    const/4 v2, 0x0

    aget v3, p3, v2

    sub-int/2addr v1, v3

    .line 1982
    .local v1, "l":I
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/2addr p2, v3

    .line 1983
    neg-int v3, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    aput v3, p3, v2

    .line 1984
    invoke-direct {p0, p1, p4}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->getChildTop(Landroid/view/View;I)I

    move-result v2

    .line 1985
    .local v2, "top":I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    .line 1986
    .local v3, "childWidth":I
    add-int v4, p2, v3

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v5, v2

    invoke-virtual {p1, p2, v2, v4, v5}, Landroid/view/View;->layout(IIII)V

    .line 1987
    iget v4, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$LayoutParams;->rightMargin:I

    add-int/2addr v4, v3

    add-int/2addr p2, v4

    .line 1988
    return p2
.end method

.method private layoutChildRight(Landroid/view/View;I[II)I
    .locals 6
    .param p1, "child"    # Landroid/view/View;
    .param p2, "right"    # I
    .param p3, "collapsingMargins"    # [I
    .param p4, "alignmentHeight"    # I

    .line 1993
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$LayoutParams;

    .line 1994
    .local v0, "lp":Lcom/coui/appcompat/widget/toolbar/COUIToolbar$LayoutParams;
    iget v1, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$LayoutParams;->rightMargin:I

    const/4 v2, 0x1

    aget v3, p3, v2

    sub-int/2addr v1, v3

    .line 1995
    .local v1, "r":I
    const/4 v3, 0x0

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v4

    sub-int/2addr p2, v4

    .line 1996
    neg-int v4, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    aput v3, p3, v2

    .line 1997
    invoke-direct {p0, p1, p4}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->getChildTop(Landroid/view/View;I)I

    move-result v2

    .line 1998
    .local v2, "top":I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    .line 1999
    .local v3, "childWidth":I
    sub-int v4, p2, v3

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v5, v2

    invoke-virtual {p1, v4, v2, p2, v5}, Landroid/view/View;->layout(IIII)V

    .line 2000
    iget v4, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$LayoutParams;->leftMargin:I

    add-int/2addr v4, v3

    sub-int/2addr p2, v4

    .line 2001
    return p2
.end method

.method private measureChildCollapseMargins(Landroid/view/View;IIII[I)I
    .locals 16
    .param p1, "child"    # Landroid/view/View;
    .param p2, "parentWidthMeasureSpec"    # I
    .param p3, "widthUsed"    # I
    .param p4, "parentHeightMeasureSpec"    # I
    .param p5, "heightUsed"    # I
    .param p6, "collapsingMargins"    # [I

    .line 1234
    move/from16 v0, p2

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1236
    .local v1, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    const/4 v3, 0x0

    aget v4, p6, v3

    sub-int/2addr v2, v4

    .line 1237
    .local v2, "leftDiff":I
    iget v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    const/4 v5, 0x1

    aget v6, p6, v5

    sub-int/2addr v4, v6

    .line 1238
    .local v4, "rightDiff":I
    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 1239
    .local v6, "leftMargin":I
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 1240
    .local v7, "rightMargin":I
    add-int v8, v6, v7

    .line 1241
    .local v8, "hMargins":I
    neg-int v9, v2

    invoke-static {v3, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    aput v9, p6, v3

    .line 1242
    neg-int v9, v4

    invoke-static {v3, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    aput v9, p6, v5

    .line 1247
    const/4 v9, 0x0

    .line 1248
    .local v9, "measureSearch":Z
    instance-of v10, v1, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$LayoutParams;

    if-eqz v10, :cond_2

    .line 1249
    move-object v10, v1

    check-cast v10, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$LayoutParams;

    iget-boolean v10, v10, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$LayoutParams;->mTypeSearch:Z

    if-eqz v10, :cond_0

    move-object/from16 v10, p0

    iget-boolean v11, v10, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mHasSearchViewFlag:Z

    if-eqz v11, :cond_1

    move v3, v5

    goto :goto_0

    :cond_0
    move-object/from16 v10, p0

    :cond_1
    :goto_0
    move v9, v3

    goto :goto_1

    .line 1251
    :cond_2
    move-object/from16 v10, p0

    :goto_1
    if-eqz v9, :cond_3

    .line 1252
    nop

    .line 1253
    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->getContentInsetStart()I

    move-result v3

    add-int/2addr v3, v8

    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->getContentInsetStart()I

    move-result v5

    add-int/2addr v3, v5

    iget v5, v1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 1252
    invoke-static {v0, v3, v5}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->getChildMeasureSpec(III)I

    move-result v3

    goto :goto_2

    .line 1256
    :cond_3
    nop

    .line 1257
    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->getPaddingLeft()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->getPaddingRight()I

    move-result v5

    add-int/2addr v3, v5

    add-int/2addr v3, v8

    add-int v3, v3, p3

    iget v11, v1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 1256
    invoke-static {v0, v3, v11}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->getChildMeasureSpec(III)I

    move-result v3

    .line 1265
    .local v3, "childWidthMeasureSpec":I
    :goto_2
    nop

    .line 1266
    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->getPaddingTop()I

    move-result v11

    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->getPaddingBottom()I

    move-result v12

    add-int/2addr v11, v12

    iget v12, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v11, v12

    iget v12, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v11, v12

    add-int v11, v11, p5

    iget v13, v1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 1265
    move/from16 v14, p4

    invoke-static {v14, v11, v13}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->getChildMeasureSpec(III)I

    move-result v11

    .line 1269
    .local v11, "childHeightMeasureSpec":I
    move-object/from16 v13, p1

    invoke-virtual {v13, v3, v11}, Landroid/view/View;->measure(II)V

    .line 1272
    if-eqz v9, :cond_4

    .line 1273
    return v8

    .line 1276
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    add-int/2addr v15, v8

    return v15
.end method

.method private measureChildConstrained(Landroid/view/View;IIIII)V
    .locals 6
    .param p1, "child"    # Landroid/view/View;
    .param p2, "parentWidthSpec"    # I
    .param p3, "widthUsed"    # I
    .param p4, "parentHeightSpec"    # I
    .param p5, "heightUsed"    # I
    .param p6, "heightConstraint"    # I

    .line 1209
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1211
    .local v0, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    nop

    .line 1212
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v1, v2

    add-int/2addr v1, p3

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 1211
    invoke-static {p2, v1, v2}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->getChildMeasureSpec(III)I

    move-result v1

    .line 1214
    .local v1, "childWidthSpec":I
    nop

    .line 1215
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->getPaddingBottom()I

    move-result v3

    add-int/2addr v2, v3

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v2, v3

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v2, v3

    add-int/2addr v2, p5

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 1214
    invoke-static {p4, v2, v3}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->getChildMeasureSpec(III)I

    move-result v2

    .line 1218
    .local v2, "childHeightSpec":I
    invoke-static {v2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 1219
    .local v3, "childHeightMode":I
    const/high16 v4, 0x40000000    # 2.0f

    if-eq v3, v4, :cond_1

    if-ltz p6, :cond_1

    .line 1220
    if-eqz v3, :cond_0

    .line 1221
    invoke-static {v2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    invoke-static {v5, p6}, Ljava/lang/Math;->min(II)I

    move-result v5

    goto :goto_0

    :cond_0
    move v5, p6

    .line 1223
    .local v5, "size":I
    :goto_0
    invoke-static {v5, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 1225
    .end local v5    # "size":I
    :cond_1
    invoke-virtual {p1, v1, v2}, Landroid/view/View;->measure(II)V

    .line 1226
    return-void
.end method

.method private postShowOverflowMenu()V
    .locals 1

    .line 1147
    iget-object v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mShowOverflowMenuRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1148
    iget-object v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mShowOverflowMenuRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->post(Ljava/lang/Runnable;)Z

    .line 1149
    return-void
.end method

.method private setChildVisibilityForExpandedActionView(Z)V
    .locals 7
    .param p1, "expand"    # Z

    .line 2154
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->getChildCount()I

    move-result v0

    .line 2155
    .local v0, "childCount":I
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 2156
    invoke-virtual {p0, v2}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 2157
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$LayoutParams;

    .line 2158
    .local v4, "lp":Lcom/coui/appcompat/widget/toolbar/COUIToolbar$LayoutParams;
    iget v5, v4, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$LayoutParams;->mViewType:I

    const/4 v6, 0x2

    if-eq v5, v6, :cond_1

    iget-object v5, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    if-eq v3, v5, :cond_1

    .line 2159
    if-eqz p1, :cond_0

    const/16 v5, 0x8

    goto :goto_1

    :cond_0
    move v5, v1

    :goto_1
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2155
    .end local v3    # "child":Landroid/view/View;
    .end local v4    # "lp":Lcom/coui/appcompat/widget/toolbar/COUIToolbar$LayoutParams;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2162
    .end local v2    # "i":I
    :cond_2
    return-void
.end method

.method private shouldCollapse()Z
    .locals 5

    .line 1283
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mCollapsible:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1285
    :cond_0
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->getChildCount()I

    move-result v0

    .line 1286
    .local v0, "childCount":I
    move v2, v1

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 1287
    invoke-virtual {p0, v2}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1288
    .local v3, "child":Landroid/view/View;
    invoke-direct {p0, v3}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    if-lez v4, :cond_1

    .line 1289
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    if-lez v4, :cond_1

    .line 1290
    return v1

    .line 1286
    .end local v3    # "child":Landroid/view/View;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1293
    .end local v2    # "i":I
    :cond_2
    const/4 v1, 0x1

    return v1
.end method

.method private shouldLayout(Landroid/view/View;)Z
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 2099
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-ne v0, p0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private updateChildVisibilityForExpandedActionView(Landroid/view/View;)V
    .locals 3
    .param p1, "child"    # Landroid/view/View;

    .line 2165
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$LayoutParams;

    .line 2166
    .local v0, "lp":Lcom/coui/appcompat/widget/toolbar/COUIToolbar$LayoutParams;
    iget v1, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$LayoutParams;->mViewType:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    if-eq p1, v1, :cond_1

    .line 2167
    iget-object v1, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mExpandedActionView:Landroid/view/View;

    if-eqz v1, :cond_0

    const/16 v1, 0x8

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2169
    :cond_1
    return-void
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .line 2138
    invoke-super {p0, p1}, Landroidx/appcompat/widget/Toolbar;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of v0, p1, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$LayoutParams;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public collapseActionView()V
    .locals 1

    .line 585
    iget-object v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mExpandedMenuPresenter:Lcom/coui/appcompat/widget/toolbar/COUIToolbar$ExpandedActionViewMenuPresenter;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mExpandedMenuPresenter:Lcom/coui/appcompat/widget/toolbar/COUIToolbar$ExpandedActionViewMenuPresenter;

    iget-object v0, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Landroidx/appcompat/view/menu/MenuItemImpl;

    .line 587
    .local v0, "item":Landroidx/appcompat/view/menu/MenuItemImpl;
    :goto_0
    if-eqz v0, :cond_1

    .line 588
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuItemImpl;->collapseActionView()Z

    .line 590
    :cond_1
    return-void
.end method

.method public dismissPopupMenus()V
    .locals 1

    .line 491
    iget-object v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    if-eqz v0, :cond_0

    .line 492
    iget-object v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuView;->dismissPopupMenus()V

    .line 494
    :cond_0
    return-void
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 123
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->generateDefaultLayoutParams()Lcom/coui/appcompat/widget/toolbar/COUIToolbar$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroidx/appcompat/widget/Toolbar$LayoutParams;
    .locals 1

    .line 123
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->generateDefaultLayoutParams()Lcom/coui/appcompat/widget/toolbar/COUIToolbar$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Lcom/coui/appcompat/widget/toolbar/COUIToolbar$LayoutParams;
    .locals 2

    .line 2133
    new-instance v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 123
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/coui/appcompat/widget/toolbar/COUIToolbar$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 123
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/coui/appcompat/widget/toolbar/COUIToolbar$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroidx/appcompat/widget/Toolbar$LayoutParams;
    .locals 0

    .line 123
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/coui/appcompat/widget/toolbar/COUIToolbar$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroidx/appcompat/widget/Toolbar$LayoutParams;
    .locals 0

    .line 123
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/coui/appcompat/widget/toolbar/COUIToolbar$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lcom/coui/appcompat/widget/toolbar/COUIToolbar$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .line 2115
    new-instance v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$LayoutParams;

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/coui/appcompat/widget/toolbar/COUIToolbar$LayoutParams;
    .locals 2
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .line 2120
    instance-of v0, p1, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$LayoutParams;

    if-eqz v0, :cond_0

    .line 2121
    new-instance v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$LayoutParams;

    move-object v1, p1

    check-cast v1, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$LayoutParams;

    invoke-direct {v0, v1}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$LayoutParams;-><init>(Lcom/coui/appcompat/widget/toolbar/COUIToolbar$LayoutParams;)V

    return-object v0

    .line 2122
    :cond_0
    instance-of v0, p1, Landroidx/appcompat/app/ActionBar$LayoutParams;

    if-eqz v0, :cond_1

    .line 2123
    new-instance v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$LayoutParams;

    move-object v1, p1

    check-cast v1, Landroidx/appcompat/app/ActionBar$LayoutParams;

    invoke-direct {v0, v1}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$LayoutParams;-><init>(Landroidx/appcompat/app/ActionBar$LayoutParams;)V

    return-object v0

    .line 2124
    :cond_1
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_2

    .line 2125
    new-instance v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$LayoutParams;

    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, v1}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-object v0

    .line 2127
    :cond_2
    new-instance v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$LayoutParams;

    invoke-direct {v0, p1}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getContentInsetEnd()I
    .locals 1

    .line 1041
    iget-object v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mContentInsets:Lcom/coui/appcompat/util/COUIRtlSpacingHelper;

    invoke-virtual {v0}, Lcom/coui/appcompat/util/COUIRtlSpacingHelper;->getEnd()I

    move-result v0

    return v0
.end method

.method public getContentInsetLeft()I
    .locals 1

    .line 1080
    iget-object v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mContentInsets:Lcom/coui/appcompat/util/COUIRtlSpacingHelper;

    invoke-virtual {v0}, Lcom/coui/appcompat/util/COUIRtlSpacingHelper;->getLeft()I

    move-result v0

    return v0
.end method

.method public getContentInsetRight()I
    .locals 1

    .line 1099
    iget-object v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mContentInsets:Lcom/coui/appcompat/util/COUIRtlSpacingHelper;

    invoke-virtual {v0}, Lcom/coui/appcompat/util/COUIRtlSpacingHelper;->getRight()I

    move-result v0

    return v0
.end method

.method public getContentInsetStart()I
    .locals 1

    .line 1022
    iget-object v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mContentInsets:Lcom/coui/appcompat/util/COUIRtlSpacingHelper;

    invoke-virtual {v0}, Lcom/coui/appcompat/util/COUIRtlSpacingHelper;->getStart()I

    move-result v0

    return v0
.end method

.method public getIsTitleCenterStyle()Z
    .locals 1

    .line 2442
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mIsTitleCenterStyle:Z

    return v0
.end method

.method public getLogo()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 528
    iget-object v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mLogoView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mLogoView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getLogoDescription()Ljava/lang/CharSequence;
    .locals 1

    .line 566
    iget-object v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mLogoView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mLogoView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getMenu()Landroid/view/Menu;
    .locals 1

    .line 910
    invoke-direct {p0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->ensureMenu()V

    .line 911
    iget-object v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuView;->getMenu()Landroid/view/Menu;

    move-result-object v0

    return-object v0
.end method

.method public getNavigationContentDescription()Ljava/lang/CharSequence;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 802
    iget-object v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mNavButtonView:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getNavigationIcon()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 884
    iget-object v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mNavButtonView:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getOverflowIcon()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 933
    invoke-direct {p0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->ensureMenu()V

    .line 934
    iget-object v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuView;->getOverflowIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getPopupTheme()I
    .locals 1

    .line 455
    iget v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mPopupTheme:I

    return v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 1

    .line 673
    iget-object v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mSubtitleText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 598
    iget-object v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mTitleText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public inflateMenu(I)V
    .locals 1
    .param p1, "resId"    # I

    .line 2143
    invoke-super {p0, p1}, Landroidx/appcompat/widget/Toolbar;->inflateMenu(I)V

    .line 2144
    iget-object v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    instance-of v0, v0, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;

    if-eqz v0, :cond_0

    .line 2145
    iget-object v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    check-cast v0, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;->clearRedDotInfo()V

    .line 2147
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 1153
    invoke-super {p0}, Landroidx/appcompat/widget/Toolbar;->onDetachedFromWindow()V

    .line 1154
    iget-object v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mShowOverflowMenuRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1155
    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 1188
    invoke-static {p1}, Landroidx/core/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v0

    .line 1189
    .local v0, "action":I
    const/4 v1, 0x0

    const/16 v2, 0x9

    if-ne v0, v2, :cond_0

    .line 1190
    iput-boolean v1, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mEatingHover:Z

    .line 1193
    :cond_0
    iget-boolean v3, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mEatingHover:Z

    const/4 v4, 0x1

    if-nez v3, :cond_1

    .line 1194
    invoke-super {p0, p1}, Landroidx/appcompat/widget/Toolbar;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    .line 1195
    .local v3, "handled":Z
    if-ne v0, v2, :cond_1

    if-nez v3, :cond_1

    .line 1196
    iput-boolean v4, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mEatingHover:Z

    .line 1200
    .end local v3    # "handled":Z
    :cond_1
    const/16 v2, 0xa

    if-eq v0, v2, :cond_2

    const/4 v2, 0x3

    if-ne v0, v2, :cond_3

    .line 1201
    :cond_2
    iput-boolean v1, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mEatingHover:Z

    .line 1204
    :cond_3
    return v4
.end method

.method protected onLayout(ZIIII)V
    .locals 40
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .line 1657
    move-object/from16 v0, p0

    invoke-static/range {p0 .. p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    .line 1658
    .local v1, "isRtl":Z
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->getWidth()I

    move-result v4

    .line 1659
    .local v4, "width":I
    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->getHeight()I

    move-result v5

    .line 1660
    .local v5, "height":I
    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->getPaddingLeft()I

    move-result v6

    .line 1661
    .local v6, "paddingLeft":I
    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->getPaddingRight()I

    move-result v7

    .line 1662
    .local v7, "paddingRight":I
    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->getPaddingTop()I

    move-result v8

    .line 1663
    .local v8, "paddingTop":I
    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->getPaddingBottom()I

    move-result v9

    .line 1664
    .local v9, "paddingBottom":I
    move v10, v6

    .line 1665
    .local v10, "left":I
    sub-int v11, v4, v7

    .line 1667
    .local v11, "right":I
    iget-object v12, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mTempMargins:[I

    .line 1668
    .local v12, "collapsingMargins":[I
    aput v3, v12, v2

    aput v3, v12, v3

    .line 1671
    invoke-direct/range {p0 .. p0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->getMinimumHeightCompat()I

    move-result v13

    .line 1673
    .local v13, "alignmentHeight":I
    iget-object v14, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-direct {v0, v14}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 1674
    if-eqz v1, :cond_1

    .line 1675
    iget-object v14, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-direct {v0, v14, v11, v12, v13}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->layoutChildRight(Landroid/view/View;I[II)I

    move-result v11

    goto :goto_1

    .line 1678
    :cond_1
    iget-object v14, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-direct {v0, v14, v10, v12, v13}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->layoutChildLeft(Landroid/view/View;I[II)I

    move-result v10

    .line 1683
    :cond_2
    :goto_1
    iget-object v14, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    invoke-direct {v0, v14}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 1684
    if-eqz v1, :cond_3

    .line 1685
    iget-object v14, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    invoke-direct {v0, v14, v11, v12, v13}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->layoutChildRight(Landroid/view/View;I[II)I

    move-result v11

    goto :goto_2

    .line 1688
    :cond_3
    iget-object v14, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    invoke-direct {v0, v14, v10, v12, v13}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->layoutChildLeft(Landroid/view/View;I[II)I

    move-result v10

    .line 1693
    :cond_4
    :goto_2
    iget-object v14, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    invoke-direct {v0, v14}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 1694
    if-eqz v1, :cond_5

    .line 1695
    iget-object v14, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    invoke-direct {v0, v14, v10, v12, v13}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->layoutChildLeft(Landroid/view/View;I[II)I

    move-result v10

    goto :goto_3

    .line 1698
    :cond_5
    iget-object v14, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    invoke-direct {v0, v14, v11, v12, v13}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->layoutChildRight(Landroid/view/View;I[II)I

    move-result v11

    .line 1703
    :cond_6
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->getContentInsetLeft()I

    move-result v14

    sub-int/2addr v14, v10

    invoke-static {v3, v14}, Ljava/lang/Math;->max(II)I

    move-result v14

    aput v14, v12, v3

    .line 1704
    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->getContentInsetRight()I

    move-result v14

    sub-int v15, v4, v7

    sub-int/2addr v15, v11

    sub-int/2addr v14, v15

    invoke-static {v3, v14}, Ljava/lang/Math;->max(II)I

    move-result v14

    aput v14, v12, v2

    .line 1705
    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->getContentInsetLeft()I

    move-result v14

    invoke-static {v10, v14}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 1706
    sub-int v14, v4, v7

    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->getContentInsetRight()I

    move-result v15

    sub-int/2addr v14, v15

    invoke-static {v11, v14}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 1708
    iget-object v14, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mExpandedActionView:Landroid/view/View;

    invoke-direct {v0, v14}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v14

    if-eqz v14, :cond_8

    .line 1709
    if-eqz v1, :cond_7

    .line 1710
    iget-object v14, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mExpandedActionView:Landroid/view/View;

    invoke-direct {v0, v14, v11, v12, v13}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->layoutChildRight(Landroid/view/View;I[II)I

    move-result v11

    goto :goto_4

    .line 1713
    :cond_7
    iget-object v14, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mExpandedActionView:Landroid/view/View;

    invoke-direct {v0, v14, v10, v12, v13}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->layoutChildLeft(Landroid/view/View;I[II)I

    move-result v10

    .line 1718
    :cond_8
    :goto_4
    iget-object v14, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mLogoView:Landroid/widget/ImageView;

    invoke-direct {v0, v14}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v14

    if-eqz v14, :cond_a

    .line 1719
    if-eqz v1, :cond_9

    .line 1720
    iget-object v14, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mLogoView:Landroid/widget/ImageView;

    invoke-direct {v0, v14, v11, v12, v13}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->layoutChildRight(Landroid/view/View;I[II)I

    move-result v11

    goto :goto_5

    .line 1723
    :cond_9
    iget-object v14, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mLogoView:Landroid/widget/ImageView;

    invoke-direct {v0, v14, v10, v12, v13}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->layoutChildLeft(Landroid/view/View;I[II)I

    move-result v10

    .line 1728
    :cond_a
    :goto_5
    iget-object v14, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-direct {v0, v14}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v14

    .line 1729
    .local v14, "layoutTitle":Z
    iget-object v15, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-direct {v0, v15}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v15

    .line 1730
    .local v15, "layoutSubtitle":Z
    const/16 v16, 0x0

    .line 1731
    .local v16, "titleHeight":I
    if-eqz v14, :cond_b

    .line 1732
    iget-object v2, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$LayoutParams;

    .line 1733
    .local v2, "lp":Lcom/coui/appcompat/widget/toolbar/COUIToolbar$LayoutParams;
    iget v3, v2, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$LayoutParams;->topMargin:I

    move/from16 v19, v7

    .end local v7    # "paddingRight":I
    .local v19, "paddingRight":I
    iget-object v7, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v3, v7

    iget v7, v2, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$LayoutParams;->bottomMargin:I

    add-int/2addr v3, v7

    add-int v16, v16, v3

    goto :goto_6

    .line 1735
    .end local v2    # "lp":Lcom/coui/appcompat/widget/toolbar/COUIToolbar$LayoutParams;
    .end local v19    # "paddingRight":I
    .restart local v7    # "paddingRight":I
    :cond_b
    move/from16 v19, v7

    .end local v7    # "paddingRight":I
    .restart local v19    # "paddingRight":I
    :goto_6
    if-eqz v15, :cond_c

    .line 1736
    iget-object v2, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$LayoutParams;

    .line 1737
    .restart local v2    # "lp":Lcom/coui/appcompat/widget/toolbar/COUIToolbar$LayoutParams;
    iget v3, v2, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$LayoutParams;->topMargin:I

    iget-object v7, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v3, v7

    iget v7, v2, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$LayoutParams;->bottomMargin:I

    add-int/2addr v3, v7

    add-int v16, v16, v3

    .line 1740
    .end local v2    # "lp":Lcom/coui/appcompat/widget/toolbar/COUIToolbar$LayoutParams;
    :cond_c
    if-nez v14, :cond_e

    if-eqz v15, :cond_d

    goto :goto_7

    .line 1887
    :cond_d
    move/from16 v24, v4

    move/from16 v29, v5

    move/from16 v23, v6

    move/from16 v31, v8

    move/from16 v32, v9

    move/from16 v27, v10

    move/from16 v26, v13

    goto/16 :goto_14

    .line 1742
    :cond_e
    :goto_7
    if-eqz v14, :cond_f

    iget-object v2, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mTitleTextView:Landroid/widget/TextView;

    goto :goto_8

    :cond_f
    iget-object v2, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mSubtitleTextView:Landroid/widget/TextView;

    .line 1743
    .local v2, "topChild":Landroid/view/View;
    :goto_8
    if-eqz v15, :cond_10

    iget-object v3, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mSubtitleTextView:Landroid/widget/TextView;

    goto :goto_9

    :cond_10
    iget-object v3, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mTitleTextView:Landroid/widget/TextView;

    .line 1744
    .local v3, "bottomChild":Landroid/view/View;
    :goto_9
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$LayoutParams;

    .line 1745
    .local v7, "toplp":Lcom/coui/appcompat/widget/toolbar/COUIToolbar$LayoutParams;
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v20

    move-object/from16 v21, v2

    .end local v2    # "topChild":Landroid/view/View;
    .local v21, "topChild":Landroid/view/View;
    move-object/from16 v2, v20

    check-cast v2, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$LayoutParams;

    .line 1746
    .local v2, "bottomlp":Lcom/coui/appcompat/widget/toolbar/COUIToolbar$LayoutParams;
    if-eqz v14, :cond_11

    move-object/from16 v22, v3

    .end local v3    # "bottomChild":Landroid/view/View;
    .local v22, "bottomChild":Landroid/view/View;
    iget-object v3, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v3

    if-gtz v3, :cond_12

    goto :goto_a

    .end local v22    # "bottomChild":Landroid/view/View;
    .restart local v3    # "bottomChild":Landroid/view/View;
    :cond_11
    move-object/from16 v22, v3

    .end local v3    # "bottomChild":Landroid/view/View;
    .restart local v22    # "bottomChild":Landroid/view/View;
    :goto_a
    if-eqz v15, :cond_13

    iget-object v3, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mSubtitleTextView:Landroid/widget/TextView;

    .line 1747
    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v3

    if-lez v3, :cond_13

    :cond_12
    const/4 v3, 0x1

    goto :goto_b

    :cond_13
    const/4 v3, 0x0

    .line 1749
    .local v3, "titleHasWidth":Z
    :goto_b
    move/from16 v23, v6

    .end local v6    # "paddingLeft":I
    .local v23, "paddingLeft":I
    iget v6, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mGravity:I

    and-int/lit8 v6, v6, 0x70

    move/from16 v24, v4

    .end local v4    # "width":I
    .local v24, "width":I
    const/16 v4, 0x30

    if-eq v6, v4, :cond_17

    const/16 v4, 0x50

    if-eq v6, v4, :cond_16

    .line 1755
    sub-int v4, v5, v8

    sub-int/2addr v4, v9

    .line 1756
    .local v4, "space":I
    sub-int v6, v4, v16

    div-int/lit8 v6, v6, 0x2

    .line 1757
    .local v6, "spaceAbove":I
    move/from16 v25, v4

    .end local v4    # "space":I
    .local v25, "space":I
    iget v4, v7, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$LayoutParams;->topMargin:I

    move/from16 v26, v13

    .end local v13    # "alignmentHeight":I
    .local v26, "alignmentHeight":I
    iget v13, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mTitleMarginTop:I

    add-int/2addr v4, v13

    if-ge v6, v4, :cond_14

    .line 1758
    iget v4, v7, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$LayoutParams;->topMargin:I

    iget v13, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mTitleMarginTop:I

    add-int v6, v4, v13

    .line 1767
    move/from16 v27, v10

    goto :goto_c

    .line 1760
    :cond_14
    sub-int v4, v5, v9

    sub-int v4, v4, v16

    sub-int/2addr v4, v6

    sub-int/2addr v4, v8

    .line 1762
    .local v4, "spaceBelow":I
    iget v13, v7, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$LayoutParams;->bottomMargin:I

    move/from16 v27, v10

    .end local v10    # "left":I
    .local v27, "left":I
    iget v10, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mTitleMarginBottom:I

    add-int/2addr v13, v10

    if-ge v4, v13, :cond_15

    .line 1763
    iget v10, v2, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$LayoutParams;->bottomMargin:I

    iget v13, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mTitleMarginBottom:I

    add-int/2addr v10, v13

    sub-int/2addr v10, v4

    sub-int v10, v6, v10

    const/4 v13, 0x0

    invoke-static {v13, v10}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 1767
    .end local v4    # "spaceBelow":I
    :cond_15
    :goto_c
    add-int v4, v8, v6

    .line 1768
    .local v4, "titleTop":I
    goto :goto_d

    .line 1770
    .end local v4    # "titleTop":I
    .end local v6    # "spaceAbove":I
    .end local v25    # "space":I
    .end local v26    # "alignmentHeight":I
    .end local v27    # "left":I
    .restart local v10    # "left":I
    .restart local v13    # "alignmentHeight":I
    :cond_16
    move/from16 v27, v10

    move/from16 v26, v13

    .end local v10    # "left":I
    .end local v13    # "alignmentHeight":I
    .restart local v26    # "alignmentHeight":I
    .restart local v27    # "left":I
    sub-int v4, v5, v9

    iget v6, v2, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$LayoutParams;->bottomMargin:I

    sub-int/2addr v4, v6

    iget v6, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mTitleMarginBottom:I

    sub-int/2addr v4, v6

    sub-int v4, v4, v16

    goto :goto_d

    .line 1751
    .end local v26    # "alignmentHeight":I
    .end local v27    # "left":I
    .restart local v10    # "left":I
    .restart local v13    # "alignmentHeight":I
    :cond_17
    move/from16 v27, v10

    move/from16 v26, v13

    .end local v10    # "left":I
    .end local v13    # "alignmentHeight":I
    .restart local v26    # "alignmentHeight":I
    .restart local v27    # "left":I
    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->getPaddingTop()I

    move-result v4

    iget v6, v7, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$LayoutParams;->topMargin:I

    add-int/2addr v4, v6

    iget v6, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mTitleMarginTop:I

    add-int/2addr v4, v6

    .line 1752
    .restart local v4    # "titleTop":I
    nop

    .line 1770
    :goto_d
    nop

    .line 1776
    iget-boolean v6, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mIsTitleCenterStyle:Z

    if-eqz v6, :cond_20

    .line 1777
    if-eqz v14, :cond_18

    iget-object v6, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v6

    goto :goto_e

    :cond_18
    const/4 v6, 0x0

    :goto_e
    if-eqz v15, :cond_19

    iget-object v10, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v10

    goto :goto_f

    :cond_19
    const/4 v10, 0x0

    :goto_f
    invoke-static {v6, v10}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 1778
    .local v6, "titleMaxWidth":I
    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->getWidth()I

    move-result v10

    iget-object v13, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mTitlePosition:[I

    const/16 v18, 0x0

    aget v13, v13, v18

    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->getWidth()I

    move-result v20

    move-object/from16 v28, v2

    .end local v2    # "bottomlp":Lcom/coui/appcompat/widget/toolbar/COUIToolbar$LayoutParams;
    .local v28, "bottomlp":Lcom/coui/appcompat/widget/toolbar/COUIToolbar$LayoutParams;
    iget-object v2, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mTitlePosition:[I

    const/16 v17, 0x1

    aget v2, v2, v17

    sub-int v2, v20, v2

    invoke-static {v13, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v10, v2

    .line 1779
    .local v10, "canTitleCenterWidth":I
    iget-object v2, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mTitlePosition:[I

    aget v2, v2, v17

    iget-object v13, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mTitlePosition:[I

    const/16 v18, 0x0

    aget v13, v13, v18

    sub-int/2addr v2, v13

    .line 1780
    .local v2, "availableWidth":I
    if-eqz v14, :cond_1c

    .line 1781
    iget-object v13, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v13}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$LayoutParams;

    .line 1782
    .local v13, "lp":Lcom/coui/appcompat/widget/toolbar/COUIToolbar$LayoutParams;
    move/from16 v29, v5

    .end local v5    # "height":I
    .local v29, "height":I
    iget-object v5, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v5

    .line 1783
    .local v5, "titleWidth":I
    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->getWidth()I

    move-result v20

    sub-int v20, v20, v5

    div-int/lit8 v20, v20, 0x2

    .line 1784
    .local v20, "titleLeft":I
    add-int v25, v20, v5

    .line 1785
    .local v25, "titleRight":I
    move-object/from16 v30, v7

    .end local v7    # "toplp":Lcom/coui/appcompat/widget/toolbar/COUIToolbar$LayoutParams;
    .local v30, "toplp":Lcom/coui/appcompat/widget/toolbar/COUIToolbar$LayoutParams;
    iget-object v7, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v7, v4

    .line 1788
    .local v7, "titleBottom":I
    if-ge v10, v6, :cond_1b

    .line 1789
    if-lt v5, v2, :cond_1a

    .line 1790
    move/from16 v31, v8

    .end local v8    # "paddingTop":I
    .local v31, "paddingTop":I
    iget-object v8, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mTitlePosition:[I

    const/16 v18, 0x0

    aget v20, v8, v18

    .line 1791
    iget-object v8, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mTitlePosition:[I

    const/16 v17, 0x1

    aget v25, v8, v17

    .line 1799
    move/from16 v32, v9

    .end local v20    # "titleLeft":I
    .end local v25    # "titleRight":I
    .local v8, "titleLeft":I
    .local v9, "titleRight":I
    .local v32, "paddingBottom":I
    :goto_10
    move/from16 v8, v20

    move/from16 v9, v25

    goto :goto_11

    .line 1793
    .end local v31    # "paddingTop":I
    .end local v32    # "paddingBottom":I
    .local v8, "paddingTop":I
    .local v9, "paddingBottom":I
    .restart local v20    # "titleLeft":I
    .restart local v25    # "titleRight":I
    :cond_1a
    move/from16 v31, v8

    const/16 v18, 0x0

    .end local v8    # "paddingTop":I
    .restart local v31    # "paddingTop":I
    sub-int v8, v2, v5

    div-int/lit8 v8, v8, 0x2

    .line 1794
    .local v8, "centerOffset":I
    move/from16 v32, v9

    .end local v9    # "paddingBottom":I
    .restart local v32    # "paddingBottom":I
    iget-object v9, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mTitlePosition:[I

    aget v9, v9, v18

    add-int v20, v9, v8

    .line 1795
    add-int v25, v20, v5

    goto :goto_10

    .line 1799
    .end local v31    # "paddingTop":I
    .end local v32    # "paddingBottom":I
    .local v8, "paddingTop":I
    .restart local v9    # "paddingBottom":I
    :cond_1b
    move/from16 v31, v8

    move/from16 v32, v9

    move/from16 v8, v20

    move/from16 v9, v25

    .end local v20    # "titleLeft":I
    .end local v25    # "titleRight":I
    .local v8, "titleLeft":I
    .local v9, "titleRight":I
    .restart local v31    # "paddingTop":I
    .restart local v32    # "paddingBottom":I
    :goto_11
    move/from16 v33, v5

    .end local v5    # "titleWidth":I
    .local v33, "titleWidth":I
    iget-object v5, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v8, v4, v9, v7}, Landroid/widget/TextView;->layout(IIII)V

    .line 1800
    iget v5, v13, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$LayoutParams;->bottomMargin:I

    add-int v4, v7, v5

    goto :goto_12

    .line 1802
    .end local v13    # "lp":Lcom/coui/appcompat/widget/toolbar/COUIToolbar$LayoutParams;
    .end local v29    # "height":I
    .end local v30    # "toplp":Lcom/coui/appcompat/widget/toolbar/COUIToolbar$LayoutParams;
    .end local v31    # "paddingTop":I
    .end local v32    # "paddingBottom":I
    .end local v33    # "titleWidth":I
    .local v5, "height":I
    .local v7, "toplp":Lcom/coui/appcompat/widget/toolbar/COUIToolbar$LayoutParams;
    .local v8, "paddingTop":I
    .local v9, "paddingBottom":I
    :cond_1c
    move/from16 v29, v5

    move-object/from16 v30, v7

    move/from16 v31, v8

    move/from16 v32, v9

    .end local v5    # "height":I
    .end local v7    # "toplp":Lcom/coui/appcompat/widget/toolbar/COUIToolbar$LayoutParams;
    .end local v8    # "paddingTop":I
    .end local v9    # "paddingBottom":I
    .restart local v29    # "height":I
    .restart local v30    # "toplp":Lcom/coui/appcompat/widget/toolbar/COUIToolbar$LayoutParams;
    .restart local v31    # "paddingTop":I
    .restart local v32    # "paddingBottom":I
    :goto_12
    if-eqz v15, :cond_1f

    .line 1803
    iget-object v5, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$LayoutParams;

    .line 1804
    .local v5, "lp":Lcom/coui/appcompat/widget/toolbar/COUIToolbar$LayoutParams;
    iget v7, v5, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$LayoutParams;->topMargin:I

    add-int/2addr v4, v7

    .line 1805
    iget-object v7, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v7

    .line 1806
    .local v7, "subTitleWidth":I
    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->getWidth()I

    move-result v8

    sub-int/2addr v8, v7

    div-int/lit8 v8, v8, 0x2

    .line 1807
    .local v8, "subTitleLeft":I
    add-int v9, v8, v7

    .line 1808
    .local v9, "subtitleRight":I
    iget-object v13, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v13}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v13

    add-int/2addr v13, v4

    .line 1811
    .local v13, "subtitleBottom":I
    if-ge v10, v6, :cond_1e

    .line 1812
    if-lt v7, v2, :cond_1d

    .line 1813
    move-object/from16 v34, v5

    .end local v5    # "lp":Lcom/coui/appcompat/widget/toolbar/COUIToolbar$LayoutParams;
    .local v34, "lp":Lcom/coui/appcompat/widget/toolbar/COUIToolbar$LayoutParams;
    iget-object v5, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mTitlePosition:[I

    const/16 v18, 0x0

    aget v8, v5, v18

    .line 1814
    iget-object v5, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mTitlePosition:[I

    const/16 v17, 0x1

    aget v9, v5, v17

    .line 1822
    move/from16 v35, v2

    goto :goto_13

    .line 1816
    .end local v34    # "lp":Lcom/coui/appcompat/widget/toolbar/COUIToolbar$LayoutParams;
    .restart local v5    # "lp":Lcom/coui/appcompat/widget/toolbar/COUIToolbar$LayoutParams;
    :cond_1d
    move-object/from16 v34, v5

    const/16 v18, 0x0

    .end local v5    # "lp":Lcom/coui/appcompat/widget/toolbar/COUIToolbar$LayoutParams;
    .restart local v34    # "lp":Lcom/coui/appcompat/widget/toolbar/COUIToolbar$LayoutParams;
    sub-int v5, v2, v7

    div-int/lit8 v5, v5, 0x2

    .line 1817
    .local v5, "centerOffset":I
    move/from16 v35, v2

    .end local v2    # "availableWidth":I
    .local v35, "availableWidth":I
    iget-object v2, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mTitlePosition:[I

    aget v2, v2, v18

    add-int v8, v2, v5

    .line 1818
    add-int v9, v8, v7

    goto :goto_13

    .line 1822
    .end local v34    # "lp":Lcom/coui/appcompat/widget/toolbar/COUIToolbar$LayoutParams;
    .end local v35    # "availableWidth":I
    .restart local v2    # "availableWidth":I
    .local v5, "lp":Lcom/coui/appcompat/widget/toolbar/COUIToolbar$LayoutParams;
    :cond_1e
    move/from16 v35, v2

    move-object/from16 v34, v5

    .end local v2    # "availableWidth":I
    .end local v5    # "lp":Lcom/coui/appcompat/widget/toolbar/COUIToolbar$LayoutParams;
    .restart local v34    # "lp":Lcom/coui/appcompat/widget/toolbar/COUIToolbar$LayoutParams;
    .restart local v35    # "availableWidth":I
    :goto_13
    iget-object v2, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v8, v4, v9, v13}, Landroid/widget/TextView;->layout(IIII)V

    .line 1824
    .end local v6    # "titleMaxWidth":I
    .end local v7    # "subTitleWidth":I
    .end local v8    # "subTitleLeft":I
    .end local v9    # "subtitleRight":I
    .end local v10    # "canTitleCenterWidth":I
    .end local v13    # "subtitleBottom":I
    .end local v34    # "lp":Lcom/coui/appcompat/widget/toolbar/COUIToolbar$LayoutParams;
    .end local v35    # "availableWidth":I
    :cond_1f
    nop

    .line 1887
    .end local v3    # "titleHasWidth":Z
    .end local v21    # "topChild":Landroid/view/View;
    .end local v22    # "bottomChild":Landroid/view/View;
    .end local v23    # "paddingLeft":I
    .end local v24    # "width":I
    .end local v26    # "alignmentHeight":I
    .end local v27    # "left":I
    .end local v28    # "bottomlp":Lcom/coui/appcompat/widget/toolbar/COUIToolbar$LayoutParams;
    .end local v29    # "height":I
    .end local v30    # "toplp":Lcom/coui/appcompat/widget/toolbar/COUIToolbar$LayoutParams;
    .end local v31    # "paddingTop":I
    .end local v32    # "paddingBottom":I
    .local v4, "width":I
    .local v5, "height":I
    .local v6, "paddingLeft":I
    .local v8, "paddingTop":I
    .local v9, "paddingBottom":I
    .local v10, "left":I
    .local v13, "alignmentHeight":I
    :goto_14
    move/from16 v10, v27

    .end local v4    # "width":I
    .end local v5    # "height":I
    .end local v6    # "paddingLeft":I
    .end local v8    # "paddingTop":I
    .end local v9    # "paddingBottom":I
    .end local v10    # "left":I
    .end local v13    # "alignmentHeight":I
    .restart local v23    # "paddingLeft":I
    .restart local v24    # "width":I
    .restart local v26    # "alignmentHeight":I
    .restart local v27    # "left":I
    .restart local v29    # "height":I
    .restart local v31    # "paddingTop":I
    .restart local v32    # "paddingBottom":I
    goto/16 :goto_17

    .line 1826
    .end local v29    # "height":I
    .end local v31    # "paddingTop":I
    .end local v32    # "paddingBottom":I
    .local v2, "bottomlp":Lcom/coui/appcompat/widget/toolbar/COUIToolbar$LayoutParams;
    .restart local v3    # "titleHasWidth":Z
    .local v4, "titleTop":I
    .restart local v5    # "height":I
    .local v7, "toplp":Lcom/coui/appcompat/widget/toolbar/COUIToolbar$LayoutParams;
    .restart local v8    # "paddingTop":I
    .restart local v9    # "paddingBottom":I
    .restart local v21    # "topChild":Landroid/view/View;
    .restart local v22    # "bottomChild":Landroid/view/View;
    :cond_20
    move-object/from16 v28, v2

    move/from16 v29, v5

    move-object/from16 v30, v7

    move/from16 v31, v8

    move/from16 v32, v9

    .end local v2    # "bottomlp":Lcom/coui/appcompat/widget/toolbar/COUIToolbar$LayoutParams;
    .end local v5    # "height":I
    .end local v7    # "toplp":Lcom/coui/appcompat/widget/toolbar/COUIToolbar$LayoutParams;
    .end local v8    # "paddingTop":I
    .end local v9    # "paddingBottom":I
    .restart local v28    # "bottomlp":Lcom/coui/appcompat/widget/toolbar/COUIToolbar$LayoutParams;
    .restart local v29    # "height":I
    .restart local v30    # "toplp":Lcom/coui/appcompat/widget/toolbar/COUIToolbar$LayoutParams;
    .restart local v31    # "paddingTop":I
    .restart local v32    # "paddingBottom":I
    if-eqz v1, :cond_25

    .line 1827
    if-eqz v3, :cond_21

    iget v2, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mTitleMarginStart:I

    goto :goto_15

    :cond_21
    const/4 v2, 0x0

    :goto_15
    const/4 v5, 0x1

    aget v6, v12, v5

    sub-int/2addr v2, v6

    .line 1828
    .local v2, "rd":I
    const/4 v6, 0x0

    invoke-static {v6, v2}, Ljava/lang/Math;->max(II)I

    move-result v7

    sub-int/2addr v11, v7

    .line 1829
    neg-int v7, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    aput v7, v12, v5

    .line 1830
    move v5, v11

    .line 1831
    .local v5, "titleRight":I
    move v6, v11

    .line 1833
    .local v6, "subtitleRight":I
    if-eqz v14, :cond_22

    .line 1834
    iget-object v7, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$LayoutParams;

    .line 1835
    .local v7, "lp":Lcom/coui/appcompat/widget/toolbar/COUIToolbar$LayoutParams;
    iget-object v8, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v8

    sub-int v8, v5, v8

    .line 1836
    .local v8, "titleLeft":I
    iget-object v9, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v9

    add-int/2addr v9, v4

    .line 1837
    .local v9, "titleBottom":I
    iget-object v10, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v10, v8, v4, v5, v9}, Landroid/widget/TextView;->layout(IIII)V

    .line 1838
    iget v10, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mTitleMarginEnd:I

    sub-int v5, v8, v10

    .line 1839
    iget v10, v7, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$LayoutParams;->bottomMargin:I

    add-int v4, v9, v10

    .line 1841
    .end local v7    # "lp":Lcom/coui/appcompat/widget/toolbar/COUIToolbar$LayoutParams;
    .end local v8    # "titleLeft":I
    .end local v9    # "titleBottom":I
    :cond_22
    if-eqz v15, :cond_23

    .line 1842
    iget-object v7, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$LayoutParams;

    .line 1843
    .restart local v7    # "lp":Lcom/coui/appcompat/widget/toolbar/COUIToolbar$LayoutParams;
    iget v8, v7, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$LayoutParams;->topMargin:I

    add-int/2addr v4, v8

    .line 1844
    iget-object v8, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v8

    sub-int v8, v6, v8

    .line 1845
    .local v8, "subtitleLeft":I
    iget-object v9, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v9

    add-int/2addr v9, v4

    .line 1846
    .local v9, "subtitleBottom":I
    iget-object v10, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v10, v8, v4, v6, v9}, Landroid/widget/TextView;->layout(IIII)V

    .line 1847
    iget v10, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mTitleMarginEnd:I

    sub-int/2addr v6, v10

    .line 1848
    iget v10, v7, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$LayoutParams;->bottomMargin:I

    add-int v4, v9, v10

    .line 1850
    .end local v7    # "lp":Lcom/coui/appcompat/widget/toolbar/COUIToolbar$LayoutParams;
    .end local v8    # "subtitleLeft":I
    .end local v9    # "subtitleBottom":I
    :cond_23
    if-eqz v3, :cond_24

    .line 1851
    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1853
    move v11, v2

    .line 1887
    .end local v2    # "rd":I
    .end local v5    # "titleRight":I
    .end local v6    # "subtitleRight":I
    :cond_24
    move/from16 v10, v27

    goto :goto_17

    .line 1854
    :cond_25
    if-eqz v3, :cond_26

    iget v2, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mTitleMarginStart:I

    goto :goto_16

    :cond_26
    const/4 v2, 0x0

    :goto_16
    const/4 v5, 0x0

    aget v6, v12, v5

    sub-int/2addr v2, v6

    .line 1855
    .local v2, "ld":I
    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v6

    add-int v10, v27, v6

    .line 1856
    .end local v27    # "left":I
    .restart local v10    # "left":I
    neg-int v6, v2

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    aput v6, v12, v5

    .line 1857
    move v5, v10

    .line 1858
    .local v5, "titleLeft":I
    move v6, v10

    .line 1860
    .local v6, "subtitleLeft":I
    if-eqz v14, :cond_27

    .line 1861
    iget-object v7, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$LayoutParams;

    .line 1862
    .restart local v7    # "lp":Lcom/coui/appcompat/widget/toolbar/COUIToolbar$LayoutParams;
    iget-object v8, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v8

    add-int/2addr v8, v5

    .line 1863
    .local v8, "titleRight":I
    iget-object v9, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v9

    add-int/2addr v9, v4

    .line 1864
    .local v9, "titleBottom":I
    iget-object v13, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v13, v5, v4, v8, v9}, Landroid/widget/TextView;->layout(IIII)V

    .line 1865
    iget v13, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mTitleMarginEnd:I

    add-int v5, v8, v13

    .line 1866
    iget v13, v7, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$LayoutParams;->bottomMargin:I

    add-int v4, v9, v13

    .line 1868
    .end local v7    # "lp":Lcom/coui/appcompat/widget/toolbar/COUIToolbar$LayoutParams;
    .end local v8    # "titleRight":I
    .end local v9    # "titleBottom":I
    :cond_27
    if-eqz v15, :cond_28

    .line 1869
    iget-object v7, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$LayoutParams;

    .line 1870
    .restart local v7    # "lp":Lcom/coui/appcompat/widget/toolbar/COUIToolbar$LayoutParams;
    iget v8, v7, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$LayoutParams;->topMargin:I

    add-int/2addr v4, v8

    .line 1871
    iget-object v8, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v8

    add-int/2addr v8, v6

    .line 1872
    .local v8, "subtitleRight":I
    iget-object v9, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v9

    add-int/2addr v9, v4

    .line 1873
    .local v9, "subtitleBottom":I
    iget-object v13, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v13, v6, v4, v8, v9}, Landroid/widget/TextView;->layout(IIII)V

    .line 1874
    iget v13, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mTitleMarginEnd:I

    add-int v6, v8, v13

    .line 1875
    iget v13, v7, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$LayoutParams;->bottomMargin:I

    add-int v4, v9, v13

    .line 1877
    .end local v7    # "lp":Lcom/coui/appcompat/widget/toolbar/COUIToolbar$LayoutParams;
    .end local v8    # "subtitleRight":I
    .end local v9    # "subtitleBottom":I
    :cond_28
    if-eqz v3, :cond_29

    .line 1878
    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 1887
    .end local v2    # "ld":I
    .end local v3    # "titleHasWidth":Z
    .end local v4    # "titleTop":I
    .end local v5    # "titleLeft":I
    .end local v6    # "subtitleLeft":I
    .end local v21    # "topChild":Landroid/view/View;
    .end local v22    # "bottomChild":Landroid/view/View;
    .end local v28    # "bottomlp":Lcom/coui/appcompat/widget/toolbar/COUIToolbar$LayoutParams;
    .end local v30    # "toplp":Lcom/coui/appcompat/widget/toolbar/COUIToolbar$LayoutParams;
    :cond_29
    :goto_17
    iget-object v2, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mTempViews:Ljava/util/ArrayList;

    const/4 v3, 0x3

    invoke-direct {v0, v2, v3}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->addCustomViewsWithGravity(Ljava/util/List;I)V

    .line 1888
    iget-object v2, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mTempViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1892
    .local v2, "leftViewsCount":I
    iget-boolean v3, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mHasSearchViewFlag:Z

    if-eqz v3, :cond_2c

    .line 1893
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_18
    if-ge v3, v2, :cond_2b

    .line 1894
    iget-object v4, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mTempViews:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 1895
    .local v4, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v4, :cond_2a

    instance-of v5, v4, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$LayoutParams;

    if-eqz v5, :cond_2a

    move-object v5, v4

    check-cast v5, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$LayoutParams;

    iget-boolean v5, v5, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$LayoutParams;->mTypeSearch:Z

    if-eqz v5, :cond_2a

    .line 1896
    iget-object v5, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mTempViews:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->getContentInsetLeft()I

    move-result v6

    iget-object v7, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mSearchCollapsingMargins:[I

    const/4 v8, 0x0

    invoke-direct {v0, v5, v6, v7, v8}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->layoutChildLeft(Landroid/view/View;I[II)I

    move-result v5

    .line 1898
    .end local v10    # "left":I
    .local v5, "left":I
    nop

    .line 1893
    move v10, v5

    move/from16 v6, v26

    goto :goto_19

    .line 1900
    .end local v5    # "left":I
    .restart local v10    # "left":I
    :cond_2a
    iget-object v5, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mTempViews:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    move/from16 v6, v26

    .end local v26    # "alignmentHeight":I
    .local v6, "alignmentHeight":I
    invoke-direct {v0, v5, v10, v12, v6}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->layoutChildLeft(Landroid/view/View;I[II)I

    move-result v4

    .line 1893
    move v10, v4

    .end local v4    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    :goto_19
    add-int/lit8 v3, v3, 0x1

    move/from16 v26, v6

    goto :goto_18

    .line 1912
    .end local v3    # "i":I
    .end local v6    # "alignmentHeight":I
    .restart local v26    # "alignmentHeight":I
    :cond_2b
    move/from16 v6, v26

    .end local v26    # "alignmentHeight":I
    .restart local v6    # "alignmentHeight":I
    goto :goto_1b

    .line 1905
    .end local v6    # "alignmentHeight":I
    .restart local v26    # "alignmentHeight":I
    :cond_2c
    move/from16 v6, v26

    .end local v26    # "alignmentHeight":I
    .restart local v6    # "alignmentHeight":I
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_1a
    if-ge v3, v2, :cond_2d

    .line 1906
    iget-object v4, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mTempViews:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-direct {v0, v4, v10, v12, v6}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->layoutChildLeft(Landroid/view/View;I[II)I

    move-result v10

    .line 1905
    add-int/lit8 v3, v3, 0x1

    goto :goto_1a

    .line 1912
    .end local v3    # "i":I
    :cond_2d
    :goto_1b
    iget-object v3, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mTempViews:Ljava/util/ArrayList;

    const/4 v4, 0x5

    invoke-direct {v0, v3, v4}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->addCustomViewsWithGravity(Ljava/util/List;I)V

    .line 1913
    iget-object v3, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mTempViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1916
    .local v3, "rightViewsCount":I
    iget-boolean v4, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mHasSearchViewFlag:Z

    if-eqz v4, :cond_30

    .line 1917
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1c
    if-ge v4, v3, :cond_2f

    .line 1918
    iget-object v5, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mTempViews:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .line 1919
    .local v5, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v5, :cond_2e

    instance-of v7, v5, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$LayoutParams;

    if-eqz v7, :cond_2e

    move-object v7, v5

    check-cast v7, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$LayoutParams;

    iget-boolean v7, v7, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$LayoutParams;->mTypeSearch:Z

    if-eqz v7, :cond_2e

    .line 1920
    iget-object v7, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mTempViews:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->getContentInsetRight()I

    move-result v8

    sub-int v8, v24, v8

    iget-object v9, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mSearchCollapsingMargins:[I

    const/4 v13, 0x0

    invoke-direct {v0, v7, v8, v9, v13}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->layoutChildRight(Landroid/view/View;I[II)I

    move-result v7

    .line 1922
    .end local v11    # "right":I
    .local v7, "right":I
    nop

    .line 1917
    move v11, v7

    goto :goto_1d

    .line 1924
    .end local v7    # "right":I
    .restart local v11    # "right":I
    :cond_2e
    const/4 v13, 0x0

    iget-object v7, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mTempViews:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    invoke-direct {v0, v7, v11, v12, v6}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->layoutChildRight(Landroid/view/View;I[II)I

    move-result v5

    .line 1917
    move v11, v5

    .end local v5    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    :goto_1d
    add-int/lit8 v4, v4, 0x1

    goto :goto_1c

    .line 1938
    .end local v4    # "i":I
    :cond_2f
    const/4 v13, 0x0

    goto :goto_1f

    .line 1929
    :cond_30
    const/4 v13, 0x0

    move v4, v13

    .restart local v4    # "i":I
    :goto_1e
    if-ge v4, v3, :cond_31

    .line 1930
    iget-object v5, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mTempViews:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    invoke-direct {v0, v5, v11, v12, v6}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->layoutChildRight(Landroid/view/View;I[II)I

    move-result v11

    .line 1929
    add-int/lit8 v4, v4, 0x1

    goto :goto_1e

    .line 1938
    .end local v4    # "i":I
    :cond_31
    :goto_1f
    iget-object v4, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mTempViews:Ljava/util/ArrayList;

    const/4 v5, 0x1

    invoke-direct {v0, v4, v5}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->addCustomViewsWithGravity(Ljava/util/List;I)V

    .line 1939
    iget-object v4, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mTempViews:Ljava/util/ArrayList;

    invoke-direct {v0, v4, v12}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->getViewListMeasuredWidth(Ljava/util/List;[I)I

    move-result v4

    .line 1940
    .local v4, "centerViewsWidth":I
    sub-int v5, v24, v23

    sub-int v5, v5, v19

    div-int/lit8 v5, v5, 0x2

    add-int v5, v23, v5

    .line 1941
    .local v5, "parentCenter":I
    div-int/lit8 v7, v4, 0x2

    .line 1942
    .local v7, "halfCenterViewsWidth":I
    sub-int v8, v5, v7

    .line 1943
    .local v8, "centerLeft":I
    add-int v9, v8, v4

    .line 1944
    .local v9, "centerRight":I
    if-ge v8, v10, :cond_32

    .line 1945
    move v8, v10

    goto :goto_20

    .line 1946
    :cond_32
    if-le v9, v11, :cond_33

    .line 1947
    sub-int v17, v9, v11

    sub-int v8, v8, v17

    .line 1950
    :cond_33
    :goto_20
    iget-object v13, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mTempViews:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    .line 1951
    .local v13, "centerViewsCount":I
    const/16 v36, 0x0

    .local v36, "i":I
    :goto_21
    move/from16 v37, v36

    move/from16 v38, v1

    move/from16 v1, v37

    .end local v36    # "i":I
    .local v1, "i":I
    .local v38, "isRtl":Z
    if-ge v1, v13, :cond_34

    .line 1952
    move/from16 v39, v2

    .end local v2    # "leftViewsCount":I
    .local v39, "leftViewsCount":I
    iget-object v2, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mTempViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-direct {v0, v2, v8, v12, v6}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->layoutChildLeft(Landroid/view/View;I[II)I

    move-result v8

    .line 1951
    add-int/lit8 v36, v1, 0x1

    move/from16 v1, v38

    move/from16 v2, v39

    goto :goto_21

    .line 1956
    .end local v1    # "i":I
    .end local v39    # "leftViewsCount":I
    .restart local v2    # "leftViewsCount":I
    :cond_34
    move/from16 v39, v2

    .end local v2    # "leftViewsCount":I
    .restart local v39    # "leftViewsCount":I
    iget-object v1, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mTempViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1957
    return-void
.end method

.method protected onMeasure(II)V
    .locals 35
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 1300
    move-object/from16 v7, p0

    move/from16 v8, p1

    move/from16 v9, p2

    invoke-static/range {p0 .. p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-ne v0, v10, :cond_0

    move v0, v10

    goto :goto_0

    :cond_0
    move v0, v11

    :goto_0
    move v12, v0

    .line 1301
    .local v12, "isRtl":Z
    iget-boolean v0, v7, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mIsTitleCenterStyle:Z

    if-eqz v0, :cond_c

    .line 1302
    const/4 v0, 0x0

    .line 1303
    .local v0, "width":I
    const/4 v14, 0x0

    .line 1304
    .local v14, "height":I
    const/4 v15, 0x0

    .line 1306
    .local v15, "childState":I
    iget-object v6, v7, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mTempMargins:[I

    .line 1309
    .local v6, "collapsingMargins":[I
    invoke-static/range {p0 .. p0}, Landroidx/appcompat/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1310
    const/4 v1, 0x1

    .line 1311
    .local v1, "marginStartIndex":I
    const/4 v2, 0x0

    .line 1314
    move/from16 v16, v1

    goto :goto_1

    .line 1313
    .end local v1    # "marginStartIndex":I
    :cond_1
    const/4 v1, 0x0

    .line 1314
    .restart local v1    # "marginStartIndex":I
    move/from16 v16, v1

    move v2, v10

    .end local v1    # "marginStartIndex":I
    .local v2, "marginEndIndex":I
    .local v16, "marginStartIndex":I
    :goto_1
    move/from16 v17, v2

    .line 1319
    .end local v2    # "marginEndIndex":I
    .local v17, "marginEndIndex":I
    const/4 v5, 0x0

    .line 1322
    .local v5, "navWidth":I
    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->getContentInsetStart()I

    move-result v4

    .line 1323
    .local v4, "contentInsetStart":I
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int v18, v0, v1

    .line 1324
    .end local v0    # "width":I
    .local v18, "width":I
    sub-int v0, v4, v5

    invoke-static {v11, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    aput v0, v6, v16

    .line 1326
    const/16 v19, 0x0

    .line 1327
    .local v19, "menuWidth":I
    iget-object v0, v7, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    invoke-direct {v7, v0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1330
    iget-object v0, v7, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuView;->getMenu()Landroid/view/Menu;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroidx/appcompat/view/menu/MenuBuilder;

    .line 1331
    .local v3, "menu":Landroidx/appcompat/view/menu/MenuBuilder;
    invoke-direct {v7, v3, v12}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->changeToolbarPadding(Landroidx/appcompat/view/menu/MenuBuilder;Z)V

    .line 1333
    iget-object v1, v7, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    const/16 v20, 0x0

    const/16 v21, 0x0

    iget v2, v7, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mMaxButtonHeight:I

    move-object/from16 v0, p0

    move/from16 v22, v2

    move/from16 v2, p1

    move-object/from16 v23, v3

    .end local v3    # "menu":Landroidx/appcompat/view/menu/MenuBuilder;
    .local v23, "menu":Landroidx/appcompat/view/menu/MenuBuilder;
    move/from16 v3, v20

    move/from16 v20, v4

    .end local v4    # "contentInsetStart":I
    .local v20, "contentInsetStart":I
    move/from16 v4, p2

    move/from16 v24, v5

    .end local v5    # "navWidth":I
    .local v24, "navWidth":I
    move/from16 v5, v21

    move-object/from16 v21, v6

    .end local v6    # "collapsingMargins":[I
    .local v21, "collapsingMargins":[I
    move/from16 v6, v22

    invoke-direct/range {v0 .. v6}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->measureChildConstrained(Landroid/view/View;IIIII)V

    .line 1335
    iget-object v0, v7, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuView;->getMeasuredWidth()I

    move-result v0

    iget-object v1, v7, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    invoke-direct {v7, v1}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->getHorizontalMargins(Landroid/view/View;)I

    move-result v1

    add-int v19, v0, v1

    .line 1336
    iget-object v0, v7, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuView;->getMeasuredHeight()I

    move-result v0

    iget-object v1, v7, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    .line 1337
    invoke-direct {v7, v1}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->getVerticalMargins(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1336
    invoke-static {v14, v0}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 1338
    iget-object v0, v7, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    .line 1339
    invoke-static {v0}, Landroidx/core/view/ViewCompat;->getMeasuredState(Landroid/view/View;)I

    move-result v0

    .line 1338
    invoke-static {v15, v0}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v15

    .line 1342
    move v6, v15

    move v15, v14

    move/from16 v14, v19

    goto :goto_2

    .end local v20    # "contentInsetStart":I
    .end local v21    # "collapsingMargins":[I
    .end local v23    # "menu":Landroidx/appcompat/view/menu/MenuBuilder;
    .end local v24    # "navWidth":I
    .restart local v4    # "contentInsetStart":I
    .restart local v5    # "navWidth":I
    .restart local v6    # "collapsingMargins":[I
    :cond_2
    move/from16 v20, v4

    move/from16 v24, v5

    move-object/from16 v21, v6

    move v6, v15

    move v15, v14

    move/from16 v14, v19

    .end local v4    # "contentInsetStart":I
    .end local v5    # "navWidth":I
    .end local v19    # "menuWidth":I
    .local v6, "childState":I
    .local v14, "menuWidth":I
    .local v15, "height":I
    .restart local v20    # "contentInsetStart":I
    .restart local v21    # "collapsingMargins":[I
    .restart local v24    # "navWidth":I
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->getContentInsetEnd()I

    move-result v5

    .line 1343
    .local v5, "contentInsetEnd":I
    invoke-static {v5, v14}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int v18, v18, v0

    .line 1344
    sub-int v0, v5, v14

    invoke-static {v11, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    aput v0, v21, v17

    .line 1346
    iget-object v0, v7, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mExpandedActionView:Landroid/view/View;

    invoke-direct {v7, v0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1347
    iget-object v1, v7, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mExpandedActionView:Landroid/view/View;

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v2, p1

    move/from16 v3, v18

    move/from16 v4, p2

    move/from16 v22, v5

    .end local v5    # "contentInsetEnd":I
    .local v22, "contentInsetEnd":I
    move/from16 v5, v19

    move v10, v6

    .end local v6    # "childState":I
    .local v10, "childState":I
    move-object/from16 v6, v21

    invoke-direct/range {v0 .. v6}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->measureChildCollapseMargins(Landroid/view/View;IIII[I)I

    move-result v0

    add-int v18, v18, v0

    .line 1349
    iget-object v0, v7, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mExpandedActionView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget-object v1, v7, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mExpandedActionView:Landroid/view/View;

    .line 1350
    invoke-direct {v7, v1}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->getVerticalMargins(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1349
    invoke-static {v15, v0}, Ljava/lang/Math;->max(II)I

    move-result v15

    .line 1351
    iget-object v0, v7, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mExpandedActionView:Landroid/view/View;

    .line 1352
    invoke-static {v0}, Landroidx/core/view/ViewCompat;->getMeasuredState(Landroid/view/View;)I

    move-result v0

    .line 1351
    invoke-static {v10, v0}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v6

    goto :goto_3

    .line 1357
    .end local v10    # "childState":I
    .end local v22    # "contentInsetEnd":I
    .restart local v5    # "contentInsetEnd":I
    .restart local v6    # "childState":I
    :cond_3
    move/from16 v22, v5

    move v10, v6

    .end local v5    # "contentInsetEnd":I
    .restart local v22    # "contentInsetEnd":I
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->getChildCount()I

    move-result v10

    .line 1358
    .local v10, "childCount":I
    move v0, v11

    move/from16 v34, v15

    move v15, v6

    move/from16 v6, v34

    .local v0, "i":I
    .local v6, "height":I
    .local v15, "childState":I
    :goto_4
    move v5, v0

    .end local v0    # "i":I
    .local v5, "i":I
    if-ge v5, v10, :cond_6

    .line 1359
    invoke-virtual {v7, v5}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1360
    .local v4, "child":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$LayoutParams;

    .line 1361
    .local v3, "lp":Lcom/coui/appcompat/widget/toolbar/COUIToolbar$LayoutParams;
    iget v0, v3, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$LayoutParams;->mViewType:I

    if-nez v0, :cond_5

    invoke-direct {v7, v4}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1363
    nop

    .line 1358
    move/from16 v26, v5

    move v13, v6

    goto :goto_5

    .line 1366
    :cond_4
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object v1, v4

    move/from16 v2, p1

    move-object/from16 v23, v3

    .end local v3    # "lp":Lcom/coui/appcompat/widget/toolbar/COUIToolbar$LayoutParams;
    .local v23, "lp":Lcom/coui/appcompat/widget/toolbar/COUIToolbar$LayoutParams;
    move/from16 v3, v18

    move-object/from16 v25, v4

    .end local v4    # "child":Landroid/view/View;
    .local v25, "child":Landroid/view/View;
    move/from16 v4, p2

    move/from16 v26, v5

    .end local v5    # "i":I
    .local v26, "i":I
    move/from16 v5, v19

    move v13, v6

    .end local v6    # "height":I
    .local v13, "height":I
    move-object/from16 v6, v21

    invoke-direct/range {v0 .. v6}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->measureChildCollapseMargins(Landroid/view/View;IIII[I)I

    move-result v0

    add-int v18, v18, v0

    .line 1368
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    move-object/from16 v1, v25

    .end local v25    # "child":Landroid/view/View;
    .local v1, "child":Landroid/view/View;
    invoke-direct {v7, v1}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->getVerticalMargins(Landroid/view/View;)I

    move-result v2

    add-int/2addr v0, v2

    invoke-static {v13, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1369
    .end local v13    # "height":I
    .local v0, "height":I
    nop

    .line 1370
    invoke-static {v1}, Landroidx/core/view/ViewCompat;->getMeasuredState(Landroid/view/View;)I

    move-result v2

    .line 1369
    invoke-static {v15, v2}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v1

    .line 1358
    move v6, v0

    move v15, v1

    goto :goto_6

    .end local v0    # "height":I
    .end local v1    # "child":Landroid/view/View;
    .end local v23    # "lp":Lcom/coui/appcompat/widget/toolbar/COUIToolbar$LayoutParams;
    .end local v26    # "i":I
    .restart local v5    # "i":I
    .restart local v6    # "height":I
    :cond_5
    move/from16 v26, v5

    move v13, v6

    .end local v5    # "i":I
    .end local v6    # "height":I
    .restart local v13    # "height":I
    .restart local v26    # "i":I
    :goto_5
    move v6, v13

    .end local v13    # "height":I
    .restart local v6    # "height":I
    :goto_6
    add-int/lit8 v0, v26, 0x1

    goto :goto_4

    .line 1373
    .end local v26    # "i":I
    :cond_6
    move v13, v6

    .end local v6    # "height":I
    .restart local v13    # "height":I
    const/16 v19, 0x0

    .line 1374
    .local v19, "titleWidth":I
    const/16 v23, 0x0

    .line 1375
    .local v23, "titleHeight":I
    iget v0, v7, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mTitleMarginTop:I

    iget v1, v7, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mTitleMarginBottom:I

    add-int v25, v0, v1

    .line 1376
    .local v25, "titleVertMargins":I
    iget v0, v7, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mTitleMarginStart:I

    iget v1, v7, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mTitleMarginEnd:I

    add-int v26, v0, v1

    .line 1378
    .local v26, "titleHorizMargins":I
    iget-object v0, v7, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-direct {v7, v0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v0

    const/4 v6, -0x2

    if-eqz v0, :cond_7

    .line 1381
    iget-object v0, v7, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v6, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1386
    iget-object v0, v7, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mTitleTextView:Landroid/widget/TextView;

    iget v1, v7, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mTitleTextSize:F

    invoke-virtual {v0, v11, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1388
    iget-object v1, v7, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mTitleTextView:Landroid/widget/TextView;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move/from16 v2, p1

    move/from16 v4, p2

    move/from16 v5, v25

    move v11, v6

    move-object/from16 v6, v21

    invoke-direct/range {v0 .. v6}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->measureChildCollapseMargins(Landroid/view/View;IIII[I)I

    move-result v0

    .line 1391
    .end local v19    # "titleWidth":I
    .local v0, "titleWidth":I
    iget-object v1, v7, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v1

    iget-object v2, v7, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-direct {v7, v2}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->getHorizontalMargins(Landroid/view/View;)I

    move-result v2

    add-int v19, v1, v2

    .line 1392
    .end local v0    # "titleWidth":I
    .restart local v19    # "titleWidth":I
    iget-object v0, v7, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v0

    iget-object v1, v7, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-direct {v7, v1}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->getVerticalMargins(Landroid/view/View;)I

    move-result v1

    add-int v23, v0, v1

    .line 1393
    iget-object v0, v7, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mTitleTextView:Landroid/widget/TextView;

    .line 1394
    invoke-static {v0}, Landroidx/core/view/ViewCompat;->getMeasuredState(Landroid/view/View;)I

    move-result v0

    .line 1393
    invoke-static {v15, v0}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v15

    goto :goto_7

    .line 1396
    :cond_7
    move v11, v6

    .end local v19    # "titleWidth":I
    .end local v23    # "titleHeight":I
    .local v5, "childState":I
    .local v6, "titleHeight":I
    .local v15, "titleWidth":I
    :goto_7
    move v5, v15

    move/from16 v15, v19

    move/from16 v6, v23

    iget-object v0, v7, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-direct {v7, v0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1399
    iget-object v0, v7, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v11, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1402
    iget-object v1, v7, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mSubtitleTextView:Landroid/widget/TextView;

    const/4 v3, 0x0

    add-int v11, v6, v25

    move-object/from16 v0, p0

    move/from16 v2, p1

    move/from16 v4, p2

    move/from16 v28, v5

    .end local v5    # "childState":I
    .local v28, "childState":I
    move v5, v11

    move v11, v6

    .end local v6    # "titleHeight":I
    .local v11, "titleHeight":I
    move-object/from16 v6, v21

    invoke-direct/range {v0 .. v6}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->measureChildCollapseMargins(Landroid/view/View;IIII[I)I

    move-result v0

    invoke-static {v15, v0}, Ljava/lang/Math;->max(II)I

    move-result v15

    .line 1412
    iget-object v0, v7, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mSubtitleTextView:Landroid/widget/TextView;

    .line 1413
    invoke-static {v0}, Landroidx/core/view/ViewCompat;->getMeasuredState(Landroid/view/View;)I

    move-result v0

    .line 1412
    move/from16 v1, v28

    .end local v28    # "childState":I
    .local v1, "childState":I
    invoke-static {v1, v0}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v5

    .line 1416
    move/from16 v19, v5

    goto :goto_8

    .end local v1    # "childState":I
    .end local v11    # "titleHeight":I
    .restart local v5    # "childState":I
    .restart local v6    # "titleHeight":I
    :cond_8
    move v1, v5

    move v11, v6

    move/from16 v19, v1

    .end local v5    # "childState":I
    .end local v6    # "titleHeight":I
    .restart local v11    # "titleHeight":I
    .local v19, "childState":I
    :goto_8
    add-int v18, v18, v15

    .line 1417
    invoke-static {v13, v11}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1421
    .end local v13    # "height":I
    .local v0, "height":I
    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->getPaddingLeft()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    add-int v13, v18, v1

    .line 1422
    .end local v18    # "width":I
    .local v13, "width":I
    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->getPaddingTop()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    add-int v6, v0, v1

    .line 1424
    .end local v0    # "height":I
    .local v6, "height":I
    nop

    .line 1425
    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->getSuggestedMinimumWidth()I

    move-result v0

    invoke-static {v13, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/high16 v1, -0x1000000

    and-int v1, v19, v1

    .line 1424
    invoke-static {v0, v8, v1}, Landroidx/core/view/ViewCompat;->resolveSizeAndState(III)I

    move-result v5

    .line 1427
    .local v5, "measuredWidth":I
    nop

    .line 1428
    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->getSuggestedMinimumHeight()I

    move-result v0

    invoke-static {v6, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    shl-int/lit8 v1, v19, 0x10

    .line 1427
    invoke-static {v0, v9, v1}, Landroidx/core/view/ViewCompat;->resolveSizeAndState(III)I

    move-result v18

    .line 1431
    .local v18, "measuredHeight":I
    invoke-direct/range {p0 .. p0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->shouldCollapse()Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x0

    goto :goto_9

    :cond_9
    move/from16 v0, v18

    :goto_9
    invoke-virtual {v7, v5, v0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->setMeasuredDimension(II)V

    .line 1434
    iget-object v0, v7, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mTitlePosition:[I

    invoke-direct {v7, v0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->calculateTitlePosition([I)V

    .line 1435
    iget-object v0, v7, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mTitlePosition:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    iget-object v1, v7, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mTitlePosition:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    sub-int v4, v0, v1

    .line 1436
    .local v4, "titleMaxWidth":I
    iget-object v0, v7, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-direct {v7, v0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v0

    const/high16 v3, -0x80000000

    if-eqz v0, :cond_a

    iget-object v0, v7, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v0

    iget-object v1, v7, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mTitlePosition:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    iget-object v2, v7, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mTitlePosition:[I

    const/16 v23, 0x0

    aget v2, v2, v23

    sub-int/2addr v1, v2

    if-le v0, v1, :cond_a

    .line 1437
    iget-object v1, v7, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-static {v4, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v29, v10

    move v10, v3

    .end local v10    # "childCount":I
    .local v29, "childCount":I
    move/from16 v3, v23

    move v10, v4

    .end local v4    # "titleMaxWidth":I
    .local v10, "titleMaxWidth":I
    move/from16 v4, p2

    move/from16 v23, v5

    .end local v5    # "measuredWidth":I
    .local v23, "measuredWidth":I
    move/from16 v5, v25

    move/from16 v27, v6

    .end local v6    # "height":I
    .local v27, "height":I
    move-object/from16 v6, v21

    invoke-direct/range {v0 .. v6}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->measureChildCollapseMargins(Landroid/view/View;IIII[I)I

    goto :goto_a

    .line 1441
    .end local v23    # "measuredWidth":I
    .end local v27    # "height":I
    .end local v29    # "childCount":I
    .restart local v4    # "titleMaxWidth":I
    .restart local v5    # "measuredWidth":I
    .restart local v6    # "height":I
    .local v10, "childCount":I
    :cond_a
    move/from16 v23, v5

    move/from16 v27, v6

    move/from16 v29, v10

    move v10, v4

    .end local v4    # "titleMaxWidth":I
    .end local v5    # "measuredWidth":I
    .end local v6    # "height":I
    .local v10, "titleMaxWidth":I
    .restart local v23    # "measuredWidth":I
    .restart local v27    # "height":I
    .restart local v29    # "childCount":I
    :goto_a
    iget-object v0, v7, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-direct {v7, v0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, v7, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v0

    iget-object v1, v7, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mTitlePosition:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    iget-object v2, v7, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mTitlePosition:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    sub-int/2addr v1, v2

    if-le v0, v1, :cond_b

    .line 1442
    iget-object v1, v7, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mSubtitleTextView:Landroid/widget/TextView;

    .line 1443
    const/high16 v0, -0x80000000

    invoke-static {v10, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    const/4 v3, 0x0

    add-int v5, v11, v25

    .line 1442
    move-object/from16 v0, p0

    move/from16 v4, p2

    move-object/from16 v6, v21

    invoke-direct/range {v0 .. v6}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->measureChildCollapseMargins(Landroid/view/View;IIII[I)I

    .line 1448
    :cond_b
    return-void

    .line 1451
    .end local v10    # "titleMaxWidth":I
    .end local v11    # "titleHeight":I
    .end local v13    # "width":I
    .end local v14    # "menuWidth":I
    .end local v15    # "titleWidth":I
    .end local v16    # "marginStartIndex":I
    .end local v17    # "marginEndIndex":I
    .end local v18    # "measuredHeight":I
    .end local v19    # "childState":I
    .end local v20    # "contentInsetStart":I
    .end local v21    # "collapsingMargins":[I
    .end local v22    # "contentInsetEnd":I
    .end local v23    # "measuredWidth":I
    .end local v24    # "navWidth":I
    .end local v25    # "titleVertMargins":I
    .end local v26    # "titleHorizMargins":I
    .end local v27    # "height":I
    .end local v29    # "childCount":I
    :cond_c
    move v2, v10

    const/4 v10, 0x0

    .line 1452
    .local v10, "width":I
    const/4 v11, 0x0

    .line 1453
    .local v11, "height":I
    const/4 v13, 0x0

    .line 1455
    .local v13, "childState":I
    iget-object v14, v7, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mTempMargins:[I

    .line 1458
    .local v14, "collapsingMargins":[I
    invoke-static/range {p0 .. p0}, Landroidx/appcompat/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1459
    const/4 v0, 0x1

    .line 1460
    .local v0, "marginStartIndex":I
    const/4 v1, 0x0

    .line 1463
    move v15, v0

    goto :goto_b

    .line 1462
    .end local v0    # "marginStartIndex":I
    :cond_d
    const/4 v0, 0x0

    .line 1463
    .restart local v0    # "marginStartIndex":I
    move v15, v0

    move v1, v2

    .end local v0    # "marginStartIndex":I
    .local v1, "marginEndIndex":I
    .local v15, "marginStartIndex":I
    :goto_b
    move/from16 v16, v1

    .line 1468
    .end local v1    # "marginEndIndex":I
    .local v16, "marginEndIndex":I
    const/16 v17, 0x0

    .line 1469
    .local v17, "navWidth":I
    iget-object v0, v7, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-direct {v7, v0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1470
    iget-object v1, v7, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mNavButtonView:Landroid/widget/ImageButton;

    const/4 v5, 0x0

    iget v6, v7, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mMaxButtonHeight:I

    move-object/from16 v0, p0

    move/from16 v2, p1

    move v3, v10

    move/from16 v4, p2

    invoke-direct/range {v0 .. v6}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->measureChildConstrained(Landroid/view/View;IIIII)V

    .line 1472
    iget-object v0, v7, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getMeasuredWidth()I

    move-result v0

    iget-object v1, v7, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-direct {v7, v1}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->getHorizontalMargins(Landroid/view/View;)I

    move-result v1

    add-int v17, v0, v1

    .line 1473
    iget-object v0, v7, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getMeasuredHeight()I

    move-result v0

    iget-object v1, v7, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mNavButtonView:Landroid/widget/ImageButton;

    .line 1474
    invoke-direct {v7, v1}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->getVerticalMargins(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1473
    invoke-static {v11, v0}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 1475
    iget-object v0, v7, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mNavButtonView:Landroid/widget/ImageButton;

    .line 1476
    invoke-static {v0}, Landroidx/core/view/ViewCompat;->getMeasuredState(Landroid/view/View;)I

    move-result v0

    .line 1475
    invoke-static {v13, v0}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v13

    .line 1479
    :cond_e
    iget-object v0, v7, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    invoke-direct {v7, v0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1480
    iget-object v1, v7, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    const/4 v5, 0x0

    iget v6, v7, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mMaxButtonHeight:I

    move-object/from16 v0, p0

    move/from16 v2, p1

    move v3, v10

    move/from16 v4, p2

    invoke-direct/range {v0 .. v6}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->measureChildConstrained(Landroid/view/View;IIIII)V

    .line 1482
    iget-object v0, v7, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getMeasuredWidth()I

    move-result v0

    iget-object v1, v7, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    .line 1483
    invoke-direct {v7, v1}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->getHorizontalMargins(Landroid/view/View;)I

    move-result v1

    add-int v17, v0, v1

    .line 1484
    iget-object v0, v7, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getMeasuredHeight()I

    move-result v0

    iget-object v1, v7, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    .line 1485
    invoke-direct {v7, v1}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->getVerticalMargins(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1484
    invoke-static {v11, v0}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 1486
    iget-object v0, v7, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    .line 1487
    invoke-static {v0}, Landroidx/core/view/ViewCompat;->getMeasuredState(Landroid/view/View;)I

    move-result v0

    .line 1486
    invoke-static {v13, v0}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v13

    .line 1490
    .end local v17    # "navWidth":I
    .local v6, "childState":I
    .local v11, "navWidth":I
    .local v13, "height":I
    :cond_f
    move v6, v13

    move v13, v11

    move/from16 v11, v17

    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->getContentInsetStart()I

    move-result v5

    .line 1491
    .local v5, "contentInsetStart":I
    invoke-static {v5, v11}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/2addr v10, v0

    .line 1492
    sub-int v0, v5, v11

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    aput v0, v14, v15

    .line 1494
    const/16 v17, 0x0

    .line 1495
    .local v17, "menuWidth":I
    iget-object v0, v7, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    invoke-direct {v7, v0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1498
    iget-object v0, v7, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuView;->getMenu()Landroid/view/Menu;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroidx/appcompat/view/menu/MenuBuilder;

    .line 1499
    .local v4, "menu":Landroidx/appcompat/view/menu/MenuBuilder;
    invoke-direct {v7, v4, v12}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->changeToolbarPadding(Landroidx/appcompat/view/menu/MenuBuilder;Z)V

    .line 1501
    iget-object v1, v7, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    const/16 v18, 0x0

    iget v3, v7, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mMaxButtonHeight:I

    move-object/from16 v0, p0

    move/from16 v2, p1

    move/from16 v19, v3

    move v3, v10

    move-object/from16 v20, v4

    .end local v4    # "menu":Landroidx/appcompat/view/menu/MenuBuilder;
    .local v20, "menu":Landroidx/appcompat/view/menu/MenuBuilder;
    move/from16 v4, p2

    move/from16 v21, v5

    .end local v5    # "contentInsetStart":I
    .local v21, "contentInsetStart":I
    move/from16 v5, v18

    move/from16 v30, v11

    move v11, v6

    .end local v6    # "childState":I
    .local v11, "childState":I
    .local v30, "navWidth":I
    move/from16 v6, v19

    invoke-direct/range {v0 .. v6}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->measureChildConstrained(Landroid/view/View;IIIII)V

    .line 1503
    iget-object v0, v7, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuView;->getMeasuredWidth()I

    move-result v0

    iget-object v1, v7, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    invoke-direct {v7, v1}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->getHorizontalMargins(Landroid/view/View;)I

    move-result v1

    add-int v17, v0, v1

    .line 1504
    iget-object v0, v7, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuView;->getMeasuredHeight()I

    move-result v0

    iget-object v1, v7, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    .line 1505
    invoke-direct {v7, v1}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->getVerticalMargins(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1504
    invoke-static {v13, v0}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 1506
    iget-object v0, v7, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    .line 1507
    invoke-static {v0}, Landroidx/core/view/ViewCompat;->getMeasuredState(Landroid/view/View;)I

    move-result v0

    .line 1506
    invoke-static {v11, v0}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v6

    .line 1510
    move/from16 v11, v17

    goto :goto_c

    .end local v20    # "menu":Landroidx/appcompat/view/menu/MenuBuilder;
    .end local v21    # "contentInsetStart":I
    .end local v30    # "navWidth":I
    .restart local v5    # "contentInsetStart":I
    .restart local v6    # "childState":I
    .local v11, "navWidth":I
    :cond_10
    move/from16 v21, v5

    move/from16 v30, v11

    move v11, v6

    move/from16 v11, v17

    .end local v5    # "contentInsetStart":I
    .end local v17    # "menuWidth":I
    .local v11, "menuWidth":I
    .restart local v21    # "contentInsetStart":I
    .restart local v30    # "navWidth":I
    :goto_c
    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->getContentInsetEnd()I

    move-result v5

    .line 1511
    .local v5, "contentInsetEnd":I
    invoke-static {v5, v11}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/2addr v10, v0

    .line 1512
    sub-int v0, v5, v11

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    aput v0, v14, v16

    .line 1514
    iget-object v0, v7, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mExpandedActionView:Landroid/view/View;

    invoke-direct {v7, v0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1515
    iget-object v1, v7, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mExpandedActionView:Landroid/view/View;

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v2, p1

    move v3, v10

    move/from16 v4, p2

    move/from16 v18, v5

    .end local v5    # "contentInsetEnd":I
    .local v18, "contentInsetEnd":I
    move/from16 v5, v17

    move/from16 v31, v11

    move v11, v6

    .end local v6    # "childState":I
    .local v11, "childState":I
    .local v31, "menuWidth":I
    move-object v6, v14

    invoke-direct/range {v0 .. v6}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->measureChildCollapseMargins(Landroid/view/View;IIII[I)I

    move-result v0

    add-int/2addr v10, v0

    .line 1517
    iget-object v0, v7, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mExpandedActionView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget-object v1, v7, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mExpandedActionView:Landroid/view/View;

    .line 1518
    invoke-direct {v7, v1}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->getVerticalMargins(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1517
    invoke-static {v13, v0}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 1519
    iget-object v0, v7, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mExpandedActionView:Landroid/view/View;

    .line 1520
    invoke-static {v0}, Landroidx/core/view/ViewCompat;->getMeasuredState(Landroid/view/View;)I

    move-result v0

    .line 1519
    invoke-static {v11, v0}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v6

    .line 1522
    move v11, v6

    goto :goto_d

    .end local v18    # "contentInsetEnd":I
    .end local v31    # "menuWidth":I
    .restart local v5    # "contentInsetEnd":I
    .restart local v6    # "childState":I
    .local v11, "menuWidth":I
    :cond_11
    move/from16 v18, v5

    move/from16 v31, v11

    move v11, v6

    .end local v5    # "contentInsetEnd":I
    .end local v6    # "childState":I
    .local v11, "childState":I
    .restart local v18    # "contentInsetEnd":I
    .restart local v31    # "menuWidth":I
    :goto_d
    iget-object v0, v7, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mLogoView:Landroid/widget/ImageView;

    invoke-direct {v7, v0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1523
    iget-object v1, v7, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mLogoView:Landroid/widget/ImageView;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move/from16 v2, p1

    move v3, v10

    move/from16 v4, p2

    move-object v6, v14

    invoke-direct/range {v0 .. v6}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->measureChildCollapseMargins(Landroid/view/View;IIII[I)I

    move-result v0

    add-int/2addr v10, v0

    .line 1525
    iget-object v0, v7, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mLogoView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v0

    iget-object v1, v7, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mLogoView:Landroid/widget/ImageView;

    .line 1526
    invoke-direct {v7, v1}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->getVerticalMargins(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1525
    invoke-static {v13, v0}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 1527
    iget-object v0, v7, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mLogoView:Landroid/widget/ImageView;

    .line 1528
    invoke-static {v0}, Landroidx/core/view/ViewCompat;->getMeasuredState(Landroid/view/View;)I

    move-result v0

    .line 1527
    invoke-static {v11, v0}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v11

    .line 1530
    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->getChildCount()I

    move-result v6

    .line 1531
    .local v6, "childCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_e
    move v5, v0

    .end local v0    # "i":I
    .local v5, "i":I
    if-ge v5, v6, :cond_15

    .line 1532
    invoke-virtual {v7, v5}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1533
    .local v4, "child":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$LayoutParams;

    .line 1534
    .restart local v3    # "lp":Lcom/coui/appcompat/widget/toolbar/COUIToolbar$LayoutParams;
    iget v0, v3, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$LayoutParams;->mViewType:I

    if-nez v0, :cond_14

    invoke-direct {v7, v4}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 1536
    nop

    .line 1531
    move/from16 v20, v5

    move/from16 v17, v6

    goto :goto_f

    .line 1539
    :cond_13
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move-object v1, v4

    move/from16 v2, p1

    move-object/from16 v19, v3

    .end local v3    # "lp":Lcom/coui/appcompat/widget/toolbar/COUIToolbar$LayoutParams;
    .local v19, "lp":Lcom/coui/appcompat/widget/toolbar/COUIToolbar$LayoutParams;
    move v3, v10

    move-object/from16 v32, v4

    .end local v4    # "child":Landroid/view/View;
    .local v32, "child":Landroid/view/View;
    move/from16 v4, p2

    move/from16 v20, v5

    .end local v5    # "i":I
    .local v20, "i":I
    move/from16 v5, v17

    move/from16 v17, v6

    .end local v6    # "childCount":I
    .local v17, "childCount":I
    move-object v6, v14

    invoke-direct/range {v0 .. v6}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->measureChildCollapseMargins(Landroid/view/View;IIII[I)I

    move-result v0

    add-int/2addr v10, v0

    .line 1541
    invoke-virtual/range {v32 .. v32}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    move-object/from16 v1, v32

    .end local v32    # "child":Landroid/view/View;
    .local v1, "child":Landroid/view/View;
    invoke-direct {v7, v1}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->getVerticalMargins(Landroid/view/View;)I

    move-result v2

    add-int/2addr v0, v2

    invoke-static {v13, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1542
    .end local v13    # "height":I
    .local v0, "height":I
    nop

    .line 1543
    invoke-static {v1}, Landroidx/core/view/ViewCompat;->getMeasuredState(Landroid/view/View;)I

    move-result v2

    .line 1542
    invoke-static {v11, v2}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v1

    .line 1531
    move v13, v0

    move v11, v1

    goto :goto_f

    .end local v0    # "height":I
    .end local v1    # "child":Landroid/view/View;
    .end local v17    # "childCount":I
    .end local v19    # "lp":Lcom/coui/appcompat/widget/toolbar/COUIToolbar$LayoutParams;
    .end local v20    # "i":I
    .restart local v5    # "i":I
    .restart local v6    # "childCount":I
    .restart local v13    # "height":I
    :cond_14
    move/from16 v20, v5

    move/from16 v17, v6

    .end local v5    # "i":I
    .end local v6    # "childCount":I
    .restart local v17    # "childCount":I
    .restart local v20    # "i":I
    :goto_f
    add-int/lit8 v0, v20, 0x1

    move/from16 v6, v17

    goto :goto_e

    .line 1545
    .end local v17    # "childCount":I
    .end local v20    # "i":I
    .restart local v6    # "childCount":I
    :cond_15
    move/from16 v17, v6

    .end local v6    # "childCount":I
    .restart local v17    # "childCount":I
    const/16 v19, 0x0

    .line 1546
    .local v19, "titleWidth":I
    const/16 v20, 0x0

    .line 1547
    .local v20, "titleHeight":I
    iget v0, v7, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mTitleMarginTop:I

    iget v1, v7, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mTitleMarginBottom:I

    add-int v22, v0, v1

    .line 1548
    .local v22, "titleVertMargins":I
    iget v0, v7, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mTitleMarginStart:I

    iget v1, v7, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mTitleMarginEnd:I

    add-int v23, v0, v1

    .line 1549
    .local v23, "titleHorizMargins":I
    iget-object v0, v7, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-direct {v7, v0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v0

    const/4 v6, -0x1

    if-eqz v0, :cond_16

    .line 1552
    iget-object v0, v7, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v6, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1557
    iget-object v0, v7, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mTitleTextView:Landroid/widget/TextView;

    iget v1, v7, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mTitleTextSize:F

    const/4 v5, 0x0

    invoke-virtual {v0, v5, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1559
    iget-object v1, v7, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mTitleTextView:Landroid/widget/TextView;

    add-int v3, v10, v23

    move-object/from16 v0, p0

    move/from16 v2, p1

    move/from16 v4, p2

    move/from16 v24, v5

    move/from16 v5, v22

    move/from16 v33, v12

    move v12, v6

    .end local v12    # "isRtl":Z
    .local v33, "isRtl":Z
    move-object v6, v14

    invoke-direct/range {v0 .. v6}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->measureChildCollapseMargins(Landroid/view/View;IIII[I)I

    move-result v0

    .line 1562
    .end local v19    # "titleWidth":I
    .local v0, "titleWidth":I
    iget-object v1, v7, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v1

    iget-object v2, v7, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-direct {v7, v2}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->getHorizontalMargins(Landroid/view/View;)I

    move-result v2

    add-int v19, v1, v2

    .line 1563
    .end local v0    # "titleWidth":I
    .restart local v19    # "titleWidth":I
    iget-object v0, v7, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v0

    iget-object v1, v7, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-direct {v7, v1}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->getVerticalMargins(Landroid/view/View;)I

    move-result v1

    add-int v20, v0, v1

    .line 1564
    iget-object v0, v7, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mTitleTextView:Landroid/widget/TextView;

    .line 1565
    invoke-static {v0}, Landroidx/core/view/ViewCompat;->getMeasuredState(Landroid/view/View;)I

    move-result v0

    .line 1564
    invoke-static {v11, v0}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v11

    .line 1568
    move v6, v11

    move/from16 v11, v19

    goto :goto_10

    .end local v33    # "isRtl":Z
    .restart local v12    # "isRtl":Z
    :cond_16
    move/from16 v33, v12

    const/16 v24, 0x0

    move v12, v6

    move v6, v11

    move/from16 v11, v19

    .end local v12    # "isRtl":Z
    .end local v19    # "titleWidth":I
    .local v6, "childState":I
    .local v11, "titleWidth":I
    .restart local v33    # "isRtl":Z
    :goto_10
    iget-object v0, v7, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-direct {v7, v0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1571
    iget-object v0, v7, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v12, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1574
    iget-object v1, v7, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mSubtitleTextView:Landroid/widget/TextView;

    add-int v3, v10, v23

    add-int v5, v20, v22

    move-object/from16 v0, p0

    move/from16 v2, p1

    move/from16 v4, p2

    move v12, v6

    .end local v6    # "childState":I
    .local v12, "childState":I
    move-object v6, v14

    invoke-direct/range {v0 .. v6}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->measureChildCollapseMargins(Landroid/view/View;IIII[I)I

    move-result v0

    invoke-static {v11, v0}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 1578
    iget-object v0, v7, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v0

    iget-object v1, v7, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mSubtitleTextView:Landroid/widget/TextView;

    .line 1579
    invoke-direct {v7, v1}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->getVerticalMargins(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    add-int v20, v20, v0

    .line 1580
    iget-object v0, v7, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mSubtitleTextView:Landroid/widget/TextView;

    .line 1581
    invoke-static {v0}, Landroidx/core/view/ViewCompat;->getMeasuredState(Landroid/view/View;)I

    move-result v0

    .line 1580
    invoke-static {v12, v0}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v6

    .line 1584
    move/from16 v0, v20

    goto :goto_11

    .end local v12    # "childState":I
    .restart local v6    # "childState":I
    :cond_17
    move v12, v6

    move/from16 v0, v20

    .end local v20    # "titleHeight":I
    .local v0, "titleHeight":I
    :goto_11
    add-int/2addr v10, v11

    .line 1585
    invoke-static {v13, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1589
    .end local v13    # "height":I
    .local v1, "height":I
    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->getPaddingLeft()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->getPaddingRight()I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v10, v2

    .line 1590
    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->getPaddingTop()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->getPaddingBottom()I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    .line 1592
    nop

    .line 1593
    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->getSuggestedMinimumWidth()I

    move-result v2

    invoke-static {v10, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    const/high16 v3, -0x1000000

    and-int/2addr v3, v6

    .line 1592
    invoke-static {v2, v8, v3}, Landroidx/core/view/ViewCompat;->resolveSizeAndState(III)I

    move-result v2

    .line 1595
    .local v2, "measuredWidth":I
    nop

    .line 1596
    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->getSuggestedMinimumHeight()I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    shl-int/lit8 v4, v6, 0x10

    .line 1595
    invoke-static {v3, v9, v4}, Landroidx/core/view/ViewCompat;->resolveSizeAndState(III)I

    move-result v3

    .line 1599
    .local v3, "measuredHeight":I
    invoke-direct/range {p0 .. p0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->shouldCollapse()Z

    move-result v4

    if-eqz v4, :cond_18

    move/from16 v4, v24

    goto :goto_12

    :cond_18
    move v4, v3

    :goto_12
    invoke-virtual {v7, v2, v4}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->setMeasuredDimension(II)V

    .line 1600
    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 2
    .param p1, "layoutDirection"    # I

    .line 466
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 467
    invoke-super {p0, p1}, Landroidx/appcompat/widget/Toolbar;->onRtlPropertiesChanged(I)V

    .line 469
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mContentInsets:Lcom/coui/appcompat/util/COUIRtlSpacingHelper;

    if-eqz v0, :cond_2

    .line 470
    iget-object v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mContentInsets:Lcom/coui/appcompat/util/COUIRtlSpacingHelper;

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/coui/appcompat/util/COUIRtlSpacingHelper;->setDirection(Z)V

    .line 472
    :cond_2
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 1164
    invoke-static {p1}, Landroidx/core/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v0

    .line 1165
    .local v0, "action":I
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1166
    iput-boolean v1, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mEatingTouch:Z

    .line 1169
    :cond_0
    iget-boolean v2, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mEatingTouch:Z

    const/4 v3, 0x1

    if-nez v2, :cond_1

    .line 1170
    invoke-super {p0, p1}, Landroidx/appcompat/widget/Toolbar;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    .line 1171
    .local v2, "handled":Z
    if-nez v0, :cond_1

    if-nez v2, :cond_1

    .line 1172
    iput-boolean v3, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mEatingTouch:Z

    .line 1176
    .end local v2    # "handled":Z
    :cond_1
    if-eq v0, v3, :cond_2

    const/4 v2, 0x3

    if-ne v0, v2, :cond_3

    .line 1177
    :cond_2
    iput-boolean v1, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mEatingTouch:Z

    .line 1180
    :cond_3
    return v3
.end method

.method public refresh()V
    .locals 5

    .line 2483
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcoui/support/appcompat/R$styleable;->ActionBar:[I

    sget v2, Lcoui/support/appcompat/R$attr;->actionBarStyle:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v1, v2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 2486
    .local v0, "actionBarArray":Landroid/content/res/TypedArray;
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcoui/support/appcompat/R$drawable;->coui_toolbar_menu_icon_more:I

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 2487
    .local v1, "overflowIcon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0, v1}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->setOverflowIcon(Landroid/graphics/drawable/Drawable;)V

    .line 2489
    sget v2, Lcoui/support/appcompat/R$styleable;->ActionBar_homeAsUpIndicator:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 2490
    .local v2, "navigationIcon":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_0

    .line 2491
    invoke-virtual {p0, v2}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 2494
    :cond_0
    iget-object v3, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    instance-of v3, v3, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;

    if-eqz v3, :cond_1

    .line 2495
    iget-object v3, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    check-cast v3, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;

    invoke-virtual {v3}, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;->refresh()V

    .line 2498
    :cond_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 2499
    return-void
.end method

.method public setCollapsible(Z)V
    .locals 0
    .param p1, "collapsible"    # Z

    .line 2177
    iput-boolean p1, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mCollapsible:Z

    .line 2178
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->requestLayout()V

    .line 2179
    return-void
.end method

.method public setContentInsetsAbsolute(II)V
    .locals 1
    .param p1, "contentInsetLeft"    # I
    .param p2, "contentInsetRight"    # I

    .line 1061
    iget-object v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mContentInsets:Lcom/coui/appcompat/util/COUIRtlSpacingHelper;

    invoke-virtual {v0, p1, p2}, Lcom/coui/appcompat/util/COUIRtlSpacingHelper;->setAbsolute(II)V

    .line 1062
    return-void
.end method

.method public setContentInsetsRelative(II)V
    .locals 1
    .param p1, "contentInsetStart"    # I
    .param p2, "contentInsetEnd"    # I

    .line 1003
    iget-object v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mContentInsets:Lcom/coui/appcompat/util/COUIRtlSpacingHelper;

    invoke-virtual {v0, p1, p2}, Lcom/coui/appcompat/util/COUIRtlSpacingHelper;->setRelative(II)V

    .line 1004
    return-void
.end method

.method public setIsTitleCenterStyle(Z)V
    .locals 2
    .param p1, "isTitleCenterStyle"    # Z

    .line 2424
    invoke-direct {p0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->ensureMenuView()V

    .line 2425
    iput-boolean p1, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mIsTitleCenterStyle:Z

    .line 2426
    iget-object v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$LayoutParams;

    .line 2427
    .local v0, "lp":Lcom/coui/appcompat/widget/toolbar/COUIToolbar$LayoutParams;
    iget-boolean v1, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mIsTitleCenterStyle:Z

    if-eqz v1, :cond_0

    .line 2428
    const/4 v1, -0x1

    iput v1, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$LayoutParams;->width:I

    goto :goto_0

    .line 2430
    :cond_0
    const/4 v1, -0x2

    iput v1, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$LayoutParams;->width:I

    .line 2432
    :goto_0
    iget-object v1, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/ActionMenuView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2433
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->requestLayout()V

    .line 2434
    return-void
.end method

.method public setLogo(I)V
    .locals 1
    .param p1, "resId"    # I

    .line 484
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->setLogo(Landroid/graphics/drawable/Drawable;)V

    .line 485
    return-void
.end method

.method public setLogo(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 506
    if-eqz p1, :cond_0

    .line 507
    invoke-direct {p0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->ensureLogoView()V

    .line 508
    iget-object v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mLogoView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_1

    .line 509
    iget-object v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mLogoView:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->addSystemView(Landroid/view/View;)V

    .line 510
    iget-object v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mLogoView:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->updateChildVisibilityForExpandedActionView(Landroid/view/View;)V

    goto :goto_0

    .line 512
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mLogoView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mLogoView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 513
    iget-object v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mLogoView:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->removeView(Landroid/view/View;)V

    .line 515
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mLogoView:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 516
    iget-object v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mLogoView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 518
    :cond_2
    return-void
.end method

.method public setLogoDescription(I)V
    .locals 1
    .param p1, "resId"    # I

    .line 540
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->setLogoDescription(Ljava/lang/CharSequence;)V

    .line 541
    return-void
.end method

.method public setLogoDescription(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "description"    # Ljava/lang/CharSequence;

    .line 552
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 553
    invoke-direct {p0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->ensureLogoView()V

    .line 555
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mLogoView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 556
    iget-object v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mLogoView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 558
    :cond_1
    return-void
.end method

.method public setMenuCallbacks(Landroidx/appcompat/view/menu/MenuPresenter$Callback;Landroidx/appcompat/view/menu/MenuBuilder$Callback;)V
    .locals 0
    .param p1, "pcb"    # Landroidx/appcompat/view/menu/MenuPresenter$Callback;
    .param p2, "mcb"    # Landroidx/appcompat/view/menu/MenuBuilder$Callback;

    .line 2186
    iput-object p1, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mActionMenuPresenterCallback:Landroidx/appcompat/view/menu/MenuPresenter$Callback;

    .line 2187
    iput-object p2, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mMenuBuilderCallback:Landroidx/appcompat/view/menu/MenuBuilder$Callback;

    .line 2188
    return-void
.end method

.method public setMinTitleTextSize(F)V
    .locals 1
    .param p1, "minSize"    # F

    .line 2457
    iget v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mTextMaxSize:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    .line 2458
    iget p1, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mTextMaxSize:F

    .line 2460
    :cond_0
    iput p1, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mTextMinSize:F

    .line 2461
    return-void
.end method

.method public setMinimumHeight(I)V
    .locals 0
    .param p1, "minHeight"    # I

    .line 2193
    iput p1, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mMinHeight:I

    .line 2195
    invoke-super {p0, p1}, Landroidx/appcompat/widget/Toolbar;->setMinimumHeight(I)V

    .line 2196
    return-void
.end method

.method public setNavigationContentDescription(I)V
    .locals 1
    .param p1, "resId"    # I

    .line 814
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->setNavigationContentDescription(Ljava/lang/CharSequence;)V

    .line 815
    return-void
.end method

.method public setNavigationContentDescription(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "description"    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 826
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 827
    invoke-direct {p0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->ensureNavButtonView()V

    .line 829
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mNavButtonView:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    .line 830
    iget-object v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 832
    :cond_1
    return-void
.end method

.method public setNavigationIcon(I)V
    .locals 1
    .param p1, "resId"    # I

    .line 847
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 848
    return-void
.end method

.method public setNavigationIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 863
    if-eqz p1, :cond_0

    .line 864
    invoke-direct {p0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->ensureNavButtonView()V

    .line 865
    iget-object v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_1

    .line 866
    iget-object v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-direct {p0, v0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->addSystemView(Landroid/view/View;)V

    .line 867
    iget-object v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-direct {p0, v0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->updateChildVisibilityForExpandedActionView(Landroid/view/View;)V

    goto :goto_0

    .line 869
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mNavButtonView:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 870
    iget-object v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->removeView(Landroid/view/View;)V

    .line 872
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mNavButtonView:Landroid/widget/ImageButton;

    if-eqz v0, :cond_2

    .line 873
    iget-object v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 875
    :cond_2
    return-void
.end method

.method public setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .line 897
    invoke-direct {p0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->ensureNavButtonView()V

    .line 898
    iget-object v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 899
    return-void
.end method

.method public setOnMenuItemClickListener(Landroidx/appcompat/widget/Toolbar$OnMenuItemClickListener;)V
    .locals 0
    .param p1, "listener"    # Landroidx/appcompat/widget/Toolbar$OnMenuItemClickListener;

    .line 983
    iput-object p1, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mOnMenuItemClickListener:Landroidx/appcompat/widget/Toolbar$OnMenuItemClickListener;

    .line 984
    return-void
.end method

.method public setOverflowIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 921
    invoke-direct {p0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->ensureMenu()V

    .line 922
    iget-object v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ActionMenuView;->setOverflowIcon(Landroid/graphics/drawable/Drawable;)V

    .line 923
    return-void
.end method

.method public setPopupTheme(I)V
    .locals 2
    .param p1, "resId"    # I

    .line 397
    iget v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mPopupTheme:I

    if-eq v0, p1, :cond_1

    .line 398
    iput p1, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mPopupTheme:I

    .line 399
    if-nez p1, :cond_0

    .line 400
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mPopupContext:Landroid/content/Context;

    goto :goto_0

    .line 402
    :cond_0
    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mPopupContext:Landroid/content/Context;

    .line 405
    :cond_1
    :goto_0
    return-void
.end method

.method public setPopupWindowOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/widget/PopupWindow$OnDismissListener;

    .line 2477
    iget-object v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    instance-of v0, v0, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;

    if-eqz v0, :cond_0

    .line 2478
    iget-object v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    check-cast v0, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;->setPopupWindowOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 2480
    :cond_0
    return-void
.end method

.method public setRedDot(II)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "number"    # I

    .line 2465
    iget-object v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    check-cast v0, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;

    invoke-virtual {v0, p1, p2}, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;->setRedDot(II)V

    .line 2466
    return-void
.end method

.method public setSearchView(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .line 419
    const/4 v0, 0x0

    .line 420
    .local v0, "newLp":Lcom/coui/appcompat/widget/toolbar/COUIToolbar$LayoutParams;
    if-eqz p1, :cond_0

    .line 421
    new-instance v1, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$LayoutParams;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    move-object v0, v1

    .line 423
    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->setSearchView(Landroid/view/View;Lcom/coui/appcompat/widget/toolbar/COUIToolbar$LayoutParams;)V

    .line 424
    return-void
.end method

.method public setSearchView(Landroid/view/View;Lcom/coui/appcompat/widget/toolbar/COUIToolbar$LayoutParams;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "lp"    # Lcom/coui/appcompat/widget/toolbar/COUIToolbar$LayoutParams;

    .line 437
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 438
    iput-boolean v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mHasSearchViewFlag:Z

    .line 439
    return-void

    .line 441
    :cond_0
    const/4 v1, 0x1

    if-eqz p1, :cond_1

    move v2, v1

    goto :goto_0

    :cond_1
    move v2, v0

    :goto_0
    iput-boolean v2, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mHasSearchViewFlag:Z

    .line 442
    new-instance v2, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$LayoutParams;

    invoke-direct {v2, p2}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$LayoutParams;-><init>(Lcom/coui/appcompat/widget/toolbar/COUIToolbar$LayoutParams;)V

    .line 443
    .local v2, "newLp":Lcom/coui/appcompat/widget/toolbar/COUIToolbar$LayoutParams;
    iput-boolean v1, v2, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$LayoutParams;->mTypeSearch:Z

    .line 444
    iput v0, v2, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$LayoutParams;->mViewType:I

    .line 445
    invoke-virtual {p0, p1, v0, v2}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 446
    return-void
.end method

.method public setSubtitle(I)V
    .locals 1
    .param p1, "resId"    # I

    .line 684
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 685
    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "subtitle"    # Ljava/lang/CharSequence;

    .line 695
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 696
    iget-object v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mSubtitleTextView:Landroid/widget/TextView;

    if-nez v0, :cond_1

    .line 697
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 698
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mSubtitleTextView:Landroid/widget/TextView;

    .line 699
    iget-object v1, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->setSingleLine()V

    .line 700
    iget-object v1, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mSubtitleTextView:Landroid/widget/TextView;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 701
    iget v1, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mSubtitleTextAppearance:I

    if-eqz v1, :cond_0

    .line 702
    iget-object v1, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mSubtitleTextView:Landroid/widget/TextView;

    iget v2, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mSubtitleTextAppearance:I

    invoke-virtual {v1, v0, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 704
    :cond_0
    iget v1, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mSubtitleTextColor:I

    if-eqz v1, :cond_1

    .line 705
    iget-object v1, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mSubtitleTextView:Landroid/widget/TextView;

    iget v2, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mSubtitleTextColor:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 708
    .end local v0    # "context":Landroid/content/Context;
    :cond_1
    iget-object v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_3

    .line 709
    iget-object v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->addSystemView(Landroid/view/View;)V

    .line 710
    iget-object v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->updateChildVisibilityForExpandedActionView(Landroid/view/View;)V

    goto :goto_0

    .line 712
    :cond_2
    iget-object v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mSubtitleTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 713
    iget-object v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->removeView(Landroid/view/View;)V

    .line 715
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mSubtitleTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    .line 716
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_4

    .line 717
    iget-object v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mSubtitleTextView:Landroid/widget/TextView;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextAlignment(I)V

    .line 719
    :cond_4
    iget-object v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 721
    :cond_5
    iput-object p1, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mSubtitleText:Ljava/lang/CharSequence;

    .line 722
    return-void
.end method

.method public setSubtitleTextAppearance(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resId"    # I

    .line 763
    iput p2, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mSubtitleTextAppearance:I

    .line 764
    iget-object v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mSubtitleTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 765
    iget-object v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1, p2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 767
    :cond_0
    return-void
.end method

.method public setSubtitleTextColor(I)V
    .locals 1
    .param p1, "color"    # I

    .line 787
    iput p1, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mSubtitleTextColor:I

    .line 788
    iget-object v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mSubtitleTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 789
    iget-object v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 791
    :cond_0
    return-void
.end method

.method public setTitle(I)V
    .locals 1
    .param p1, "resId"    # I

    .line 610
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 611
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 5
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 622
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 623
    iget-object v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mTitleTextView:Landroid/widget/TextView;

    if-nez v0, :cond_2

    .line 624
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 625
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mTitleTextView:Landroid/widget/TextView;

    .line 627
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->generateDefaultLayoutParams()Lcom/coui/appcompat/widget/toolbar/COUIToolbar$LayoutParams;

    move-result-object v1

    .line 628
    .local v1, "lp":Lcom/coui/appcompat/widget/toolbar/COUIToolbar$LayoutParams;
    iget v2, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mTitleMarginBottom:I

    iput v2, v1, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$LayoutParams;->bottomMargin:I

    .line 629
    const v2, 0x800005

    iget v3, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mButtonGravity:I

    and-int/lit8 v3, v3, 0x70

    or-int/2addr v2, v3

    iput v2, v1, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$LayoutParams;->gravity:I

    .line 630
    iget-object v2, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 632
    iget-object v2, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->setSingleLine()V

    .line 633
    iget-object v2, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mTitleTextView:Landroid/widget/TextView;

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 634
    iget v2, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mTitleTextAppearance:I

    if-eqz v2, :cond_0

    .line 635
    iget-object v2, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mTitleTextView:Landroid/widget/TextView;

    iget v3, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mTitleTextAppearance:I

    invoke-virtual {v2, v0, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 637
    :cond_0
    iget v2, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mTitleTextColor:I

    if-eqz v2, :cond_1

    .line 638
    iget-object v2, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mTitleTextView:Landroid/widget/TextView;

    iget v3, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mTitleTextColor:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 643
    :cond_1
    iget v2, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mTitleType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 644
    iget-object v2, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTextSize()F

    move-result v2

    .line 645
    .local v2, "textSize":F
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->fontScale:F

    const/4 v4, 0x2

    invoke-static {v2, v3, v4}, Lcom/coui/appcompat/util/COUIChangeTextUtil;->getSuitableFontSize(FFI)F

    move-result v2

    .line 646
    iget-object v3, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mTitleTextView:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 650
    .end local v0    # "context":Landroid/content/Context;
    .end local v1    # "lp":Lcom/coui/appcompat/widget/toolbar/COUIToolbar$LayoutParams;
    .end local v2    # "textSize":F
    :cond_2
    iget-object v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_4

    .line 651
    iget-object v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->addSystemView(Landroid/view/View;)V

    .line 652
    iget-object v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->updateChildVisibilityForExpandedActionView(Landroid/view/View;)V

    goto :goto_0

    .line 654
    :cond_3
    iget-object v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mTitleTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 655
    iget-object v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->removeView(Landroid/view/View;)V

    .line 657
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mTitleTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_6

    .line 658
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_5

    .line 659
    iget-object v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mTitleTextView:Landroid/widget/TextView;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextAlignment(I)V

    .line 661
    :cond_5
    iget-object v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 662
    iget-object v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextSize()F

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mTitleTextSize:F

    .line 664
    :cond_6
    iput-object p1, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mTitleText:Ljava/lang/CharSequence;

    .line 665
    return-void
.end method

.method public setTitleTextAppearance(Landroid/content/Context;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resId"    # I

    .line 733
    iput p2, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mTitleTextAppearance:I

    .line 734
    iget-object v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mTitleTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 735
    iget-object v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1, p2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 738
    iget v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mTitleType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 739
    iget-object v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextSize()F

    move-result v0

    .line 740
    .local v0, "textSize":F
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->fontScale:F

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lcom/coui/appcompat/util/COUIChangeTextUtil;->getSuitableFontSize(FFI)F

    move-result v0

    .line 741
    iget-object v1, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mTitleTextView:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 747
    .end local v0    # "textSize":F
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextSize()F

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mTextMaxSize:F

    .line 750
    iget-object v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextSize()F

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mTitleTextSize:F

    .line 752
    :cond_1
    return-void
.end method

.method public setTitleTextColor(I)V
    .locals 1
    .param p1, "color"    # I

    .line 775
    iput p1, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mTitleTextColor:I

    .line 776
    iget-object v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mTitleTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 777
    iget-object v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 779
    :cond_0
    return-void
.end method

.method public showOverflowMenu()Z
    .locals 1

    .line 2470
    iget-object v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    instance-of v0, v0, Lcom/coui/appcompat/widget/toolbar/COUIActionMenuView;

    if-eqz v0, :cond_0

    .line 2471
    iget-object v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuView;->showOverflowMenu()Z

    move-result v0

    return v0

    .line 2473
    :cond_0
    invoke-super {p0}, Landroidx/appcompat/widget/Toolbar;->showOverflowMenu()Z

    move-result v0

    return v0
.end method
