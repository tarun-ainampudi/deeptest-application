.class public Lcom/coui/appcompat/preference/COUIMarkPreference;
.super Landroidx/preference/CheckBoxPreference;
.source "COUIMarkPreference.java"


# static fields
.field public static final HEAD_MARK:I = 0x1

.field public static final TAIL_MARK:I


# instance fields
.field private mDividerDrawable:Landroid/graphics/drawable/Drawable;

.field private mHasBorder:Z

.field private mIsEnableClickSpan:Z

.field mMarkStyle:I

.field private mMaxRadius:I

.field private mMinRadius:I

.field private mRadius:I

.field private mScale:F

.field private mShowDivider:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 120
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/preference/COUIMarkPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 121
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 113
    sget v0, Lcoui/support/appcompat/R$attr;->couiMarkPreferenceStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/preference/COUIMarkPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 114
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 106
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/coui/appcompat/preference/COUIMarkPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 107
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 82
    invoke-direct {p0, p1, p2, p3}, Landroidx/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 57
    const/4 v0, 0x0

    iput v0, p0, Lcom/coui/appcompat/preference/COUIMarkPreference;->mMarkStyle:I

    .line 58
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/coui/appcompat/preference/COUIMarkPreference;->mShowDivider:Z

    .line 84
    sget-object v2, Lcoui/support/appcompat/R$styleable;->COUIMarkPreference:[I

    invoke-virtual {p1, p2, v2, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 85
    .local v2, "a":Landroid/content/res/TypedArray;
    sget v3, Lcoui/support/appcompat/R$styleable;->COUIMarkPreference_couiMarkStyle:I

    invoke-virtual {v2, v3, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Lcom/coui/appcompat/preference/COUIMarkPreference;->mMarkStyle:I

    .line 86
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 88
    sget-object v3, Lcoui/support/appcompat/R$styleable;->COUIPreference:[I

    invoke-virtual {p1, p2, v3, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 89
    .local v3, "b":Landroid/content/res/TypedArray;
    sget v4, Lcoui/support/appcompat/R$styleable;->COUIPreference_couiShowDivider:I

    iget-boolean v5, p0, Lcom/coui/appcompat/preference/COUIMarkPreference;->mShowDivider:Z

    invoke-virtual {v3, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Lcom/coui/appcompat/preference/COUIMarkPreference;->mShowDivider:Z

    .line 90
    sget v4, Lcoui/support/appcompat/R$styleable;->COUIPreference_couiDividerDrawable:I

    invoke-virtual {v3, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/coui/appcompat/preference/COUIMarkPreference;->mDividerDrawable:Landroid/graphics/drawable/Drawable;

    .line 91
    sget v4, Lcoui/support/appcompat/R$styleable;->COUIPreference_hasBorder:I

    invoke-virtual {v3, v4, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Lcom/coui/appcompat/preference/COUIMarkPreference;->mHasBorder:Z

    .line 93
    sget v4, Lcoui/support/appcompat/R$styleable;->COUIPreference_preference_icon_radius:I

    const/16 v5, 0xe

    invoke-virtual {v3, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/coui/appcompat/preference/COUIMarkPreference;->mRadius:I

    .line 94
    sget v4, Lcoui/support/appcompat/R$styleable;->COUIPreference_couiEnalbeClickSpan:I

    invoke-virtual {v3, v4, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/coui/appcompat/preference/COUIMarkPreference;->mIsEnableClickSpan:Z

    .line 95
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 96
    invoke-virtual {p0, v1}, Lcom/coui/appcompat/preference/COUIMarkPreference;->setChecked(Z)V

    .line 97
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/coui/appcompat/preference/COUIMarkPreference;->mScale:F

    .line 98
    iget v0, p0, Lcom/coui/appcompat/preference/COUIMarkPreference;->mScale:F

    const/high16 v1, 0x41600000    # 14.0f

    mul-float/2addr v0, v1

    const/high16 v1, 0x40400000    # 3.0f

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/coui/appcompat/preference/COUIMarkPreference;->mMinRadius:I

    .line 99
    iget v0, p0, Lcom/coui/appcompat/preference/COUIMarkPreference;->mScale:F

    const/high16 v4, 0x42100000    # 36.0f

    mul-float/2addr v0, v4

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/coui/appcompat/preference/COUIMarkPreference;->mMaxRadius:I

    .line 100
    return-void
.end method


# virtual methods
.method public getBorderRectRadius(I)I
    .locals 1
    .param p1, "iconSize"    # I

    .line 241
    const/16 v0, 0xe

    .line 242
    .local v0, "borderRadius":I
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 248
    :pswitch_0
    const/16 v0, 0x10

    goto :goto_0

    .line 245
    :pswitch_1
    const/16 v0, 0xe

    .line 246
    nop

    .line 250
    :goto_0
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getMarkStyle()I
    .locals 1

    .line 128
    iget v0, p0, Lcom/coui/appcompat/preference/COUIMarkPreference;->mMarkStyle:I

    return v0
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 7
    .param p1, "holder"    # Landroidx/preference/PreferenceViewHolder;

    .line 133
    invoke-super {p0, p1}, Landroidx/preference/CheckBoxPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 134
    sget v0, Lcoui/support/appcompat/R$id;->coui_tail_mark:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 135
    .local v0, "checkableView":Landroid/view/View;
    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    instance-of v3, v0, Landroid/widget/Checkable;

    if-eqz v3, :cond_1

    .line 136
    iget v3, p0, Lcom/coui/appcompat/preference/COUIMarkPreference;->mMarkStyle:I

    if-nez v3, :cond_0

    .line 137
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 138
    move-object v3, v0

    check-cast v3, Landroid/widget/Checkable;

    invoke-virtual {p0}, Lcom/coui/appcompat/preference/COUIMarkPreference;->isChecked()Z

    move-result v4

    invoke-interface {v3, v4}, Landroid/widget/Checkable;->setChecked(Z)V

    goto :goto_0

    .line 140
    :cond_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 143
    :cond_1
    :goto_0
    sget v3, Lcoui/support/appcompat/R$id;->coui_head_mark:I

    invoke-virtual {p1, v3}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 144
    .local v3, "checkableHeadView":Landroid/view/View;
    if-eqz v3, :cond_3

    instance-of v4, v3, Landroid/widget/Checkable;

    if-eqz v4, :cond_3

    .line 145
    iget v4, p0, Lcom/coui/appcompat/preference/COUIMarkPreference;->mMarkStyle:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    .line 146
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 147
    move-object v1, v3

    check-cast v1, Landroid/widget/Checkable;

    invoke-virtual {p0}, Lcom/coui/appcompat/preference/COUIMarkPreference;->isChecked()Z

    move-result v2

    invoke-interface {v1, v2}, Landroid/widget/Checkable;->setChecked(Z)V

    goto :goto_1

    .line 149
    :cond_2
    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 152
    :cond_3
    :goto_1
    const v1, 0x1020006

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 153
    .local v1, "imageView":Landroid/view/View;
    if-eqz v1, :cond_6

    .line 155
    instance-of v2, v1, Lcom/coui/appcompat/widget/COUIRoundImageView;

    if-eqz v2, :cond_6

    .line 156
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 157
    .local v2, "imgHeight":I
    if-eqz v2, :cond_5

    .line 158
    move-object v4, v1

    check-cast v4, Lcom/coui/appcompat/widget/COUIRoundImageView;

    invoke-virtual {v4}, Lcom/coui/appcompat/widget/COUIRoundImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 159
    .local v4, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v4, :cond_5

    .line 160
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x6

    iput v5, p0, Lcom/coui/appcompat/preference/COUIMarkPreference;->mRadius:I

    .line 161
    iget v5, p0, Lcom/coui/appcompat/preference/COUIMarkPreference;->mRadius:I

    iget v6, p0, Lcom/coui/appcompat/preference/COUIMarkPreference;->mMinRadius:I

    if-ge v5, v6, :cond_4

    .line 162
    iget v5, p0, Lcom/coui/appcompat/preference/COUIMarkPreference;->mMinRadius:I

    iput v5, p0, Lcom/coui/appcompat/preference/COUIMarkPreference;->mRadius:I

    goto :goto_2

    .line 163
    :cond_4
    iget v5, p0, Lcom/coui/appcompat/preference/COUIMarkPreference;->mRadius:I

    iget v6, p0, Lcom/coui/appcompat/preference/COUIMarkPreference;->mMaxRadius:I

    if-le v5, v6, :cond_5

    .line 164
    iget v5, p0, Lcom/coui/appcompat/preference/COUIMarkPreference;->mMaxRadius:I

    iput v5, p0, Lcom/coui/appcompat/preference/COUIMarkPreference;->mRadius:I

    .line 168
    .end local v4    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_5
    :goto_2
    move-object v4, v1

    check-cast v4, Lcom/coui/appcompat/widget/COUIRoundImageView;

    iget-boolean v5, p0, Lcom/coui/appcompat/preference/COUIMarkPreference;->mHasBorder:Z

    invoke-virtual {v4, v5}, Lcom/coui/appcompat/widget/COUIRoundImageView;->setHasBorder(Z)V

    .line 169
    move-object v4, v1

    check-cast v4, Lcom/coui/appcompat/widget/COUIRoundImageView;

    iget v5, p0, Lcom/coui/appcompat/preference/COUIMarkPreference;->mRadius:I

    invoke-virtual {v4, v5}, Lcom/coui/appcompat/widget/COUIRoundImageView;->setBorderRectRadius(I)V

    .line 172
    .end local v2    # "imgHeight":I
    :cond_6
    iget-boolean v2, p0, Lcom/coui/appcompat/preference/COUIMarkPreference;->mIsEnableClickSpan:Z

    if-eqz v2, :cond_7

    .line 173
    const v2, 0x1020010

    invoke-virtual {p1, v2}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 174
    .local v2, "summaryView":Landroid/widget/TextView;
    if-eqz v2, :cond_7

    .line 175
    invoke-virtual {p0}, Lcom/coui/appcompat/preference/COUIMarkPreference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x106000d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setHighlightColor(I)V

    .line 176
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 177
    new-instance v4, Lcom/coui/appcompat/preference/COUIMarkPreference$1;

    invoke-direct {v4, p0, v2}, Lcom/coui/appcompat/preference/COUIMarkPreference$1;-><init>(Lcom/coui/appcompat/preference/COUIMarkPreference;Landroid/widget/TextView;)V

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 208
    .end local v2    # "summaryView":Landroid/widget/TextView;
    :cond_7
    return-void
.end method

.method public setDividerDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .line 228
    if-eqz p1, :cond_0

    .line 229
    iput-object p1, p0, Lcom/coui/appcompat/preference/COUIMarkPreference;->mDividerDrawable:Landroid/graphics/drawable/Drawable;

    .line 230
    invoke-virtual {p0}, Lcom/coui/appcompat/preference/COUIMarkPreference;->notifyChanged()V

    .line 232
    :cond_0
    return-void
.end method

.method public setMarkStyle(I)V
    .locals 0
    .param p1, "style"    # I

    .line 124
    iput p1, p0, Lcom/coui/appcompat/preference/COUIMarkPreference;->mMarkStyle:I

    .line 125
    return-void
.end method

.method public setShowDivider(Z)V
    .locals 1
    .param p1, "show"    # Z

    .line 216
    iget-boolean v0, p0, Lcom/coui/appcompat/preference/COUIMarkPreference;->mShowDivider:Z

    if-eq v0, p1, :cond_0

    .line 217
    iput-boolean p1, p0, Lcom/coui/appcompat/preference/COUIMarkPreference;->mShowDivider:Z

    .line 218
    invoke-virtual {p0}, Lcom/coui/appcompat/preference/COUIMarkPreference;->notifyChanged()V

    .line 220
    :cond_0
    return-void
.end method
