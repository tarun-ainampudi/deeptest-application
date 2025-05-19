.class public Lcom/coui/appcompat/preference/COUISwitchPreference;
.super Landroidx/preference/SwitchPreference;
.source "COUISwitchPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/preference/COUISwitchPreference$Listener;
    }
.end annotation


# instance fields
.field private mAssignment:Ljava/lang/CharSequence;

.field private mDividerDrawable:Landroid/graphics/drawable/Drawable;

.field private mHasBorder:Z

.field private mIsEnableClickSpan:Z

.field private final mListener:Lcom/coui/appcompat/preference/COUISwitchPreference$Listener;

.field private mMaxRadius:I

.field private mMinRadius:I

.field private mRadius:I

.field private mScale:F

.field private mShowDivider:Z

.field private mSwitchView:Lcom/coui/appcompat/widget/COUISwitch;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 97
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/preference/COUISwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 98
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 104
    sget v0, Lcoui/support/appcompat/R$attr;->switchPreferenceStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/preference/COUISwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 105
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 112
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/coui/appcompat/preference/COUISwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 113
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 130
    invoke-direct {p0, p1, p2, p3}, Landroidx/preference/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 51
    new-instance v0, Lcom/coui/appcompat/preference/COUISwitchPreference$Listener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/coui/appcompat/preference/COUISwitchPreference$Listener;-><init>(Lcom/coui/appcompat/preference/COUISwitchPreference;Lcom/coui/appcompat/preference/COUISwitchPreference$1;)V

    iput-object v0, p0, Lcom/coui/appcompat/preference/COUISwitchPreference;->mListener:Lcom/coui/appcompat/preference/COUISwitchPreference$Listener;

    .line 53
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coui/appcompat/preference/COUISwitchPreference;->mShowDivider:Z

    .line 131
    sget-object v0, Lcoui/support/appcompat/R$styleable;->COUIPreference:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 133
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v2, Lcoui/support/appcompat/R$styleable;->COUIPreference_couiShowDivider:I

    iget-boolean v3, p0, Lcom/coui/appcompat/preference/COUISwitchPreference;->mShowDivider:Z

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/coui/appcompat/preference/COUISwitchPreference;->mShowDivider:Z

    .line 134
    sget v2, Lcoui/support/appcompat/R$styleable;->COUIPreference_couiDividerDrawable:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/coui/appcompat/preference/COUISwitchPreference;->mDividerDrawable:Landroid/graphics/drawable/Drawable;

    .line 135
    sget v2, Lcoui/support/appcompat/R$styleable;->COUIPreference_couiEnalbeClickSpan:I

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/coui/appcompat/preference/COUISwitchPreference;->mIsEnableClickSpan:Z

    .line 136
    sget v2, Lcoui/support/appcompat/R$styleable;->COUIPreference_hasBorder:I

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/coui/appcompat/preference/COUISwitchPreference;->mHasBorder:Z

    .line 137
    sget v1, Lcoui/support/appcompat/R$styleable;->COUIPreference_preference_icon_radius:I

    const/16 v2, 0xe

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/preference/COUISwitchPreference;->mRadius:I

    .line 138
    sget v1, Lcoui/support/appcompat/R$styleable;->COUIPreference_couiAssignment:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/coui/appcompat/preference/COUISwitchPreference;->mAssignment:Ljava/lang/CharSequence;

    .line 139
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 141
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    iput v1, p0, Lcom/coui/appcompat/preference/COUISwitchPreference;->mScale:F

    .line 142
    iget v1, p0, Lcom/coui/appcompat/preference/COUISwitchPreference;->mScale:F

    const/high16 v2, 0x41600000    # 14.0f

    mul-float/2addr v1, v2

    const/high16 v2, 0x40400000    # 3.0f

    div-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/coui/appcompat/preference/COUISwitchPreference;->mMinRadius:I

    .line 143
    iget v1, p0, Lcom/coui/appcompat/preference/COUISwitchPreference;->mScale:F

    const/high16 v3, 0x42100000    # 36.0f

    mul-float/2addr v1, v3

    div-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/coui/appcompat/preference/COUISwitchPreference;->mMaxRadius:I

    .line 144
    return-void
.end method

.method static synthetic access$100(Lcom/coui/appcompat/preference/COUISwitchPreference;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/preference/COUISwitchPreference;
    .param p1, "x1"    # Ljava/lang/Object;

    .line 49
    invoke-direct {p0, p1}, Lcom/coui/appcompat/preference/COUISwitchPreference;->callCustomChangeListener(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private callCustomChangeListener(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "newValue"    # Ljava/lang/Object;

    .line 85
    invoke-virtual {p0}, Lcom/coui/appcompat/preference/COUISwitchPreference;->getOnPreferenceChangeListener()Landroidx/preference/Preference$OnPreferenceChangeListener;

    move-result-object v0

    if-nez v0, :cond_0

    .line 86
    const/4 v0, 0x1

    return v0

    .line 88
    :cond_0
    invoke-virtual {p0}, Lcom/coui/appcompat/preference/COUISwitchPreference;->getOnPreferenceChangeListener()Landroidx/preference/Preference$OnPreferenceChangeListener;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroidx/preference/Preference$OnPreferenceChangeListener;->onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public getAssignment()Ljava/lang/CharSequence;
    .locals 1

    .line 311
    iget-object v0, p0, Lcom/coui/appcompat/preference/COUISwitchPreference;->mAssignment:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getBorderRectRadius(I)I
    .locals 1
    .param p1, "iconSize"    # I

    .line 293
    const/16 v0, 0xe

    .line 294
    .local v0, "borderRadius":I
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 300
    :pswitch_0
    const/16 v0, 0x10

    goto :goto_0

    .line 297
    :pswitch_1
    const/16 v0, 0xe

    .line 298
    nop

    .line 302
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

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 8
    .param p1, "holder"    # Landroidx/preference/PreferenceViewHolder;

    .line 148
    sget v0, Lcoui/support/appcompat/R$id;->coui_preference:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 149
    .local v0, "itemView":Landroid/view/View;
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 150
    invoke-virtual {v0, v1}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    .line 151
    invoke-virtual {v0, v1}, Landroid/view/View;->setHapticFeedbackEnabled(Z)V

    .line 153
    :cond_0
    const v2, 0x1020040

    invoke-virtual {p1, v2}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 154
    .local v2, "checkableView":Landroid/view/View;
    instance-of v3, v2, Lcom/coui/appcompat/widget/COUISwitch;

    if-eqz v3, :cond_1

    .line 155
    move-object v3, v2

    check-cast v3, Lcom/coui/appcompat/widget/COUISwitch;

    .line 156
    .local v3, "switchView":Lcom/coui/appcompat/widget/COUISwitch;
    invoke-virtual {v3}, Lcom/coui/appcompat/widget/COUISwitch;->setLaidOut()V

    .line 157
    iget-object v4, p0, Lcom/coui/appcompat/preference/COUISwitchPreference;->mListener:Lcom/coui/appcompat/preference/COUISwitchPreference$Listener;

    invoke-virtual {v3, v4}, Lcom/coui/appcompat/widget/COUISwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 158
    invoke-virtual {v3, v1}, Lcom/coui/appcompat/widget/COUISwitch;->setVerticalScrollBarEnabled(Z)V

    .line 159
    iput-object v3, p0, Lcom/coui/appcompat/preference/COUISwitchPreference;->mSwitchView:Lcom/coui/appcompat/widget/COUISwitch;

    .line 161
    .end local v3    # "switchView":Lcom/coui/appcompat/widget/COUISwitch;
    :cond_1
    invoke-super {p0, p1}, Landroidx/preference/SwitchPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 163
    iget-boolean v3, p0, Lcom/coui/appcompat/preference/COUISwitchPreference;->mIsEnableClickSpan:Z

    if-eqz v3, :cond_2

    .line 164
    const v3, 0x1020010

    invoke-virtual {p1, v3}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 165
    .local v3, "summaryView":Landroid/widget/TextView;
    if-eqz v3, :cond_2

    .line 166
    invoke-virtual {p0}, Lcom/coui/appcompat/preference/COUISwitchPreference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x106000d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setHighlightColor(I)V

    .line 167
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 168
    new-instance v4, Lcom/coui/appcompat/preference/COUISwitchPreference$1;

    invoke-direct {v4, p0, v3}, Lcom/coui/appcompat/preference/COUISwitchPreference$1;-><init>(Lcom/coui/appcompat/preference/COUISwitchPreference;Landroid/widget/TextView;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 200
    .end local v3    # "summaryView":Landroid/widget/TextView;
    :cond_2
    iget-object v3, p1, Landroidx/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    const v4, 0x1020006

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 201
    .local v3, "imageView":Landroid/view/View;
    if-eqz v3, :cond_5

    .line 202
    instance-of v4, v3, Lcom/coui/appcompat/widget/COUIRoundImageView;

    if-eqz v4, :cond_5

    .line 203
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v4

    .line 204
    .local v4, "imgHeight":I
    if-eqz v4, :cond_4

    .line 205
    move-object v5, v3

    check-cast v5, Lcom/coui/appcompat/widget/COUIRoundImageView;

    invoke-virtual {v5}, Lcom/coui/appcompat/widget/COUIRoundImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 206
    .local v5, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v5, :cond_4

    .line 207
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x6

    iput v6, p0, Lcom/coui/appcompat/preference/COUISwitchPreference;->mRadius:I

    .line 208
    iget v6, p0, Lcom/coui/appcompat/preference/COUISwitchPreference;->mRadius:I

    iget v7, p0, Lcom/coui/appcompat/preference/COUISwitchPreference;->mMinRadius:I

    if-ge v6, v7, :cond_3

    .line 209
    iget v6, p0, Lcom/coui/appcompat/preference/COUISwitchPreference;->mMinRadius:I

    iput v6, p0, Lcom/coui/appcompat/preference/COUISwitchPreference;->mRadius:I

    goto :goto_0

    .line 210
    :cond_3
    iget v6, p0, Lcom/coui/appcompat/preference/COUISwitchPreference;->mRadius:I

    iget v7, p0, Lcom/coui/appcompat/preference/COUISwitchPreference;->mMaxRadius:I

    if-le v6, v7, :cond_4

    .line 211
    iget v6, p0, Lcom/coui/appcompat/preference/COUISwitchPreference;->mMaxRadius:I

    iput v6, p0, Lcom/coui/appcompat/preference/COUISwitchPreference;->mRadius:I

    .line 215
    .end local v5    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_4
    :goto_0
    move-object v5, v3

    check-cast v5, Lcom/coui/appcompat/widget/COUIRoundImageView;

    iget-boolean v6, p0, Lcom/coui/appcompat/preference/COUISwitchPreference;->mHasBorder:Z

    invoke-virtual {v5, v6}, Lcom/coui/appcompat/widget/COUIRoundImageView;->setHasBorder(Z)V

    .line 216
    move-object v5, v3

    check-cast v5, Lcom/coui/appcompat/widget/COUIRoundImageView;

    iget v6, p0, Lcom/coui/appcompat/preference/COUISwitchPreference;->mRadius:I

    invoke-virtual {v5, v6}, Lcom/coui/appcompat/widget/COUIRoundImageView;->setBorderRectRadius(I)V

    .line 220
    .end local v4    # "imgHeight":I
    :cond_5
    iget-object v4, p1, Landroidx/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    sget v5, Lcoui/support/appcompat/R$id;->assignment:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 221
    .local v4, "assignmentView":Landroid/widget/TextView;
    if-eqz v4, :cond_7

    .line 222
    invoke-virtual {p0}, Lcom/coui/appcompat/preference/COUISwitchPreference;->getAssignment()Ljava/lang/CharSequence;

    move-result-object v5

    .line 223
    .local v5, "assignment":Ljava/lang/CharSequence;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 224
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 225
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 227
    :cond_6
    const/16 v1, 0x8

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 230
    .end local v5    # "assignment":Ljava/lang/CharSequence;
    :cond_7
    :goto_1
    return-void
.end method

.method protected onClick()V
    .locals 1

    .line 235
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/preference/COUISwitchPreference;->setPlaySound(Z)V

    .line 236
    invoke-virtual {p0, v0}, Lcom/coui/appcompat/preference/COUISwitchPreference;->setPerformFeedBack(Z)V

    .line 237
    invoke-super {p0}, Landroidx/preference/SwitchPreference;->onClick()V

    .line 238
    return-void
.end method

.method public setAssignment(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "assignment"    # Ljava/lang/CharSequence;

    .line 320
    iget-object v0, p0, Lcom/coui/appcompat/preference/COUISwitchPreference;->mAssignment:Ljava/lang/CharSequence;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 321
    iput-object p1, p0, Lcom/coui/appcompat/preference/COUISwitchPreference;->mAssignment:Ljava/lang/CharSequence;

    .line 322
    invoke-virtual {p0}, Lcom/coui/appcompat/preference/COUISwitchPreference;->notifyChanged()V

    .line 324
    :cond_0
    return-void
.end method

.method public setDividerDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .line 280
    if-eqz p1, :cond_0

    .line 281
    iput-object p1, p0, Lcom/coui/appcompat/preference/COUISwitchPreference;->mDividerDrawable:Landroid/graphics/drawable/Drawable;

    .line 282
    invoke-virtual {p0}, Lcom/coui/appcompat/preference/COUISwitchPreference;->notifyChanged()V

    .line 284
    :cond_0
    return-void
.end method

.method public setPerformFeedBack(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .line 257
    iget-object v0, p0, Lcom/coui/appcompat/preference/COUISwitchPreference;->mSwitchView:Lcom/coui/appcompat/widget/COUISwitch;

    if-eqz v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/coui/appcompat/preference/COUISwitchPreference;->mSwitchView:Lcom/coui/appcompat/widget/COUISwitch;

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/widget/COUISwitch;->setTactileFeedbackEnabled(Z)V

    .line 260
    :cond_0
    return-void
.end method

.method public setPlaySound(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .line 246
    iget-object v0, p0, Lcom/coui/appcompat/preference/COUISwitchPreference;->mSwitchView:Lcom/coui/appcompat/widget/COUISwitch;

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/coui/appcompat/preference/COUISwitchPreference;->mSwitchView:Lcom/coui/appcompat/widget/COUISwitch;

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/widget/COUISwitch;->setShouldPlaySound(Z)V

    .line 249
    :cond_0
    return-void
.end method

.method public setShowDivider(Z)V
    .locals 1
    .param p1, "show"    # Z

    .line 268
    iget-boolean v0, p0, Lcom/coui/appcompat/preference/COUISwitchPreference;->mShowDivider:Z

    if-eq v0, p1, :cond_0

    .line 269
    iput-boolean p1, p0, Lcom/coui/appcompat/preference/COUISwitchPreference;->mShowDivider:Z

    .line 270
    invoke-virtual {p0}, Lcom/coui/appcompat/preference/COUISwitchPreference;->notifyChanged()V

    .line 272
    :cond_0
    return-void
.end method
