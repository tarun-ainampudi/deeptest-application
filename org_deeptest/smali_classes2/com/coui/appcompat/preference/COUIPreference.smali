.class public Lcom/coui/appcompat/preference/COUIPreference;
.super Landroidx/preference/Preference;
.source "COUIPreference.java"


# static fields
.field static final DEFAULT_RADIUS:I = 0xe

.field static final DEFAULT_SCALE:I = 0x3

.field static final MAX_RADIUS:I = 0x24

.field static final MIN_RADIUS:I = 0xe

.field static final NO_ICON_HEIGHT:I = 0x0

.field static final ratio:I = 0x6


# instance fields
.field private mAssignment:Ljava/lang/CharSequence;

.field private mContext:Landroid/content/Context;

.field private mHasBorder:Z

.field private mIsEnableClickSpan:Z

.field private mMaxRadius:I

.field private mMinRadius:I

.field private mRadius:I

.field private mScale:F

.field private mShowDivider:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 62
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/preference/COUIPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 69
    invoke-direct {p0, p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coui/appcompat/preference/COUIPreference;->mShowDivider:Z

    .line 70
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Lcom/coui/appcompat/preference/COUIPreference;->init(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 77
    invoke-direct {p0, p1, p2, p3}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 49
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coui/appcompat/preference/COUIPreference;->mShowDivider:Z

    .line 78
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/coui/appcompat/preference/COUIPreference;->init(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 79
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 97
    invoke-direct {p0, p1, p2, p3}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 49
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coui/appcompat/preference/COUIPreference;->mShowDivider:Z

    .line 98
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/coui/appcompat/preference/COUIPreference;->init(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 100
    sget-object v0, Lcoui/support/appcompat/R$styleable;->COUIPreference:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 102
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Lcoui/support/appcompat/R$styleable;->COUIPreference_couiShowDivider:I

    iget-boolean v2, p0, Lcom/coui/appcompat/preference/COUIPreference;->mShowDivider:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/coui/appcompat/preference/COUIPreference;->mShowDivider:Z

    .line 103
    sget v1, Lcoui/support/appcompat/R$styleable;->COUIPreference_hasBorder:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/coui/appcompat/preference/COUIPreference;->mHasBorder:Z

    .line 104
    sget v1, Lcoui/support/appcompat/R$styleable;->COUIPreference_preference_icon_radius:I

    const/16 v3, 0xe

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/preference/COUIPreference;->mRadius:I

    .line 105
    sget v1, Lcoui/support/appcompat/R$styleable;->COUIPreference_couiEnalbeClickSpan:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/coui/appcompat/preference/COUIPreference;->mIsEnableClickSpan:Z

    .line 107
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 108
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    iput v1, p0, Lcom/coui/appcompat/preference/COUIPreference;->mScale:F

    .line 109
    iget v1, p0, Lcom/coui/appcompat/preference/COUIPreference;->mScale:F

    const/high16 v2, 0x41600000    # 14.0f

    mul-float/2addr v1, v2

    const/high16 v2, 0x40400000    # 3.0f

    div-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/coui/appcompat/preference/COUIPreference;->mMinRadius:I

    .line 110
    iget v1, p0, Lcom/coui/appcompat/preference/COUIPreference;->mScale:F

    const/high16 v3, 0x42100000    # 36.0f

    mul-float/2addr v1, v3

    div-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/coui/appcompat/preference/COUIPreference;->mMaxRadius:I

    .line 111
    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 114
    sget-object v0, Lcoui/support/appcompat/R$styleable;->COUIPreference:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 115
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Lcoui/support/appcompat/R$styleable;->COUIPreference_couiAssignment:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/coui/appcompat/preference/COUIPreference;->mAssignment:Ljava/lang/CharSequence;

    .line 116
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 117
    return-void
.end method


# virtual methods
.method public getAssignment()Ljava/lang/CharSequence;
    .locals 1

    .line 239
    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIPreference;->mAssignment:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getBorderRectRadius(I)I
    .locals 1
    .param p1, "iconSize"    # I

    .line 221
    const/16 v0, 0xe

    .line 222
    .local v0, "borderRadius":I
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 228
    :pswitch_0
    const/16 v0, 0x10

    goto :goto_0

    .line 225
    :pswitch_1
    const/16 v0, 0xe

    .line 226
    nop

    .line 230
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

.method public isShowDivider()Z
    .locals 1

    .line 199
    iget-boolean v0, p0, Lcom/coui/appcompat/preference/COUIPreference;->mShowDivider:Z

    return v0
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 5
    .param p1, "holder"    # Landroidx/preference/PreferenceViewHolder;

    .line 121
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 122
    const v0, 0x1020006

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 124
    .local v0, "imageView":Landroid/view/View;
    if-eqz v0, :cond_2

    .line 126
    instance-of v1, v0, Lcom/coui/appcompat/widget/COUIRoundImageView;

    if-eqz v1, :cond_2

    .line 127
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 128
    .local v1, "imgHeight":I
    if-eqz v1, :cond_1

    .line 129
    move-object v2, v0

    check-cast v2, Lcom/coui/appcompat/widget/COUIRoundImageView;

    invoke-virtual {v2}, Lcom/coui/appcompat/widget/COUIRoundImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 130
    .local v2, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_1

    .line 131
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x6

    iput v3, p0, Lcom/coui/appcompat/preference/COUIPreference;->mRadius:I

    .line 132
    iget v3, p0, Lcom/coui/appcompat/preference/COUIPreference;->mRadius:I

    iget v4, p0, Lcom/coui/appcompat/preference/COUIPreference;->mMinRadius:I

    if-ge v3, v4, :cond_0

    .line 133
    iget v3, p0, Lcom/coui/appcompat/preference/COUIPreference;->mMinRadius:I

    iput v3, p0, Lcom/coui/appcompat/preference/COUIPreference;->mRadius:I

    goto :goto_0

    .line 134
    :cond_0
    iget v3, p0, Lcom/coui/appcompat/preference/COUIPreference;->mRadius:I

    iget v4, p0, Lcom/coui/appcompat/preference/COUIPreference;->mMaxRadius:I

    if-le v3, v4, :cond_1

    .line 135
    iget v3, p0, Lcom/coui/appcompat/preference/COUIPreference;->mMaxRadius:I

    iput v3, p0, Lcom/coui/appcompat/preference/COUIPreference;->mRadius:I

    .line 139
    .end local v2    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_1
    :goto_0
    move-object v2, v0

    check-cast v2, Lcom/coui/appcompat/widget/COUIRoundImageView;

    iget-boolean v3, p0, Lcom/coui/appcompat/preference/COUIPreference;->mHasBorder:Z

    invoke-virtual {v2, v3}, Lcom/coui/appcompat/widget/COUIRoundImageView;->setHasBorder(Z)V

    .line 140
    move-object v2, v0

    check-cast v2, Lcom/coui/appcompat/widget/COUIRoundImageView;

    iget v3, p0, Lcom/coui/appcompat/preference/COUIPreference;->mRadius:I

    invoke-virtual {v2, v3}, Lcom/coui/appcompat/widget/COUIRoundImageView;->setBorderRectRadius(I)V

    .line 144
    .end local v1    # "imgHeight":I
    :cond_2
    iget-boolean v1, p0, Lcom/coui/appcompat/preference/COUIPreference;->mIsEnableClickSpan:Z

    if-eqz v1, :cond_3

    .line 145
    const v1, 0x1020010

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 146
    .local v1, "summaryView":Landroid/widget/TextView;
    if-eqz v1, :cond_3

    .line 147
    invoke-virtual {p0}, Lcom/coui/appcompat/preference/COUIPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x106000d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setHighlightColor(I)V

    .line 148
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 149
    new-instance v2, Lcom/coui/appcompat/preference/COUIPreference$1;

    invoke-direct {v2, p0, v1}, Lcom/coui/appcompat/preference/COUIPreference$1;-><init>(Lcom/coui/appcompat/preference/COUIPreference;Landroid/widget/TextView;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 181
    .end local v1    # "summaryView":Landroid/widget/TextView;
    :cond_3
    sget v1, Lcoui/support/appcompat/R$id;->assignment:I

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 182
    .local v1, "assignmentView":Landroid/widget/TextView;
    if-eqz v1, :cond_5

    .line 183
    invoke-virtual {p0}, Lcom/coui/appcompat/preference/COUIPreference;->getAssignment()Ljava/lang/CharSequence;

    move-result-object v2

    .line 184
    .local v2, "assignment":Ljava/lang/CharSequence;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 185
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 186
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 188
    :cond_4
    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 191
    .end local v2    # "assignment":Ljava/lang/CharSequence;
    :cond_5
    :goto_1
    return-void
.end method

.method public setAssignment(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "assignment"    # Ljava/lang/CharSequence;

    .line 248
    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIPreference;->mAssignment:Ljava/lang/CharSequence;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 249
    iput-object p1, p0, Lcom/coui/appcompat/preference/COUIPreference;->mAssignment:Ljava/lang/CharSequence;

    .line 250
    invoke-virtual {p0}, Lcom/coui/appcompat/preference/COUIPreference;->notifyChanged()V

    .line 252
    :cond_0
    return-void
.end method

.method public setShowDivider(Z)V
    .locals 1
    .param p1, "show"    # Z

    .line 208
    iget-boolean v0, p0, Lcom/coui/appcompat/preference/COUIPreference;->mShowDivider:Z

    if-eq v0, p1, :cond_0

    .line 209
    iput-boolean p1, p0, Lcom/coui/appcompat/preference/COUIPreference;->mShowDivider:Z

    .line 210
    invoke-virtual {p0}, Lcom/coui/appcompat/preference/COUIPreference;->notifyChanged()V

    .line 212
    :cond_0
    return-void
.end method
