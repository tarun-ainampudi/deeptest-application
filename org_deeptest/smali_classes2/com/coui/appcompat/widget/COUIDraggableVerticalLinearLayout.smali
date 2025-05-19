.class public Lcom/coui/appcompat/widget/COUIDraggableVerticalLinearLayout;
.super Landroid/widget/LinearLayout;
.source "COUIDraggableVerticalLinearLayout.java"


# instance fields
.field private mAnimDragView:Landroid/widget/ImageView;

.field private mDragViewDrawable:Landroid/graphics/drawable/Drawable;

.field private mDragViewDrawableTintColor:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field private mElevation:F

.field private mHasShadowNinePatchDrawable:Z

.field private mPaddingBottom:I

.field private mPaddingLeft:I

.field private mPaddingRight:I

.field private mPaddingTop:I

.field mStyle:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 55
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/widget/COUIDraggableVerticalLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 59
    sget v0, Lcoui/support/appcompat/R$attr;->couiDraggableVerticalLinearLayoutStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/widget/COUIDraggableVerticalLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "defStyleAttr"    # I

    .line 63
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/coui/appcompat/widget/COUIDraggableVerticalLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 67
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coui/appcompat/widget/COUIDraggableVerticalLinearLayout;->mHasShadowNinePatchDrawable:Z

    .line 48
    const/4 v1, 0x0

    iput v1, p0, Lcom/coui/appcompat/widget/COUIDraggableVerticalLinearLayout;->mElevation:F

    .line 49
    iput v0, p0, Lcom/coui/appcompat/widget/COUIDraggableVerticalLinearLayout;->mPaddingLeft:I

    .line 50
    iput v0, p0, Lcom/coui/appcompat/widget/COUIDraggableVerticalLinearLayout;->mPaddingTop:I

    .line 51
    iput v0, p0, Lcom/coui/appcompat/widget/COUIDraggableVerticalLinearLayout;->mPaddingRight:I

    .line 52
    iput v0, p0, Lcom/coui/appcompat/widget/COUIDraggableVerticalLinearLayout;->mPaddingBottom:I

    .line 68
    invoke-direct {p0, p2, p3, p4}, Lcom/coui/appcompat/widget/COUIDraggableVerticalLinearLayout;->initDragView(Landroid/util/AttributeSet;II)V

    .line 69
    iget v0, p0, Lcom/coui/appcompat/widget/COUIDraggableVerticalLinearLayout;->mStyle:I

    if-nez v0, :cond_0

    .line 70
    iput p3, p0, Lcom/coui/appcompat/widget/COUIDraggableVerticalLinearLayout;->mStyle:I

    .line 72
    :cond_0
    return-void
.end method

.method private initDragView(Landroid/util/AttributeSet;II)V
    .locals 4
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "defStyleAttr"    # I
    .param p3, "defStyleRes"    # I

    .line 75
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/COUIDraggableVerticalLinearLayout;->setOrientation(I)V

    .line 77
    new-instance v1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIDraggableVerticalLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/coui/appcompat/widget/COUIDraggableVerticalLinearLayout;->mAnimDragView:Landroid/widget/ImageView;

    .line 78
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIDraggableVerticalLinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcoui/support/appcompat/R$dimen;->coui_panel_drag_view_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    .line 79
    .local v1, "dragViewSize":I
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 80
    .local v2, "dragViewLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    iput v0, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 81
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIDraggableVerticalLinearLayout;->mAnimDragView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 82
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1d

    if-lt v0, v3, :cond_0

    .line 83
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIDraggableVerticalLinearLayout;->mAnimDragView:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setForceDarkAllowed(Z)V

    .line 86
    :cond_0
    if-eqz p1, :cond_1

    .line 87
    invoke-interface {p1}, Landroid/util/AttributeSet;->getStyleAttribute()I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/widget/COUIDraggableVerticalLinearLayout;->mStyle:I

    .line 88
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIDraggableVerticalLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v3, Lcoui/support/appcompat/R$styleable;->COUIDraggableVerticalLinearLayout:[I

    invoke-virtual {v0, p1, v3, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 89
    .local v0, "typedArray":Landroid/content/res/TypedArray;
    invoke-direct {p0, v0}, Lcom/coui/appcompat/widget/COUIDraggableVerticalLinearLayout;->setDragViewByTypeArray(Landroid/content/res/TypedArray;)V

    .line 92
    .end local v0    # "typedArray":Landroid/content/res/TypedArray;
    :cond_1
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUIDraggableVerticalLinearLayout;->recordPaddingAndElevation()V

    .line 93
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIDraggableVerticalLinearLayout;->mAnimDragView:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/COUIDraggableVerticalLinearLayout;->addView(Landroid/view/View;)V

    .line 94
    return-void
.end method

.method private recordPaddingAndElevation()V
    .locals 1

    .line 97
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIDraggableVerticalLinearLayout;->getElevation()F

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/widget/COUIDraggableVerticalLinearLayout;->mElevation:F

    .line 98
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIDraggableVerticalLinearLayout;->getPaddingLeft()I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/widget/COUIDraggableVerticalLinearLayout;->mPaddingLeft:I

    .line 99
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIDraggableVerticalLinearLayout;->getPaddingTop()I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/widget/COUIDraggableVerticalLinearLayout;->mPaddingTop:I

    .line 100
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIDraggableVerticalLinearLayout;->getPaddingRight()I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/widget/COUIDraggableVerticalLinearLayout;->mPaddingRight:I

    .line 101
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIDraggableVerticalLinearLayout;->getPaddingBottom()I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/widget/COUIDraggableVerticalLinearLayout;->mPaddingBottom:I

    .line 102
    return-void
.end method

.method private setDragViewByTypeArray(Landroid/content/res/TypedArray;)V
    .locals 4
    .param p1, "typedArray"    # Landroid/content/res/TypedArray;

    .line 158
    if-eqz p1, :cond_0

    .line 159
    sget v0, Lcoui/support/appcompat/R$styleable;->COUIDraggableVerticalLinearLayout_hasShadowNinePatchDrawable:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/coui/appcompat/widget/COUIDraggableVerticalLinearLayout;->mHasShadowNinePatchDrawable:Z

    .line 160
    sget v0, Lcoui/support/appcompat/R$styleable;->COUIDraggableVerticalLinearLayout_dragViewIcon:I

    sget v1, Lcoui/support/appcompat/R$drawable;->coui_panel_drag_view:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 161
    .local v0, "dragViewDrawableRes":I
    sget v1, Lcoui/support/appcompat/R$styleable;->COUIDraggableVerticalLinearLayout_dragViewTintColor:I

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIDraggableVerticalLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcoui/support/appcompat/R$color;->coui_panel_drag_view_color:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 162
    .local v1, "dragViewDrawableTintColor":I
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 164
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIDraggableVerticalLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 165
    .local v2, "dragViewDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_0

    .line 166
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 167
    iget-object v3, p0, Lcom/coui/appcompat/widget/COUIDraggableVerticalLinearLayout;->mAnimDragView:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 170
    .end local v0    # "dragViewDrawableRes":I
    .end local v1    # "dragViewDrawableTintColor":I
    .end local v2    # "dragViewDrawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    return-void
.end method


# virtual methods
.method public getDragView()Landroid/widget/ImageView;
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIDraggableVerticalLinearLayout;->mAnimDragView:Landroid/widget/ImageView;

    return-object v0
.end method

.method public isHasShadowNinePatchDrawable()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 120
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/COUIDraggableVerticalLinearLayout;->mHasShadowNinePatchDrawable:Z

    return v0
.end method

.method public refresh()V
    .locals 7

    .line 142
    const/4 v0, 0x0

    .line 143
    .local v0, "typedArray":Landroid/content/res/TypedArray;
    iget v1, p0, Lcom/coui/appcompat/widget/COUIDraggableVerticalLinearLayout;->mStyle:I

    if-eqz v1, :cond_1

    .line 144
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIDraggableVerticalLinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/coui/appcompat/widget/COUIDraggableVerticalLinearLayout;->mStyle:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v1

    .line 145
    .local v1, "styleAttrType":Ljava/lang/String;
    const-string v2, "attr"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    .line 146
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIDraggableVerticalLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    sget-object v5, Lcoui/support/appcompat/R$styleable;->COUIDraggableVerticalLinearLayout:[I

    iget v6, p0, Lcom/coui/appcompat/widget/COUIDraggableVerticalLinearLayout;->mStyle:I

    invoke-virtual {v2, v4, v5, v6, v3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    goto :goto_0

    .line 148
    :cond_0
    const-string v2, "style"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 149
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIDraggableVerticalLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    sget-object v5, Lcoui/support/appcompat/R$styleable;->COUIDraggableVerticalLinearLayout:[I

    iget v6, p0, Lcom/coui/appcompat/widget/COUIDraggableVerticalLinearLayout;->mStyle:I

    invoke-virtual {v2, v4, v5, v3, v6}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 153
    .end local v1    # "styleAttrType":Ljava/lang/String;
    :cond_1
    :goto_0
    invoke-direct {p0, v0}, Lcom/coui/appcompat/widget/COUIDraggableVerticalLinearLayout;->setDragViewByTypeArray(Landroid/content/res/TypedArray;)V

    .line 154
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIDraggableVerticalLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcoui/support/appcompat/R$drawable;->coui_panel_bg_with_shadow:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/coui/appcompat/widget/COUIDraggableVerticalLinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 155
    return-void
.end method

.method public setDragViewDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 177
    if-eqz p1, :cond_0

    .line 178
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUIDraggableVerticalLinearLayout;->mDragViewDrawable:Landroid/graphics/drawable/Drawable;

    .line 179
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIDraggableVerticalLinearLayout;->mAnimDragView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIDraggableVerticalLinearLayout;->mDragViewDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 181
    :cond_0
    return-void
.end method

.method public setDragViewDrawableTintColor(I)V
    .locals 2
    .param p1, "dragViewDrawableTintColor"    # I

    .line 188
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIDraggableVerticalLinearLayout;->mDragViewDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/coui/appcompat/widget/COUIDraggableVerticalLinearLayout;->mDragViewDrawableTintColor:I

    if-eq v0, p1, :cond_0

    .line 189
    iput p1, p0, Lcom/coui/appcompat/widget/COUIDraggableVerticalLinearLayout;->mDragViewDrawableTintColor:I

    .line 190
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIDraggableVerticalLinearLayout;->mDragViewDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/coui/appcompat/widget/COUIDraggableVerticalLinearLayout;->mDragViewDrawableTintColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 191
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIDraggableVerticalLinearLayout;->mAnimDragView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIDraggableVerticalLinearLayout;->mDragViewDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 193
    :cond_0
    return-void
.end method

.method public setHasShadowNinePatchDrawable(Z)V
    .locals 4
    .param p1, "hasShadowNinePatchDrawable"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 125
    iput-boolean p1, p0, Lcom/coui/appcompat/widget/COUIDraggableVerticalLinearLayout;->mHasShadowNinePatchDrawable:Z

    .line 126
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/COUIDraggableVerticalLinearLayout;->mHasShadowNinePatchDrawable:Z

    if-eqz v0, :cond_0

    .line 127
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIDraggableVerticalLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcoui/support/appcompat/R$drawable;->coui_panel_bg_with_shadow:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/COUIDraggableVerticalLinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 128
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/COUIDraggableVerticalLinearLayout;->setElevation(F)V

    goto :goto_0

    .line 130
    :cond_0
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIDraggableVerticalLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcoui/support/appcompat/R$drawable;->coui_panel_bg_without_shadow:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/COUIDraggableVerticalLinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 131
    iget v0, p0, Lcom/coui/appcompat/widget/COUIDraggableVerticalLinearLayout;->mPaddingLeft:I

    iget v1, p0, Lcom/coui/appcompat/widget/COUIDraggableVerticalLinearLayout;->mPaddingTop:I

    iget v2, p0, Lcom/coui/appcompat/widget/COUIDraggableVerticalLinearLayout;->mPaddingRight:I

    iget v3, p0, Lcom/coui/appcompat/widget/COUIDraggableVerticalLinearLayout;->mPaddingBottom:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/coui/appcompat/widget/COUIDraggableVerticalLinearLayout;->setPadding(IIII)V

    .line 132
    iget v0, p0, Lcom/coui/appcompat/widget/COUIDraggableVerticalLinearLayout;->mElevation:F

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/COUIDraggableVerticalLinearLayout;->setElevation(F)V

    .line 134
    :goto_0
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIDraggableVerticalLinearLayout;->invalidate()V

    .line 135
    return-void
.end method

.method public setOrientation(I)V
    .locals 1
    .param p1, "orientation"    # I

    .line 106
    const/4 v0, 0x1

    invoke-super {p0, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 107
    return-void
.end method
