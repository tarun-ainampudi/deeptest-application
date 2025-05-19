.class public Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;
.super Landroid/widget/LinearLayout;
.source "COUIFloatingButtonLabel.java"


# static fields
.field private static final DEFAULT_ALPHA_VALUE_SHADOW:F = 0.3f

.field private static final DEFAULT_ELEVATION_FLOATING_BUTTON:I = 0x18

.field private static final DEFAULT_PRESS_GUARANTEED_ANIMATION_VALUE:F = 0.98f

.field private static final DEFAULT_RADIUS_VALUE:F = 5.67f

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mChildFloatingButton:Lcom/google/android/material/imageview/ShapeableImageView;

.field private mFloatingButtonItem:Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mIsLabelEnabled:Z

.field private mLabelBackground:Landroidx/cardview/widget/CardView;

.field private mLabelCardViewElevation:F

.field private mLabelTextView:Landroid/widget/TextView;

.field private mOnActionSelectedListener:Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$OnActionSelectedListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mPressAnimationRecorder:Landroid/animation/ValueAnimator;

.field private mPressValue:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 88
    const-class v0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 109
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 110
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 111
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 114
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 115
    invoke-direct {p0, p1, p2}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 116
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "defStyleAttr"    # I

    .line 119
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 120
    invoke-direct {p0, p1, p2}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 121
    return-void
.end method

.method static synthetic access$000(Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;)V
    .locals 0
    .param p0, "x0"    # Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;

    .line 87
    invoke-direct {p0}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;->handleOnClickFloatingButton()V

    return-void
.end method

.method static synthetic access$100(Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;)Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$OnActionSelectedListener;
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;

    .line 87
    iget-object v0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;->mOnActionSelectedListener:Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$OnActionSelectedListener;

    return-object v0
.end method

.method static synthetic access$200(Landroid/content/Context;F)I
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # F

    .line 87
    invoke-static {p0, p1}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;->dpToPx(Landroid/content/Context;F)I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;)V
    .locals 0
    .param p0, "x0"    # Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;

    .line 87
    invoke-direct {p0}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;->animatePress()V

    return-void
.end method

.method static synthetic access$400(Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;)V
    .locals 0
    .param p0, "x0"    # Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;

    .line 87
    invoke-direct {p0}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;->animateNormal()V

    return-void
.end method

.method static synthetic access$500(Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;)F
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;

    .line 87
    iget v0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;->mPressValue:F

    return v0
.end method

.method static synthetic access$502(Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;F)F
    .locals 0
    .param p0, "x0"    # Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;
    .param p1, "x1"    # F

    .line 87
    iput p1, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;->mPressValue:F

    return p1
.end method

.method static synthetic access$600(Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;)Landroid/animation/ValueAnimator;
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;

    .line 87
    iget-object v0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;->mPressAnimationRecorder:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method private animateNormal()V
    .locals 3

    .line 483
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;->clearAnimation()V

    .line 484
    invoke-direct {p0}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;->cancelRecorder()V

    .line 486
    iget-object v0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;->mChildFloatingButton:Lcom/google/android/material/imageview/ShapeableImageView;

    iget-object v1, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;->mChildFloatingButton:Lcom/google/android/material/imageview/ShapeableImageView;

    iget v2, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;->mPressValue:F

    invoke-static {v1, v2}, Lcom/coui/appcompat/util/COUIPressFeedbackUtil;->generateResumeAnimation(Landroid/view/View;F)Landroid/view/animation/ScaleAnimation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/imageview/ShapeableImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 487
    return-void
.end method

.method private animatePress()V
    .locals 3

    .line 456
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;->clearAnimation()V

    .line 457
    invoke-direct {p0}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;->cancelRecorder()V

    .line 459
    iget-object v0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;->mChildFloatingButton:Lcom/google/android/material/imageview/ShapeableImageView;

    invoke-static {v0}, Lcom/coui/appcompat/util/COUIPressFeedbackUtil;->generatePressAnimation(Landroid/view/View;)Landroid/view/animation/ScaleAnimation;

    move-result-object v0

    .line 460
    .local v0, "pressAnimation":Landroid/view/animation/ScaleAnimation;
    invoke-static {}, Lcom/coui/appcompat/util/COUIPressFeedbackUtil;->generatePressAnimationRecord()Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;->mPressAnimationRecorder:Landroid/animation/ValueAnimator;

    .line 461
    iget-object v1, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;->mPressAnimationRecorder:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel$6;

    invoke-direct {v2, p0}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel$6;-><init>(Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 471
    new-instance v1, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel$7;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel$7;-><init>(Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 478
    iget-object v1, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;->mChildFloatingButton:Lcom/google/android/material/imageview/ShapeableImageView;

    invoke-virtual {v1, v0}, Lcom/google/android/material/imageview/ShapeableImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 479
    return-void
.end method

.method private cancelRecorder()V
    .locals 1

    .line 490
    iget-object v0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;->mPressAnimationRecorder:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;->mPressAnimationRecorder:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 491
    iget-object v0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;->mPressAnimationRecorder:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 493
    :cond_0
    return-void
.end method

.method private childFloatingButtonTouch()V
    .locals 2

    .line 427
    iget-object v0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;->mChildFloatingButton:Lcom/google/android/material/imageview/ShapeableImageView;

    new-instance v1, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel$5;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel$5;-><init>(Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/imageview/ShapeableImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 443
    return-void
.end method

.method private static dpToPx(Landroid/content/Context;F)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dp"    # F

    .line 496
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 497
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    const/4 v1, 0x1

    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    return v1
.end method

.method private handleOnClickFloatingButton()V
    .locals 2

    .line 446
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;->getFloatingButtonItem()Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem;

    move-result-object v0

    .line 447
    .local v0, "COUIFloatingButtonItem":Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem;
    iget-object v1, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;->mOnActionSelectedListener:Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$OnActionSelectedListener;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 449
    iget-object v1, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;->mOnActionSelectedListener:Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$OnActionSelectedListener;

    invoke-interface {v1, v0}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$OnActionSelectedListener;->onActionSelected(Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem;)Z

    .line 451
    :cond_0
    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 283
    sget v0, Lcoui/support/appcompat/R$layout;->coui_floating_button_item_label:I

    invoke-static {p1, v0, p0}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 285
    .local v0, "rootView":Landroid/view/View;
    sget v1, Lcoui/support/appcompat/R$id;->coui_floating_button_child_fab:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/imageview/ShapeableImageView;

    iput-object v1, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;->mChildFloatingButton:Lcom/google/android/material/imageview/ShapeableImageView;

    .line 286
    sget v1, Lcoui/support/appcompat/R$id;->coui_floating_button_label:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;->mLabelTextView:Landroid/widget/TextView;

    .line 287
    sget v1, Lcoui/support/appcompat/R$id;->coui_floating_button_label_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/cardview/widget/CardView;

    iput-object v1, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;->mLabelBackground:Landroidx/cardview/widget/CardView;

    .line 288
    iget-object v1, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;->mChildFloatingButton:Lcom/google/android/material/imageview/ShapeableImageView;

    const/high16 v2, 0x41c00000    # 24.0f

    invoke-virtual {v1, v2}, Lcom/google/android/material/imageview/ShapeableImageView;->setElevation(F)V

    .line 289
    new-instance v1, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel$3;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel$3;-><init>(Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;)V

    .line 296
    .local v1, "viewOutlineProvider":Landroid/view/ViewOutlineProvider;
    iget-object v3, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;->mChildFloatingButton:Lcom/google/android/material/imageview/ShapeableImageView;

    invoke-virtual {v3, v1}, Lcom/google/android/material/imageview/ShapeableImageView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 297
    iget-object v3, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;->mChildFloatingButton:Lcom/google/android/material/imageview/ShapeableImageView;

    invoke-static {}, Lcom/google/android/material/shape/ShapeAppearanceModel;->builder()Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object v4

    sget-object v5, Lcom/google/android/material/shape/ShapeAppearanceModel;->PILL:Lcom/google/android/material/shape/CornerSize;

    invoke-virtual {v4, v5}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->setAllCornerSizes(Lcom/google/android/material/shape/CornerSize;)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->build()Lcom/google/android/material/shape/ShapeAppearanceModel;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/material/imageview/ShapeableImageView;->setShapeAppearanceModel(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    .line 298
    iget-object v3, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;->mLabelBackground:Landroidx/cardview/widget/CardView;

    invoke-virtual {v3, v2}, Landroidx/cardview/widget/CardView;->setCardElevation(F)V

    .line 299
    new-instance v2, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel$4;

    invoke-direct {v2, p0}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel$4;-><init>(Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;)V

    .line 306
    .local v2, "labelViewOutlineProvider":Landroid/view/ViewOutlineProvider;
    iget-object v3, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;->mLabelBackground:Landroidx/cardview/widget/CardView;

    invoke-virtual {v3, v2}, Landroidx/cardview/widget/CardView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 307
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;->setOrientation(I)V

    .line 308
    invoke-virtual {p0, v3}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;->setClipChildren(Z)V

    .line 309
    invoke-virtual {p0, v3}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;->setClipToPadding(Z)V

    .line 311
    sget-object v4, Lcoui/support/appcompat/R$styleable;->COUIFloatingButtonLabel:[I

    invoke-virtual {p1, p2, v4, v3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 315
    .local v4, "attr":Landroid/content/res/TypedArray;
    :try_start_0
    sget v5, Lcoui/support/appcompat/R$styleable;->COUIFloatingButtonLabel_srcCompat:I

    const/high16 v6, -0x80000000

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    .line 316
    .local v5, "src":I
    if-ne v5, v6, :cond_0

    .line 317
    sget v7, Lcoui/support/appcompat/R$styleable;->COUIFloatingButtonLabel_android_src:I

    invoke-virtual {v4, v7, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    move v5, v6

    .line 319
    :cond_0
    new-instance v6, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem$Builder;

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;->getId()I

    move-result v7

    invoke-direct {v6, v7, v5}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem$Builder;-><init>(II)V

    .line 320
    .local v6, "builder":Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem$Builder;
    sget v7, Lcoui/support/appcompat/R$styleable;->COUIFloatingButtonLabel_fabLabel:I

    invoke-virtual {v4, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 321
    .local v7, "labelText":Ljava/lang/String;
    invoke-virtual {v6, v7}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem$Builder;->setLabel(Ljava/lang/String;)Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem$Builder;

    .line 322
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcoui/support/appcompat/R$color;->coui_floating_button_label_background_color:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    .line 323
    .local v8, "fabBackgroundColor":I
    sget v9, Lcoui/support/appcompat/R$styleable;->COUIFloatingButtonLabel_fabBackgroundColor:I

    invoke-virtual {v4, v9, v8}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v9

    move v8, v9

    .line 324
    invoke-static {v8}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem$Builder;->setFabBackgroundColor(Landroid/content/res/ColorStateList;)Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem$Builder;

    .line 325
    const/high16 v9, -0x80000000

    .line 326
    .local v9, "labelColor":I
    sget v10, Lcoui/support/appcompat/R$styleable;->COUIFloatingButtonLabel_fabLabelColor:I

    invoke-virtual {v4, v10, v9}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v10

    move v9, v10

    .line 327
    invoke-static {v9}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v10

    invoke-virtual {v6, v10}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem$Builder;->setLabelColor(Landroid/content/res/ColorStateList;)Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem$Builder;

    .line 328
    const/high16 v10, -0x80000000

    .line 329
    .local v10, "labelBackgroundColor":I
    sget v11, Lcoui/support/appcompat/R$styleable;->COUIFloatingButtonLabel_fabLabelBackgroundColor:I

    invoke-virtual {v4, v11, v10}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v11

    move v10, v11

    .line 331
    invoke-static {v10}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v11

    invoke-virtual {v6, v11}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem$Builder;->setLabelBackgroundColor(Landroid/content/res/ColorStateList;)Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem$Builder;

    .line 332
    invoke-virtual {v6}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem$Builder;->create()Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;->setFloatingButtonItem(Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 336
    .end local v5    # "src":I
    .end local v6    # "builder":Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem$Builder;
    .end local v7    # "labelText":Ljava/lang/String;
    .end local v8    # "fabBackgroundColor":I
    .end local v9    # "labelColor":I
    .end local v10    # "labelBackgroundColor":I
    :catchall_0
    move-exception v3

    goto :goto_1

    .line 333
    :catch_0
    move-exception v5

    .line 334
    .local v5, "e":Ljava/lang/Exception;
    :try_start_1
    sget-object v6, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failure setting FabWithLabelView icon"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 336
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_0
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 337
    nop

    .line 339
    invoke-virtual {p0, v3}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;->setClipChildren(Z)V

    .line 340
    return-void

    .line 336
    :goto_1
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    throw v3
.end method

.method private setChildFloatingButtonSize()V
    .locals 6

    .line 346
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcoui/support/appcompat/R$dimen;->coui_floating_button_fab_normal_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 347
    .local v0, "normalFabSizePx":I
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcoui/support/appcompat/R$dimen;->coui_floating_button_fab_side_margin:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 348
    .local v1, "fabSideMarginPx":I
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcoui/support/appcompat/R$dimen;->coui_floating_button_item_normal_bottom_margin:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 350
    .local v2, "fabBottomSideMarginPx":I
    iget-object v3, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;->mChildFloatingButton:Lcom/google/android/material/imageview/ShapeableImageView;

    invoke-virtual {v3}, Lcom/google/android/material/imageview/ShapeableImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 351
    .local v3, "fabLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;->getOrientation()I

    move-result v4

    const/4 v5, -0x2

    if-nez v4, :cond_0

    .line 352
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 353
    .local v4, "rootLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    const v5, 0x800005

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    goto :goto_0

    .line 355
    .end local v4    # "rootLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v0, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 356
    .restart local v4    # "rootLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v5, 0x10

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 357
    const/4 v5, 0x0

    invoke-virtual {v3, v5, v5, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 360
    :goto_0
    invoke-virtual {p0, v4}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 361
    iget-object v5, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;->mChildFloatingButton:Lcom/google/android/material/imageview/ShapeableImageView;

    invoke-virtual {v5, v3}, Lcom/google/android/material/imageview/ShapeableImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 362
    return-void
.end method

.method private setFabBackgroundColor(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "color"    # Landroid/content/res/ColorStateList;

    .line 393
    iget-object v0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;->mChildFloatingButton:Lcom/google/android/material/imageview/ShapeableImageView;

    invoke-virtual {v0, p1}, Lcom/google/android/material/imageview/ShapeableImageView;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 394
    return-void
.end method

.method private setFabIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "mDrawable"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 370
    iget-object v0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;->mChildFloatingButton:Lcom/google/android/material/imageview/ShapeableImageView;

    invoke-virtual {v0, p1}, Lcom/google/android/material/imageview/ShapeableImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 371
    return-void
.end method

.method private setLabel(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "sequence"    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 379
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 380
    iget-object v0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;->mLabelTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 381
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;->getOrientation()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x1

    nop

    :cond_0
    invoke-direct {p0, v1}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;->setLabelEnabled(Z)V

    goto :goto_0

    .line 383
    :cond_1
    invoke-direct {p0, v1}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;->setLabelEnabled(Z)V

    .line 385
    :goto_0
    return-void
.end method

.method private setLabelBackgroundColor(Landroid/content/res/ColorStateList;)V
    .locals 3
    .param p1, "color"    # Landroid/content/res/ColorStateList;

    .line 413
    const/high16 v0, -0x80000000

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    .line 414
    iget-object v0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;->mLabelBackground:Landroidx/cardview/widget/CardView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroidx/cardview/widget/CardView;->setCardBackgroundColor(I)V

    .line 415
    iget-object v0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;->mLabelBackground:Landroidx/cardview/widget/CardView;

    invoke-virtual {v0}, Landroidx/cardview/widget/CardView;->getElevation()F

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;->mLabelCardViewElevation:F

    .line 416
    iget-object v0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;->mLabelBackground:Landroidx/cardview/widget/CardView;

    invoke-virtual {v0, v1}, Landroidx/cardview/widget/CardView;->setElevation(F)V

    goto :goto_0

    .line 418
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;->mLabelBackground:Landroidx/cardview/widget/CardView;

    invoke-virtual {v0, p1}, Landroidx/cardview/widget/CardView;->setCardBackgroundColor(Landroid/content/res/ColorStateList;)V

    .line 419
    iget v0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;->mLabelCardViewElevation:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    .line 420
    iget-object v0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;->mLabelBackground:Landroidx/cardview/widget/CardView;

    iget v2, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;->mLabelCardViewElevation:F

    invoke-virtual {v0, v2}, Landroidx/cardview/widget/CardView;->setElevation(F)V

    .line 421
    iput v1, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;->mLabelCardViewElevation:F

    .line 424
    :cond_1
    :goto_0
    return-void
.end method

.method private setLabelEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .line 163
    iput-boolean p1, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;->mIsLabelEnabled:Z

    .line 164
    iget-object v0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;->mLabelBackground:Landroidx/cardview/widget/CardView;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroidx/cardview/widget/CardView;->setVisibility(I)V

    .line 165
    return-void
.end method

.method private setLabelTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "color"    # Landroid/content/res/ColorStateList;

    .line 405
    iget-object v0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;->mLabelTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 406
    return-void
.end method


# virtual methods
.method public getChildFloatingButton()Landroid/widget/ImageView;
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;->mChildFloatingButton:Lcom/google/android/material/imageview/ShapeableImageView;

    return-object v0
.end method

.method public getDrawableFilter(I)Landroid/graphics/PorterDuffColorFilter;
    .locals 2
    .param p1, "color"    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 397
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, p1, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    return-object v0
.end method

.method public getFloatingButtonItem()Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem;
    .locals 2

    .line 195
    iget-object v0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;->mFloatingButtonItem:Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem;

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;->mFloatingButtonItem:Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem;

    return-object v0

    .line 196
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "SpeedDialActionItem not set yet!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getFloatingButtonItemBuilder()Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem$Builder;
    .locals 2

    .line 206
    new-instance v0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem$Builder;

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;->getFloatingButtonItem()Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem$Builder;-><init>(Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem;)V

    return-object v0
.end method

.method public getFloatingButtonLabelBackground()Landroidx/cardview/widget/CardView;
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;->mLabelBackground:Landroidx/cardview/widget/CardView;

    return-object v0
.end method

.method public getFloatingButtonLabelText()Landroid/widget/TextView;
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;->mLabelTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method public isLabelEnabled()Z
    .locals 1

    .line 156
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;->mIsLabelEnabled:Z

    return v0
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 146
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 147
    iget-object v0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;->mLabelTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 148
    iget-object v0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;->mChildFloatingButton:Lcom/google/android/material/imageview/ShapeableImageView;

    invoke-virtual {v0, p1}, Lcom/google/android/material/imageview/ShapeableImageView;->setEnabled(Z)V

    .line 149
    iget-object v0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;->mLabelBackground:Landroidx/cardview/widget/CardView;

    invoke-virtual {v0, p1}, Landroidx/cardview/widget/CardView;->setEnabled(Z)V

    .line 150
    return-void
.end method

.method public setFloatingButtonItem(Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem;)V
    .locals 6
    .param p1, "actionItem"    # Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem;

    .line 216
    iput-object p1, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;->mFloatingButtonItem:Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem;

    .line 217
    invoke-virtual {p1}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem;->getFloatingButtonItemLocation()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;->setId(I)V

    .line 218
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem;->getLabel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;->setLabel(Ljava/lang/CharSequence;)V

    .line 219
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem;->getFabImageDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;->setFabIcon(Landroid/graphics/drawable/Drawable;)V

    .line 220
    invoke-virtual {p1}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem;->getFabBackgroundColor()Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 221
    .local v0, "fabBackgroundColor":Landroid/content/res/ColorStateList;
    const/high16 v1, -0x80000000

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    if-ne v0, v2, :cond_0

    .line 222
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcoui/support/appcompat/R$color;->coui_floating_button_label_background_color:I

    .line 223
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    .line 222
    invoke-static {v2, v3, v4}, Landroidx/core/content/res/ResourcesCompat;->getColorStateList(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 225
    :cond_0
    invoke-direct {p0, v0}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;->setFabBackgroundColor(Landroid/content/res/ColorStateList;)V

    .line 227
    invoke-virtual {p1}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem;->getLabelColor()Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 228
    .local v2, "labelColor":Landroid/content/res/ColorStateList;
    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    if-ne v2, v3, :cond_1

    .line 229
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcoui/support/appcompat/R$color;->coui_floating_button_label_text_color:I

    .line 230
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    .line 229
    invoke-static {v3, v4, v5}, Landroidx/core/content/res/ResourcesCompat;->getColorStateList(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 232
    :cond_1
    invoke-direct {p0, v2}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;->setLabelTextColor(Landroid/content/res/ColorStateList;)V

    .line 233
    invoke-virtual {p1}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem;->getLabelBackgroundColor()Landroid/content/res/ColorStateList;

    move-result-object v3

    .line 234
    .local v3, "labelBackgroundColor":Landroid/content/res/ColorStateList;
    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    if-ne v3, v1, :cond_2

    .line 235
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, Lcoui/support/appcompat/R$color;->coui_floating_button_label_background_color:I

    .line 236
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    .line 235
    invoke-static {v1, v4, v5}, Landroidx/core/content/res/ResourcesCompat;->getColorStateList(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v3

    .line 238
    :cond_2
    invoke-direct {p0, v3}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;->setLabelBackgroundColor(Landroid/content/res/ColorStateList;)V

    .line 239
    invoke-virtual {p1}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonItem;->isCOUIFloatingButtonExpandEnable()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 240
    invoke-direct {p0}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;->childFloatingButtonTouch()V

    .line 242
    :cond_3
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;->getChildFloatingButton()Landroid/widget/ImageView;

    move-result-object v1

    new-instance v4, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel$1;

    invoke-direct {v4, p0}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel$1;-><init>(Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;)V

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 248
    return-void
.end method

.method public setOnActionSelectedListener(Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$OnActionSelectedListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$OnActionSelectedListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 256
    iput-object p1, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;->mOnActionSelectedListener:Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$OnActionSelectedListener;

    .line 257
    iget-object v0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;->mOnActionSelectedListener:Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButton$OnActionSelectedListener;

    if-eqz v0, :cond_0

    .line 259
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;->getFloatingButtonLabelBackground()Landroidx/cardview/widget/CardView;

    move-result-object v0

    new-instance v1, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel$2;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel$2;-><init>(Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;)V

    invoke-virtual {v0, v1}, Landroidx/cardview/widget/CardView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 270
    :cond_0
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;->getChildFloatingButton()Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 271
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;->getFloatingButtonLabelBackground()Landroidx/cardview/widget/CardView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/cardview/widget/CardView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 274
    :goto_0
    return-void
.end method

.method public setOrientation(I)V
    .locals 1
    .param p1, "orientation"    # I

    .line 135
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 136
    invoke-direct {p0}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;->setChildFloatingButtonSize()V

    .line 137
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 138
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;->setLabelEnabled(Z)V

    goto :goto_0

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;->mLabelTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;->setLabel(Ljava/lang/CharSequence;)V

    .line 142
    :goto_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RestrictedApi"
        }
    .end annotation

    .line 126
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 127
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;->getChildFloatingButton()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 128
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;->isLabelEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/floatingbutton/COUIFloatingButtonLabel;->getFloatingButtonLabelBackground()Landroidx/cardview/widget/CardView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/cardview/widget/CardView;->setVisibility(I)V

    .line 131
    :cond_0
    return-void
.end method
