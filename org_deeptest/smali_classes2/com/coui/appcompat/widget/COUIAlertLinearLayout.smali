.class public Lcom/coui/appcompat/widget/COUIAlertLinearLayout;
.super Landroid/widget/LinearLayout;
.source "COUIAlertLinearLayout.java"


# static fields
.field public static final TYPE_SHADOW_WITH_CORNER:I


# instance fields
.field private mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mBackgroundRadius:I

.field private mBottomAlertDialogBgPortrait:Landroid/graphics/drawable/Drawable;

.field private mFixedBottom:I

.field private mFixedLeft:I

.field private mFixedRight:I

.field private mFixedTop:I

.field private mHasShadow:Z

.field private mNeedClip:Z

.field private mShadowBottom:I

.field private mShadowDrawable:Landroid/graphics/drawable/Drawable;

.field private mShadowLeft:I

.field private mShadowRight:I

.field private mShadowTop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 58
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/widget/COUIAlertLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 65
    sget v0, Lcoui/support/appcompat/R$attr;->couiAlertLinearLayoutStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/widget/COUIAlertLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 80
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Lcom/coui/appcompat/widget/COUIAlertLinearLayout;->mShadowLeft:I

    .line 41
    iput v0, p0, Lcom/coui/appcompat/widget/COUIAlertLinearLayout;->mShadowTop:I

    .line 42
    iput v0, p0, Lcom/coui/appcompat/widget/COUIAlertLinearLayout;->mShadowRight:I

    .line 43
    iput v0, p0, Lcom/coui/appcompat/widget/COUIAlertLinearLayout;->mShadowBottom:I

    .line 82
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcoui/support/appcompat/R$dimen;->coui_alert_dialog_bg_radius:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 83
    .local v1, "defaultRadius":I
    sget-object v2, Lcoui/support/appcompat/R$styleable;->COUIAlertLinearLayout:[I

    invoke-virtual {p1, p2, v2, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 84
    .local v0, "array":Landroid/content/res/TypedArray;
    sget v2, Lcoui/support/appcompat/R$styleable;->COUIAlertLinearLayout_alertCornerRadius:I

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/coui/appcompat/widget/COUIAlertLinearLayout;->mBackgroundRadius:I

    .line 86
    sget v2, Lcoui/support/appcompat/R$styleable;->COUIAlertLinearLayout_alertShadowDrawable:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 87
    sget v2, Lcoui/support/appcompat/R$styleable;->COUIAlertLinearLayout_alertShadowDrawable:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/coui/appcompat/widget/COUIAlertLinearLayout;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 89
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcoui/support/appcompat/R$drawable;->coui_bottom_alert_dialog_bg_with_shadow:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/coui/appcompat/widget/COUIAlertLinearLayout;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    .line 92
    :goto_0
    sget v2, Lcoui/support/appcompat/R$styleable;->COUIAlertLinearLayout_alertBottomBgPortrait:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/coui/appcompat/widget/COUIAlertLinearLayout;->mBottomAlertDialogBgPortrait:Landroid/graphics/drawable/Drawable;

    .line 93
    sget v2, Lcoui/support/appcompat/R$styleable;->COUIAlertLinearLayout_alertBackgroundDrawable:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 94
    sget v2, Lcoui/support/appcompat/R$styleable;->COUIAlertLinearLayout_alertBackgroundDrawable:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/coui/appcompat/widget/COUIAlertLinearLayout;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 95
    :cond_1
    sget v2, Lcoui/support/appcompat/R$styleable;->COUIAlertLinearLayout_alertBottomBgLandscape:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 96
    sget v2, Lcoui/support/appcompat/R$styleable;->COUIAlertLinearLayout_alertBottomBgLandscape:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/coui/appcompat/widget/COUIAlertLinearLayout;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 98
    :cond_2
    :goto_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 99
    return-void
.end method

.method static synthetic access$000(Lcom/coui/appcompat/widget/COUIAlertLinearLayout;)I
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUIAlertLinearLayout;

    .line 33
    iget v0, p0, Lcom/coui/appcompat/widget/COUIAlertLinearLayout;->mFixedLeft:I

    return v0
.end method

.method static synthetic access$100(Lcom/coui/appcompat/widget/COUIAlertLinearLayout;)I
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUIAlertLinearLayout;

    .line 33
    iget v0, p0, Lcom/coui/appcompat/widget/COUIAlertLinearLayout;->mFixedTop:I

    return v0
.end method

.method static synthetic access$200(Lcom/coui/appcompat/widget/COUIAlertLinearLayout;)I
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUIAlertLinearLayout;

    .line 33
    iget v0, p0, Lcom/coui/appcompat/widget/COUIAlertLinearLayout;->mFixedRight:I

    return v0
.end method

.method static synthetic access$300(Lcom/coui/appcompat/widget/COUIAlertLinearLayout;)I
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUIAlertLinearLayout;

    .line 33
    iget v0, p0, Lcom/coui/appcompat/widget/COUIAlertLinearLayout;->mFixedBottom:I

    return v0
.end method

.method static synthetic access$400(Lcom/coui/appcompat/widget/COUIAlertLinearLayout;)I
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUIAlertLinearLayout;

    .line 33
    iget v0, p0, Lcom/coui/appcompat/widget/COUIAlertLinearLayout;->mBackgroundRadius:I

    return v0
.end method

.method private clipBackground()V
    .locals 2

    .line 164
    new-instance v0, Lcom/coui/appcompat/widget/COUIAlertLinearLayout$1;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/widget/COUIAlertLinearLayout$1;-><init>(Lcom/coui/appcompat/widget/COUIAlertLinearLayout;)V

    .line 170
    .local v0, "provider":Landroid/view/ViewOutlineProvider;
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/coui/appcompat/widget/COUIAlertLinearLayout;->setClipToOutline(Z)V

    .line 171
    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/COUIAlertLinearLayout;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 172
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 176
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 177
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/COUIAlertLinearLayout;->mHasShadow:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIAlertLinearLayout;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIAlertLinearLayout;->mBottomAlertDialogBgPortrait:Landroid/graphics/drawable/Drawable;

    :goto_0
    iput-object v0, p0, Lcom/coui/appcompat/widget/COUIAlertLinearLayout;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 178
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIAlertLinearLayout;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 179
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIAlertLinearLayout;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/coui/appcompat/widget/COUIAlertLinearLayout;->mFixedLeft:I

    iget v2, p0, Lcom/coui/appcompat/widget/COUIAlertLinearLayout;->mFixedTop:I

    iget v3, p0, Lcom/coui/appcompat/widget/COUIAlertLinearLayout;->mFixedRight:I

    iget v4, p0, Lcom/coui/appcompat/widget/COUIAlertLinearLayout;->mFixedBottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 180
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIAlertLinearLayout;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 182
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 183
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 184
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .line 137
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->onSizeChanged(IIII)V

    .line 139
    iget v0, p0, Lcom/coui/appcompat/widget/COUIAlertLinearLayout;->mShadowLeft:I

    iput v0, p0, Lcom/coui/appcompat/widget/COUIAlertLinearLayout;->mFixedLeft:I

    .line 140
    iget v0, p0, Lcom/coui/appcompat/widget/COUIAlertLinearLayout;->mShadowTop:I

    iput v0, p0, Lcom/coui/appcompat/widget/COUIAlertLinearLayout;->mFixedTop:I

    .line 141
    iget v0, p0, Lcom/coui/appcompat/widget/COUIAlertLinearLayout;->mShadowRight:I

    sub-int v0, p1, v0

    iput v0, p0, Lcom/coui/appcompat/widget/COUIAlertLinearLayout;->mFixedRight:I

    .line 142
    iget v0, p0, Lcom/coui/appcompat/widget/COUIAlertLinearLayout;->mShadowBottom:I

    sub-int v0, p2, v0

    iput v0, p0, Lcom/coui/appcompat/widget/COUIAlertLinearLayout;->mFixedBottom:I

    .line 143
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/COUIAlertLinearLayout;->mNeedClip:Z

    if-eqz v0, :cond_0

    .line 144
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUIAlertLinearLayout;->clipBackground()V

    goto :goto_0

    .line 146
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/COUIAlertLinearLayout;->setClipToOutline(Z)V

    .line 148
    :goto_0
    return-void
.end method

.method public setDialogBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "backgroundDrawable"    # Landroid/graphics/drawable/Drawable;

    .line 160
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUIAlertLinearLayout;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 161
    return-void
.end method

.method public setHasShadow(Z)V
    .locals 1
    .param p1, "hasShadow"    # Z

    .line 107
    iput-boolean p1, p0, Lcom/coui/appcompat/widget/COUIAlertLinearLayout;->mHasShadow:Z

    .line 108
    if-eqz p1, :cond_0

    .line 109
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIAlertLinearLayout;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/COUIAlertLinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 110
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIAlertLinearLayout;->getPaddingLeft()I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/widget/COUIAlertLinearLayout;->mShadowLeft:I

    .line 111
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIAlertLinearLayout;->getPaddingRight()I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/widget/COUIAlertLinearLayout;->mShadowRight:I

    .line 112
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIAlertLinearLayout;->getPaddingTop()I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/widget/COUIAlertLinearLayout;->mShadowTop:I

    .line 113
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIAlertLinearLayout;->getPaddingBottom()I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/widget/COUIAlertLinearLayout;->mShadowBottom:I

    goto :goto_0

    .line 115
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/COUIAlertLinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 116
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, v0, v0}, Lcom/coui/appcompat/widget/COUIAlertLinearLayout;->setPadding(IIII)V

    .line 117
    iput v0, p0, Lcom/coui/appcompat/widget/COUIAlertLinearLayout;->mShadowLeft:I

    .line 118
    iput v0, p0, Lcom/coui/appcompat/widget/COUIAlertLinearLayout;->mShadowTop:I

    .line 119
    iput v0, p0, Lcom/coui/appcompat/widget/COUIAlertLinearLayout;->mShadowRight:I

    .line 120
    iput v0, p0, Lcom/coui/appcompat/widget/COUIAlertLinearLayout;->mShadowBottom:I

    .line 122
    :goto_0
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIAlertLinearLayout;->requestLayout()V

    .line 123
    return-void
.end method

.method public setNeedClip(Z)V
    .locals 0
    .param p1, "needClip"    # Z

    .line 156
    iput-boolean p1, p0, Lcom/coui/appcompat/widget/COUIAlertLinearLayout;->mNeedClip:Z

    .line 157
    return-void
.end method

.method public setType(I)V
    .locals 1
    .param p1, "type"    # I

    .line 131
    if-nez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 132
    .local v0, "hasShadow":Z
    :goto_0
    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/COUIAlertLinearLayout;->setHasShadow(Z)V

    .line 133
    return-void
.end method
