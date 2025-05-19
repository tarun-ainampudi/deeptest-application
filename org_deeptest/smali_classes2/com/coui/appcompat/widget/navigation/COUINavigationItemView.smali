.class public Lcom/coui/appcompat/widget/navigation/COUINavigationItemView;
.super Landroid/widget/FrameLayout;
.source "COUINavigationItemView.java"

# interfaces
.implements Landroidx/appcompat/view/menu/MenuView$ItemView;


# static fields
.field private static final CHECKED_STATE_SET:[I

.field public static final INVALID_ITEM_POSITION:I = -0x1

.field private static final TEXT_ANIMATION_DURATION:J = 0x12cL

.field private static final TIPS_ANIMATION_DURATION:J = 0x190L

.field public static final TIPS_CIRCLE:I = 0x1

.field public static final TIPS_HIDE:I = 0x3

.field public static final TIPS_OVAL:I = 0x2


# instance fields
.field private final ONE:F

.field private final POINT_FIVE:F

.field private final POINT_THREE:F

.field private final ZERO:F

.field private mIcon:Landroid/widget/ImageView;

.field private mIconTint:Landroid/content/res/ColorStateList;

.field private mItemData:Landroidx/appcompat/view/menu/MenuItemImpl;

.field private mItemPosition:I

.field private final mNormalLabel:Landroid/widget/TextView;

.field private mTextColor:Landroid/content/res/ColorStateList;

.field private mTextEnterAnim:Landroid/animation/Animator;

.field private mTextExitAnim:Landroid/animation/Animator;

.field private mTipView:Lcom/coui/appcompat/widget/COUIHintRedDot;

.field private mTipsHideAnim:Landroid/view/animation/ScaleAnimation;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 64
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a0

    aput v2, v0, v1

    sput-object v0, Lcom/coui/appcompat/widget/navigation/COUINavigationItemView;->CHECKED_STATE_SET:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 84
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/widget/navigation/COUINavigationItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 85
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 88
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/widget/navigation/COUINavigationItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 89
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 92
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 67
    const/4 v0, 0x0

    iput v0, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationItemView;->ZERO:F

    .line 68
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationItemView;->ONE:F

    .line 69
    const v0, 0x3e99999a    # 0.3f

    iput v0, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationItemView;->POINT_THREE:F

    .line 70
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationItemView;->POINT_FIVE:F

    .line 73
    const/4 v0, -0x1

    iput v0, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationItemView;->mItemPosition:I

    .line 93
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {p1}, Lcom/coui/appcompat/util/COUIOrientationUtil;->isPortrait(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget v1, Lcoui/support/appcompat/R$layout;->coui_navigation_item_layout:I

    goto :goto_0

    :cond_0
    sget v1, Lcoui/support/appcompat/R$layout;->coui_navigation_item_layout_land:I

    :goto_0
    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 95
    .local v0, "view":Landroid/view/View;
    sget v1, Lcoui/support/appcompat/R$id;->icon:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationItemView;->mIcon:Landroid/widget/ImageView;

    .line 96
    sget v1, Lcoui/support/appcompat/R$id;->normalLable:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationItemView;->mNormalLabel:Landroid/widget/TextView;

    .line 97
    sget v1, Lcoui/support/appcompat/R$id;->tips:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/coui/appcompat/widget/COUIHintRedDot;

    iput-object v1, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationItemView;->mTipView:Lcom/coui/appcompat/widget/COUIHintRedDot;

    .line 101
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/coui/appcompat/widget/navigation/COUINavigationItemView;->setWillNotDraw(Z)V

    .line 102
    return-void
.end method

.method static synthetic access$000(Lcom/coui/appcompat/widget/navigation/COUINavigationItemView;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/navigation/COUINavigationItemView;

    .line 58
    iget-object v0, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationItemView;->mNormalLabel:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/coui/appcompat/widget/navigation/COUINavigationItemView;)Lcom/coui/appcompat/widget/COUIHintRedDot;
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/navigation/COUINavigationItemView;

    .line 58
    iget-object v0, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationItemView;->mTipView:Lcom/coui/appcompat/widget/COUIHintRedDot;

    return-object v0
.end method

.method private createTipsHideAnimator()V
    .locals 10

    .line 349
    new-instance v9, Landroid/view/animation/ScaleAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v7, 0x1

    const/high16 v8, 0x3f000000    # 0.5f

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    iput-object v9, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationItemView;->mTipsHideAnim:Landroid/view/animation/ScaleAnimation;

    .line 353
    iget-object v0, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationItemView;->mTipsHideAnim:Landroid/view/animation/ScaleAnimation;

    const-wide/16 v1, 0x190

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 354
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-le v0, v1, :cond_0

    .line 355
    iget-object v0, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationItemView;->mTipsHideAnim:Landroid/view/animation/ScaleAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3ecccccd    # 0.4f

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, v3}, Landroidx/core/view/animation/PathInterpolatorCompat;->create(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 357
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationItemView;->mTipsHideAnim:Landroid/view/animation/ScaleAnimation;

    new-instance v1, Lcom/coui/appcompat/widget/navigation/COUINavigationItemView$2;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/widget/navigation/COUINavigationItemView$2;-><init>(Lcom/coui/appcompat/widget/navigation/COUINavigationItemView;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 373
    return-void
.end method

.method private initializeAnim()V
    .locals 14

    .line 311
    const v0, 0x3e99999a    # 0.3f

    const/4 v1, 0x0

    invoke-static {v1, v0}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v2

    .line 312
    .local v2, "frameStart":Landroid/animation/Keyframe;
    const/high16 v3, 0x3f000000    # 0.5f

    invoke-static {v3, v3}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v3

    .line 313
    .local v3, "frameMiddle":Landroid/animation/Keyframe;
    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v4, v4}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v5

    .line 314
    .local v5, "frameEnd":Landroid/animation/Keyframe;
    sget-object v6, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v7, 0x3

    new-array v8, v7, [Landroid/animation/Keyframe;

    const/4 v9, 0x0

    aput-object v2, v8, v9

    const/4 v10, 0x1

    aput-object v3, v8, v10

    const/4 v11, 0x2

    aput-object v5, v8, v11

    invoke-static {v6, v8}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Landroid/util/Property;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    .line 315
    .local v6, "holder":Landroid/animation/PropertyValuesHolder;
    iget-object v8, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationItemView;->mNormalLabel:Landroid/widget/TextView;

    new-array v12, v10, [Landroid/animation/PropertyValuesHolder;

    aput-object v6, v12, v9

    invoke-static {v8, v12}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v8

    iput-object v8, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationItemView;->mTextEnterAnim:Landroid/animation/Animator;

    .line 316
    iget-object v8, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationItemView;->mTextEnterAnim:Landroid/animation/Animator;

    new-instance v12, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v12}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v8, v12}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 317
    iget-object v8, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationItemView;->mTextEnterAnim:Landroid/animation/Animator;

    const-wide/16 v12, 0x12c

    invoke-virtual {v8, v12, v13}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 319
    invoke-static {v1, v4}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v1

    .line 320
    .local v1, "frameStart1":Landroid/animation/Keyframe;
    invoke-static {v4, v0}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v0

    .line 321
    .local v0, "frameEnd1":Landroid/animation/Keyframe;
    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v7, v7, [Landroid/animation/Keyframe;

    aput-object v1, v7, v9

    aput-object v3, v7, v10

    aput-object v0, v7, v11

    invoke-static {v4, v7}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Landroid/util/Property;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    .line 322
    .local v4, "holder1":Landroid/animation/PropertyValuesHolder;
    iget-object v7, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationItemView;->mNormalLabel:Landroid/widget/TextView;

    new-array v8, v10, [Landroid/animation/PropertyValuesHolder;

    aput-object v4, v8, v9

    invoke-static {v7, v8}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v7

    iput-object v7, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationItemView;->mTextExitAnim:Landroid/animation/Animator;

    .line 323
    iget-object v7, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationItemView;->mTextExitAnim:Landroid/animation/Animator;

    new-instance v8, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v8}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v7, v8}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 324
    iget-object v7, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationItemView;->mTextExitAnim:Landroid/animation/Animator;

    invoke-virtual {v7, v12, v13}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 325
    iget-object v7, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationItemView;->mTextExitAnim:Landroid/animation/Animator;

    new-instance v8, Lcom/coui/appcompat/widget/navigation/COUINavigationItemView$1;

    invoke-direct {v8, p0}, Lcom/coui/appcompat/widget/navigation/COUINavigationItemView$1;-><init>(Lcom/coui/appcompat/widget/navigation/COUINavigationItemView;)V

    invoke-virtual {v7, v8}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 346
    return-void
.end method

.method private isRtlMode(Landroid/content/Context;)Z
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 376
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 377
    return v0

    .line 379
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-le v1, v2, :cond_2

    .line 380
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    move v0, v2

    nop

    :cond_1
    return v0

    .line 382
    :cond_2
    return v0
.end method

.method private setRedDotPosition()V
    .locals 4

    .line 185
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/navigation/COUINavigationItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/coui/appcompat/widget/navigation/COUINavigationItemView;->isRtlMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationItemView;->mIcon:Landroid/widget/ImageView;

    .line 186
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLeft()I

    move-result v0

    iget-object v1, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationItemView;->mTipView:Lcom/coui/appcompat/widget/COUIHintRedDot;

    invoke-virtual {v1}, Lcom/coui/appcompat/widget/COUIHintRedDot;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationItemView;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLeft()I

    move-result v0

    iget-object v1, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationItemView;->mTipView:Lcom/coui/appcompat/widget/COUIHintRedDot;

    invoke-virtual {v1}, Lcom/coui/appcompat/widget/COUIHintRedDot;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationItemView;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    add-int/2addr v0, v1

    .line 187
    .local v0, "x":I
    :goto_0
    iget-object v1, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationItemView;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getTop()I

    move-result v1

    iget-object v2, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationItemView;->mTipView:Lcom/coui/appcompat/widget/COUIHintRedDot;

    invoke-virtual {v2}, Lcom/coui/appcompat/widget/COUIHintRedDot;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    .line 188
    .local v1, "y":I
    iget-object v2, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationItemView;->mTipView:Lcom/coui/appcompat/widget/COUIHintRedDot;

    int-to-float v3, v0

    invoke-virtual {v2, v3}, Lcom/coui/appcompat/widget/COUIHintRedDot;->setX(F)V

    .line 189
    iget-object v2, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationItemView;->mTipView:Lcom/coui/appcompat/widget/COUIHintRedDot;

    int-to-float v3, v1

    invoke-virtual {v2, v3}, Lcom/coui/appcompat/widget/COUIHintRedDot;->setY(F)V

    .line 190
    return-void
.end method


# virtual methods
.method public getIcon()Landroid/widget/ImageView;
    .locals 1

    .line 293
    iget-object v0, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationItemView;->mIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getItemData()Landroidx/appcompat/view/menu/MenuItemImpl;
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationItemView;->mItemData:Landroidx/appcompat/view/menu/MenuItemImpl;

    return-object v0
.end method

.method public getItemPosition()I
    .locals 1

    .line 124
    iget v0, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationItemView;->mItemPosition:I

    return v0
.end method

.method public getTextView()Landroid/widget/TextView;
    .locals 1

    .line 263
    iget-object v0, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationItemView;->mNormalLabel:Landroid/widget/TextView;

    return-object v0
.end method

.method public initialize(Landroidx/appcompat/view/menu/MenuItemImpl;I)V
    .locals 2
    .param p1, "itemData"    # Landroidx/appcompat/view/menu/MenuItemImpl;
    .param p2, "menuType"    # I

    .line 106
    iput-object p1, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationItemView;->mItemData:Landroidx/appcompat/view/menu/MenuItemImpl;

    .line 107
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/MenuItemImpl;->isCheckable()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/navigation/COUINavigationItemView;->setCheckable(Z)V

    .line 108
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/MenuItemImpl;->isChecked()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/navigation/COUINavigationItemView;->setChecked(Z)V

    .line 109
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/MenuItemImpl;->isEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/navigation/COUINavigationItemView;->setEnabled(Z)V

    .line 110
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/navigation/COUINavigationItemView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 111
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/MenuItemImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/navigation/COUINavigationItemView;->setTitle(Ljava/lang/CharSequence;)V

    .line 112
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/MenuItemImpl;->getItemId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/navigation/COUINavigationItemView;->setId(I)V

    .line 113
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 114
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/MenuItemImpl;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/navigation/COUINavigationItemView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 115
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/MenuItemImpl;->getTooltipText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p0, v0}, Landroidx/appcompat/widget/TooltipCompat;->setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 117
    :cond_0
    return-void
.end method

.method public onCreateDrawableState(I)[I
    .locals 2
    .param p1, "extraSpace"    # I

    .line 171
    add-int/lit8 v0, p1, 0x1

    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 172
    .local v0, "drawableState":[I
    iget-object v1, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationItemView;->mItemData:Landroidx/appcompat/view/menu/MenuItemImpl;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationItemView;->mItemData:Landroidx/appcompat/view/menu/MenuItemImpl;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/MenuItemImpl;->isCheckable()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationItemView;->mItemData:Landroidx/appcompat/view/menu/MenuItemImpl;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/MenuItemImpl;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 173
    sget-object v1, Lcom/coui/appcompat/widget/navigation/COUINavigationItemView;->CHECKED_STATE_SET:[I

    invoke-static {v0, v1}, Lcom/coui/appcompat/widget/navigation/COUINavigationItemView;->mergeDrawableStates([I[I)[I

    .line 175
    :cond_0
    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 180
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 181
    invoke-direct {p0}, Lcom/coui/appcompat/widget/navigation/COUINavigationItemView;->setRedDotPosition()V

    .line 182
    return-void
.end method

.method public prefersCondensedTitle()Z
    .locals 1

    .line 221
    const/4 v0, 0x0

    return v0
.end method

.method public setCheckable(Z)V
    .locals 0
    .param p1, "checkable"    # Z

    .line 144
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/navigation/COUINavigationItemView;->refreshDrawableState()V

    .line 145
    return-void
.end method

.method public setChecked(Z)V
    .locals 1
    .param p1, "checked"    # Z

    .line 149
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/navigation/COUINavigationItemView;->refreshDrawableState()V

    .line 150
    iget-object v0, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationItemView;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 151
    iget-object v0, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationItemView;->mNormalLabel:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 152
    return-void
.end method

.method public setEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .line 156
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 157
    iget-object v0, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationItemView;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 158
    iget-object v0, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationItemView;->mNormalLabel:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 160
    if-eqz p1, :cond_0

    .line 161
    nop

    .line 162
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/navigation/COUINavigationItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x3ea

    invoke-static {v0, v1}, Landroidx/core/view/PointerIconCompat;->getSystemIcon(Landroid/content/Context;I)Landroidx/core/view/PointerIconCompat;

    move-result-object v0

    .line 161
    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat;->setPointerIcon(Landroid/view/View;Landroidx/core/view/PointerIconCompat;)V

    goto :goto_0

    .line 164
    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat;->setPointerIcon(Landroid/view/View;Landroidx/core/view/PointerIconCompat;)V

    .line 167
    :goto_0
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 6
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .line 198
    if-eqz p1, :cond_3

    .line 199
    iget-object v0, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationItemView;->mIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 200
    const/4 v0, 0x0

    .line 201
    .local v0, "instof":Z
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_0

    .line 202
    instance-of v0, p1, Landroid/graphics/drawable/StateListDrawable;

    .line 204
    :cond_0
    if-eqz v0, :cond_2

    .line 205
    const/4 v2, 0x1

    new-array v3, v2, [I

    const v4, 0x10100a0

    iget-object v5, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationItemView;->mItemData:Landroidx/appcompat/view/menu/MenuItemImpl;

    invoke-virtual {v5}, Landroidx/appcompat/view/menu/MenuItemImpl;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_1

    move v5, v2

    goto :goto_0

    :cond_1
    const/4 v5, -0x1

    :goto_0
    mul-int/2addr v5, v4

    aput v5, v3, v1

    move-object v1, v3

    .line 206
    .local v1, "stateSet":[I
    iget-object v3, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationItemView;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v3, v1, v2}, Landroid/widget/ImageView;->setImageState([IZ)V

    .line 212
    .end local v0    # "instof":Z
    .end local v1    # "stateSet":[I
    :cond_2
    goto :goto_1

    .line 213
    :cond_3
    iget-object v0, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationItemView;->mIcon:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 214
    iget-object v0, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationItemView;->mNormalLabel:Landroid/widget/TextView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 216
    :goto_1
    iget-object v0, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationItemView;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 217
    return-void
.end method

.method public setIcon(Landroid/widget/ImageView;)V
    .locals 0
    .param p1, "imageView"    # Landroid/widget/ImageView;

    .line 289
    iput-object p1, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationItemView;->mIcon:Landroid/widget/ImageView;

    .line 290
    return-void
.end method

.method public setIconTintList(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "tint"    # Landroid/content/res/ColorStateList;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 231
    iput-object p1, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationItemView;->mIconTint:Landroid/content/res/ColorStateList;

    .line 232
    iget-object v0, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationItemView;->mItemData:Landroidx/appcompat/view/menu/MenuItemImpl;

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationItemView;->mItemData:Landroidx/appcompat/view/menu/MenuItemImpl;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/navigation/COUINavigationItemView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 236
    :cond_0
    return-void
.end method

.method public setItemBackground(I)V
    .locals 1
    .param p1, "background"    # I

    .line 251
    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/navigation/COUINavigationItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 252
    .local v0, "backgroundDrawable":Landroid/graphics/drawable/Drawable;
    :goto_0
    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 253
    return-void
.end method

.method public setItemPosition(I)V
    .locals 0
    .param p1, "position"    # I

    .line 120
    iput p1, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationItemView;->mItemPosition:I

    .line 121
    return-void
.end method

.method public setMaxTextWidth(I)V
    .locals 1
    .param p1, "maxWidth"    # I

    .line 256
    if-gtz p1, :cond_0

    .line 257
    return-void

    .line 259
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationItemView;->mNormalLabel:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 260
    return-void
.end method

.method public setShortcut(ZC)V
    .locals 0
    .param p1, "showShortcut"    # Z
    .param p2, "shortcutKey"    # C

    .line 194
    return-void
.end method

.method public setTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "color"    # Landroid/content/res/ColorStateList;

    .line 239
    if-nez p1, :cond_0

    .line 240
    return-void

    .line 242
    :cond_0
    iput-object p1, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationItemView;->mTextColor:Landroid/content/res/ColorStateList;

    .line 243
    iget-object v0, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationItemView;->mNormalLabel:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 244
    return-void
.end method

.method public setTextSize(I)V
    .locals 3
    .param p1, "size"    # I

    .line 247
    iget-object v0, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationItemView;->mNormalLabel:Landroid/widget/TextView;

    int-to-float v1, p1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 248
    return-void
.end method

.method public setTipsView(II)V
    .locals 3
    .param p1, "number"    # I
    .param p2, "type"    # I

    .line 267
    if-gez p2, :cond_0

    .line 268
    return-void

    .line 270
    :cond_0
    const/4 v0, 0x3

    if-ne p2, v0, :cond_3

    .line 271
    iget-object v0, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationItemView;->mTipView:Lcom/coui/appcompat/widget/COUIHintRedDot;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/COUIHintRedDot;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    .line 272
    return-void

    .line 274
    :cond_1
    iget-object v0, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationItemView;->mTipsHideAnim:Landroid/view/animation/ScaleAnimation;

    if-nez v0, :cond_2

    .line 275
    invoke-direct {p0}, Lcom/coui/appcompat/widget/navigation/COUINavigationItemView;->createTipsHideAnimator()V

    .line 277
    :cond_2
    iget-object v0, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationItemView;->mTipView:Lcom/coui/appcompat/widget/COUIHintRedDot;

    iget-object v1, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationItemView;->mTipsHideAnim:Landroid/view/animation/ScaleAnimation;

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/widget/COUIHintRedDot;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 278
    :cond_3
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p2, v1, :cond_4

    .line 279
    iget-object v2, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationItemView;->mTipView:Lcom/coui/appcompat/widget/COUIHintRedDot;

    invoke-virtual {v2, v1}, Lcom/coui/appcompat/widget/COUIHintRedDot;->setPointMode(I)V

    .line 280
    iget-object v1, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationItemView;->mTipView:Lcom/coui/appcompat/widget/COUIHintRedDot;

    invoke-virtual {v1, v0}, Lcom/coui/appcompat/widget/COUIHintRedDot;->setVisibility(I)V

    goto :goto_0

    .line 281
    :cond_4
    const/4 v1, 0x2

    if-ne p2, v1, :cond_5

    .line 282
    iget-object v2, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationItemView;->mTipView:Lcom/coui/appcompat/widget/COUIHintRedDot;

    invoke-virtual {v2, p1}, Lcom/coui/appcompat/widget/COUIHintRedDot;->setPointNumber(I)V

    .line 283
    iget-object v2, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationItemView;->mTipView:Lcom/coui/appcompat/widget/COUIHintRedDot;

    invoke-virtual {v2, v1}, Lcom/coui/appcompat/widget/COUIHintRedDot;->setPointMode(I)V

    .line 284
    iget-object v1, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationItemView;->mTipView:Lcom/coui/appcompat/widget/COUIHintRedDot;

    invoke-virtual {v1, v0}, Lcom/coui/appcompat/widget/COUIHintRedDot;->setVisibility(I)V

    .line 286
    :cond_5
    :goto_0
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 134
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationItemView;->mNormalLabel:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 138
    iget-object v0, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationItemView;->mNormalLabel:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 135
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationItemView;->mNormalLabel:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 140
    :goto_1
    return-void
.end method

.method public showsIcon()Z
    .locals 1

    .line 226
    const/4 v0, 0x1

    return v0
.end method

.method public startTextEnterAnimation()V
    .locals 1

    .line 297
    iget-object v0, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationItemView;->mTextEnterAnim:Landroid/animation/Animator;

    if-nez v0, :cond_0

    .line 298
    invoke-direct {p0}, Lcom/coui/appcompat/widget/navigation/COUINavigationItemView;->initializeAnim()V

    .line 300
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationItemView;->mTextEnterAnim:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 301
    return-void
.end method

.method public startTextExitAnimation()V
    .locals 1

    .line 304
    iget-object v0, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationItemView;->mTextExitAnim:Landroid/animation/Animator;

    if-nez v0, :cond_0

    .line 305
    invoke-direct {p0}, Lcom/coui/appcompat/widget/navigation/COUINavigationItemView;->initializeAnim()V

    .line 307
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationItemView;->mTextExitAnim:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 308
    return-void
.end method
