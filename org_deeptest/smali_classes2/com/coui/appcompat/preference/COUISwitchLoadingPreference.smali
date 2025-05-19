.class public Lcom/coui/appcompat/preference/COUISwitchLoadingPreference;
.super Landroidx/preference/SwitchPreferenceCompat;
.source "COUISwitchLoadingPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/preference/COUISwitchLoadingPreference$Listener;
    }
.end annotation


# instance fields
.field mCheckableView:Landroid/view/View;

.field private mDividerDrawable:Landroid/graphics/drawable/Drawable;

.field private mIsEnableClickSpan:Z

.field private final mListener:Lcom/coui/appcompat/preference/COUISwitchLoadingPreference$Listener;

.field private mLoadingView:Lcom/coui/appcompat/widget/COUILoadingView;

.field private mOnLoadingStateChangedListener:Lcom/coui/appcompat/widget/COUISwitch$OnLoadingStateChangedListener;

.field private mShowDivider:Z

.field private mSwitchView:Lcom/coui/appcompat/widget/COUISwitch;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 78
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/preference/COUISwitchLoadingPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 79
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 85
    sget v0, Lcoui/support/appcompat/R$attr;->couiSwitchLoadPreferenceStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/preference/COUISwitchLoadingPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 86
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 93
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/coui/appcompat/preference/COUISwitchLoadingPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 94
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 109
    invoke-direct {p0, p1, p2, p3}, Landroidx/preference/SwitchPreferenceCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    new-instance v0, Lcom/coui/appcompat/preference/COUISwitchLoadingPreference$Listener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/coui/appcompat/preference/COUISwitchLoadingPreference$Listener;-><init>(Lcom/coui/appcompat/preference/COUISwitchLoadingPreference;Lcom/coui/appcompat/preference/COUISwitchLoadingPreference$1;)V

    iput-object v0, p0, Lcom/coui/appcompat/preference/COUISwitchLoadingPreference;->mListener:Lcom/coui/appcompat/preference/COUISwitchLoadingPreference$Listener;

    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coui/appcompat/preference/COUISwitchLoadingPreference;->mShowDivider:Z

    .line 111
    sget-object v0, Lcoui/support/appcompat/R$styleable;->COUIPreference:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 113
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v2, Lcoui/support/appcompat/R$styleable;->COUIPreference_couiShowDivider:I

    iget-boolean v3, p0, Lcom/coui/appcompat/preference/COUISwitchLoadingPreference;->mShowDivider:Z

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/coui/appcompat/preference/COUISwitchLoadingPreference;->mShowDivider:Z

    .line 114
    sget v2, Lcoui/support/appcompat/R$styleable;->COUIPreference_couiDividerDrawable:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/coui/appcompat/preference/COUISwitchLoadingPreference;->mDividerDrawable:Landroid/graphics/drawable/Drawable;

    .line 115
    sget v2, Lcoui/support/appcompat/R$styleable;->COUIPreference_couiEnalbeClickSpan:I

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/coui/appcompat/preference/COUISwitchLoadingPreference;->mIsEnableClickSpan:Z

    .line 116
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 117
    return-void
.end method

.method static synthetic access$100(Lcom/coui/appcompat/preference/COUISwitchLoadingPreference;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/preference/COUISwitchLoadingPreference;
    .param p1, "x1"    # Ljava/lang/Object;

    .line 40
    invoke-direct {p0, p1}, Lcom/coui/appcompat/preference/COUISwitchLoadingPreference;->callCustomChangeListener(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private callCustomChangeListener(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "newValue"    # Ljava/lang/Object;

    .line 66
    invoke-virtual {p0}, Lcom/coui/appcompat/preference/COUISwitchLoadingPreference;->getOnPreferenceChangeListener()Landroidx/preference/Preference$OnPreferenceChangeListener;

    move-result-object v0

    if-nez v0, :cond_0

    .line 67
    const/4 v0, 0x1

    return v0

    .line 69
    :cond_0
    invoke-virtual {p0}, Lcom/coui/appcompat/preference/COUISwitchLoadingPreference;->getOnPreferenceChangeListener()Landroidx/preference/Preference$OnPreferenceChangeListener;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroidx/preference/Preference$OnPreferenceChangeListener;->onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public getProgressBar()Lcom/coui/appcompat/widget/COUILoadingView;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 224
    iget-object v0, p0, Lcom/coui/appcompat/preference/COUISwitchLoadingPreference;->mLoadingView:Lcom/coui/appcompat/widget/COUILoadingView;

    return-object v0
.end method

.method public getSwitch()Landroid/view/View;
    .locals 1

    .line 233
    iget-object v0, p0, Lcom/coui/appcompat/preference/COUISwitchLoadingPreference;->mCheckableView:Landroid/view/View;

    return-object v0
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 4
    .param p1, "holder"    # Landroidx/preference/PreferenceViewHolder;

    .line 121
    sget v0, Lcoui/support/appcompat/R$id;->coui_preference:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 122
    .local v0, "itemView":Landroid/view/View;
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 123
    invoke-virtual {v0, v1}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    .line 124
    invoke-virtual {v0, v1}, Landroid/view/View;->setHapticFeedbackEnabled(Z)V

    .line 126
    :cond_0
    sget v2, Lcoui/support/appcompat/R$id;->switchWidget:I

    invoke-virtual {p1, v2}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/coui/appcompat/preference/COUISwitchLoadingPreference;->mCheckableView:Landroid/view/View;

    .line 127
    iget-object v2, p0, Lcom/coui/appcompat/preference/COUISwitchLoadingPreference;->mCheckableView:Landroid/view/View;

    instance-of v2, v2, Lcom/coui/appcompat/widget/COUISwitch;

    if-eqz v2, :cond_1

    .line 128
    iget-object v2, p0, Lcom/coui/appcompat/preference/COUISwitchLoadingPreference;->mCheckableView:Landroid/view/View;

    check-cast v2, Lcom/coui/appcompat/widget/COUISwitch;

    .line 129
    .local v2, "switchView":Lcom/coui/appcompat/widget/COUISwitch;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/coui/appcompat/widget/COUISwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 130
    invoke-virtual {v2, v1}, Lcom/coui/appcompat/widget/COUISwitch;->setVerticalScrollBarEnabled(Z)V

    .line 131
    iput-object v2, p0, Lcom/coui/appcompat/preference/COUISwitchLoadingPreference;->mSwitchView:Lcom/coui/appcompat/widget/COUISwitch;

    .line 133
    .end local v2    # "switchView":Lcom/coui/appcompat/widget/COUISwitch;
    :cond_1
    invoke-super {p0, p1}, Landroidx/preference/SwitchPreferenceCompat;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 134
    iget-object v1, p0, Lcom/coui/appcompat/preference/COUISwitchLoadingPreference;->mCheckableView:Landroid/view/View;

    instance-of v1, v1, Lcom/coui/appcompat/widget/COUISwitch;

    if-eqz v1, :cond_2

    .line 135
    iget-object v1, p0, Lcom/coui/appcompat/preference/COUISwitchLoadingPreference;->mCheckableView:Landroid/view/View;

    check-cast v1, Lcom/coui/appcompat/widget/COUISwitch;

    .line 136
    .local v1, "switchView":Lcom/coui/appcompat/widget/COUISwitch;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/coui/appcompat/widget/COUISwitch;->setLoadingStyle(Z)V

    .line 137
    invoke-virtual {v1}, Lcom/coui/appcompat/widget/COUISwitch;->setLaidOut()V

    .line 138
    iget-object v2, p0, Lcom/coui/appcompat/preference/COUISwitchLoadingPreference;->mOnLoadingStateChangedListener:Lcom/coui/appcompat/widget/COUISwitch$OnLoadingStateChangedListener;

    invoke-virtual {v1, v2}, Lcom/coui/appcompat/widget/COUISwitch;->setOnLoadingStateChangedListener(Lcom/coui/appcompat/widget/COUISwitch$OnLoadingStateChangedListener;)V

    .line 139
    iget-object v2, p0, Lcom/coui/appcompat/preference/COUISwitchLoadingPreference;->mListener:Lcom/coui/appcompat/preference/COUISwitchLoadingPreference$Listener;

    invoke-virtual {v1, v2}, Lcom/coui/appcompat/widget/COUISwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 142
    .end local v1    # "switchView":Lcom/coui/appcompat/widget/COUISwitch;
    :cond_2
    iget-boolean v1, p0, Lcom/coui/appcompat/preference/COUISwitchLoadingPreference;->mIsEnableClickSpan:Z

    if-eqz v1, :cond_3

    .line 143
    const v1, 0x1020010

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 144
    .local v1, "summaryView":Landroid/widget/TextView;
    if-eqz v1, :cond_3

    .line 145
    invoke-virtual {p0}, Lcom/coui/appcompat/preference/COUISwitchLoadingPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x106000d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setHighlightColor(I)V

    .line 146
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 147
    new-instance v2, Lcom/coui/appcompat/preference/COUISwitchLoadingPreference$1;

    invoke-direct {v2, p0, v1}, Lcom/coui/appcompat/preference/COUISwitchLoadingPreference$1;-><init>(Lcom/coui/appcompat/preference/COUISwitchLoadingPreference;Landroid/widget/TextView;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 178
    .end local v1    # "summaryView":Landroid/widget/TextView;
    :cond_3
    return-void
.end method

.method protected onClick()V
    .locals 2

    .line 182
    iget-object v0, p0, Lcom/coui/appcompat/preference/COUISwitchLoadingPreference;->mSwitchView:Lcom/coui/appcompat/widget/COUISwitch;

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/coui/appcompat/preference/COUISwitchLoadingPreference;->mSwitchView:Lcom/coui/appcompat/widget/COUISwitch;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/widget/COUISwitch;->setShouldPlaySound(Z)V

    .line 184
    iget-object v0, p0, Lcom/coui/appcompat/preference/COUISwitchLoadingPreference;->mSwitchView:Lcom/coui/appcompat/widget/COUISwitch;

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/widget/COUISwitch;->setTactileFeedbackEnabled(Z)V

    .line 185
    iget-object v0, p0, Lcom/coui/appcompat/preference/COUISwitchLoadingPreference;->mSwitchView:Lcom/coui/appcompat/widget/COUISwitch;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/COUISwitch;->startLoading()V

    .line 187
    :cond_0
    return-void
.end method

.method public setDividerDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .line 268
    if-eqz p1, :cond_0

    .line 269
    iput-object p1, p0, Lcom/coui/appcompat/preference/COUISwitchLoadingPreference;->mDividerDrawable:Landroid/graphics/drawable/Drawable;

    .line 270
    invoke-virtual {p0}, Lcom/coui/appcompat/preference/COUISwitchLoadingPreference;->notifyChanged()V

    .line 272
    :cond_0
    return-void
.end method

.method public setOnLoadingStateChangedListener(Lcom/coui/appcompat/widget/COUISwitch$OnLoadingStateChangedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/coui/appcompat/widget/COUISwitch$OnLoadingStateChangedListener;

    .line 243
    iput-object p1, p0, Lcom/coui/appcompat/preference/COUISwitchLoadingPreference;->mOnLoadingStateChangedListener:Lcom/coui/appcompat/widget/COUISwitch$OnLoadingStateChangedListener;

    .line 244
    iget-object v0, p0, Lcom/coui/appcompat/preference/COUISwitchLoadingPreference;->mCheckableView:Landroid/view/View;

    instance-of v0, v0, Lcom/coui/appcompat/widget/COUISwitch;

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/coui/appcompat/preference/COUISwitchLoadingPreference;->mCheckableView:Landroid/view/View;

    check-cast v0, Lcom/coui/appcompat/widget/COUISwitch;

    .line 246
    .local v0, "COUISwitch":Lcom/coui/appcompat/widget/COUISwitch;
    invoke-virtual {v0, p1}, Lcom/coui/appcompat/widget/COUISwitch;->setOnLoadingStateChangedListener(Lcom/coui/appcompat/widget/COUISwitch$OnLoadingStateChangedListener;)V

    .line 248
    .end local v0    # "COUISwitch":Lcom/coui/appcompat/widget/COUISwitch;
    :cond_0
    return-void
.end method

.method public setShowDivider(Z)V
    .locals 1
    .param p1, "show"    # Z

    .line 256
    iget-boolean v0, p0, Lcom/coui/appcompat/preference/COUISwitchLoadingPreference;->mShowDivider:Z

    if-eq v0, p1, :cond_0

    .line 257
    iput-boolean p1, p0, Lcom/coui/appcompat/preference/COUISwitchLoadingPreference;->mShowDivider:Z

    .line 258
    invoke-virtual {p0}, Lcom/coui/appcompat/preference/COUISwitchLoadingPreference;->notifyChanged()V

    .line 260
    :cond_0
    return-void
.end method

.method public showProgressBar(Z)V
    .locals 3
    .param p1, "show"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 211
    iget-object v0, p0, Lcom/coui/appcompat/preference/COUISwitchLoadingPreference;->mLoadingView:Lcom/coui/appcompat/widget/COUILoadingView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUISwitchLoadingPreference;->mCheckableView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 212
    const/16 v0, 0x8

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 213
    iget-object v2, p0, Lcom/coui/appcompat/preference/COUISwitchLoadingPreference;->mLoadingView:Lcom/coui/appcompat/widget/COUILoadingView;

    invoke-virtual {v2, v1}, Lcom/coui/appcompat/widget/COUILoadingView;->setVisibility(I)V

    .line 214
    iget-object v1, p0, Lcom/coui/appcompat/preference/COUISwitchLoadingPreference;->mCheckableView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 216
    :cond_0
    iget-object v2, p0, Lcom/coui/appcompat/preference/COUISwitchLoadingPreference;->mLoadingView:Lcom/coui/appcompat/widget/COUILoadingView;

    invoke-virtual {v2, v0}, Lcom/coui/appcompat/widget/COUILoadingView;->setVisibility(I)V

    .line 217
    iget-object v0, p0, Lcom/coui/appcompat/preference/COUISwitchLoadingPreference;->mCheckableView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 220
    :cond_1
    :goto_0
    return-void
.end method

.method public startLoading()V
    .locals 1

    .line 203
    iget-object v0, p0, Lcom/coui/appcompat/preference/COUISwitchLoadingPreference;->mCheckableView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUISwitchLoadingPreference;->mCheckableView:Landroid/view/View;

    instance-of v0, v0, Lcom/coui/appcompat/widget/COUISwitch;

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/coui/appcompat/preference/COUISwitchLoadingPreference;->mCheckableView:Landroid/view/View;

    check-cast v0, Lcom/coui/appcompat/widget/COUISwitch;

    .line 205
    .local v0, "COUISwitch":Lcom/coui/appcompat/widget/COUISwitch;
    invoke-virtual {v0}, Lcom/coui/appcompat/widget/COUISwitch;->startLoading()V

    .line 207
    .end local v0    # "COUISwitch":Lcom/coui/appcompat/widget/COUISwitch;
    :cond_0
    return-void
.end method

.method public stopLoading()V
    .locals 1

    .line 193
    iget-object v0, p0, Lcom/coui/appcompat/preference/COUISwitchLoadingPreference;->mCheckableView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUISwitchLoadingPreference;->mCheckableView:Landroid/view/View;

    instance-of v0, v0, Lcom/coui/appcompat/widget/COUISwitch;

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/coui/appcompat/preference/COUISwitchLoadingPreference;->mCheckableView:Landroid/view/View;

    check-cast v0, Lcom/coui/appcompat/widget/COUISwitch;

    .line 195
    .local v0, "COUISwitch":Lcom/coui/appcompat/widget/COUISwitch;
    invoke-virtual {v0}, Lcom/coui/appcompat/widget/COUISwitch;->stopLoading()V

    .line 197
    .end local v0    # "COUISwitch":Lcom/coui/appcompat/widget/COUISwitch;
    :cond_0
    return-void
.end method
