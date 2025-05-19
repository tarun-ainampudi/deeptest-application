.class public Lcom/coui/appcompat/preference/COUISwitchPreferenceCompat;
.super Landroidx/preference/SwitchPreferenceCompat;
.source "COUISwitchPreferenceCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/preference/COUISwitchPreferenceCompat$Listener;
    }
.end annotation


# instance fields
.field private mDividerDrawable:Landroid/graphics/drawable/Drawable;

.field private mIsEnableClickSpan:Z

.field private final mListener:Lcom/coui/appcompat/preference/COUISwitchPreferenceCompat$Listener;

.field private mShowDivider:Z

.field private mSwitchView:Lcom/coui/appcompat/widget/COUISwitch;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 79
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/preference/COUISwitchPreferenceCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 80
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 86
    sget v0, Lcoui/support/appcompat/R$attr;->switchPreferenceCompatStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/preference/COUISwitchPreferenceCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 87
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 94
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/coui/appcompat/preference/COUISwitchPreferenceCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 95
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 110
    invoke-direct {p0, p1, p2, p3}, Landroidx/preference/SwitchPreferenceCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    new-instance v0, Lcom/coui/appcompat/preference/COUISwitchPreferenceCompat$Listener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/coui/appcompat/preference/COUISwitchPreferenceCompat$Listener;-><init>(Lcom/coui/appcompat/preference/COUISwitchPreferenceCompat;Lcom/coui/appcompat/preference/COUISwitchPreferenceCompat$1;)V

    iput-object v0, p0, Lcom/coui/appcompat/preference/COUISwitchPreferenceCompat;->mListener:Lcom/coui/appcompat/preference/COUISwitchPreferenceCompat$Listener;

    .line 42
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coui/appcompat/preference/COUISwitchPreferenceCompat;->mShowDivider:Z

    .line 111
    sget-object v0, Lcoui/support/appcompat/R$styleable;->COUIPreference:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 113
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v2, Lcoui/support/appcompat/R$styleable;->COUIPreference_couiShowDivider:I

    iget-boolean v3, p0, Lcom/coui/appcompat/preference/COUISwitchPreferenceCompat;->mShowDivider:Z

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/coui/appcompat/preference/COUISwitchPreferenceCompat;->mShowDivider:Z

    .line 114
    sget v2, Lcoui/support/appcompat/R$styleable;->COUIPreference_couiDividerDrawable:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/coui/appcompat/preference/COUISwitchPreferenceCompat;->mDividerDrawable:Landroid/graphics/drawable/Drawable;

    .line 115
    sget v2, Lcoui/support/appcompat/R$styleable;->COUIPreference_couiEnalbeClickSpan:I

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/coui/appcompat/preference/COUISwitchPreferenceCompat;->mIsEnableClickSpan:Z

    .line 116
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 117
    return-void
.end method

.method static synthetic access$100(Lcom/coui/appcompat/preference/COUISwitchPreferenceCompat;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/preference/COUISwitchPreferenceCompat;
    .param p1, "x1"    # Ljava/lang/Object;

    .line 38
    invoke-direct {p0, p1}, Lcom/coui/appcompat/preference/COUISwitchPreferenceCompat;->callCustomChangeListener(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private callCustomChangeListener(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "newValue"    # Ljava/lang/Object;

    .line 67
    invoke-virtual {p0}, Lcom/coui/appcompat/preference/COUISwitchPreferenceCompat;->getOnPreferenceChangeListener()Landroidx/preference/Preference$OnPreferenceChangeListener;

    move-result-object v0

    if-nez v0, :cond_0

    .line 68
    const/4 v0, 0x1

    return v0

    .line 70
    :cond_0
    invoke-virtual {p0}, Lcom/coui/appcompat/preference/COUISwitchPreferenceCompat;->getOnPreferenceChangeListener()Landroidx/preference/Preference$OnPreferenceChangeListener;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroidx/preference/Preference$OnPreferenceChangeListener;->onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 5
    .param p1, "holder"    # Landroidx/preference/PreferenceViewHolder;

    .line 121
    sget v0, Lcoui/support/appcompat/R$id;->coui_preference:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 122
    .local v0, "itemView":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 123
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    .line 125
    :cond_0
    sget v1, Lcoui/support/appcompat/R$id;->switchWidget:I

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 126
    .local v1, "checkableView":Landroid/view/View;
    instance-of v2, v1, Lcom/coui/appcompat/widget/COUISwitch;

    if-eqz v2, :cond_1

    .line 127
    move-object v2, v1

    check-cast v2, Lcom/coui/appcompat/widget/COUISwitch;

    .line 128
    .local v2, "switchView":Lcom/coui/appcompat/widget/COUISwitch;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/coui/appcompat/widget/COUISwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 129
    iput-object v2, p0, Lcom/coui/appcompat/preference/COUISwitchPreferenceCompat;->mSwitchView:Lcom/coui/appcompat/widget/COUISwitch;

    .line 131
    .end local v2    # "switchView":Lcom/coui/appcompat/widget/COUISwitch;
    :cond_1
    invoke-super {p0, p1}, Landroidx/preference/SwitchPreferenceCompat;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 133
    instance-of v2, v1, Lcom/coui/appcompat/widget/COUISwitch;

    if-eqz v2, :cond_2

    .line 134
    move-object v2, v1

    check-cast v2, Lcom/coui/appcompat/widget/COUISwitch;

    .line 135
    .restart local v2    # "switchView":Lcom/coui/appcompat/widget/COUISwitch;
    invoke-virtual {v2}, Lcom/coui/appcompat/widget/COUISwitch;->setLaidOut()V

    .line 136
    iget-object v3, p0, Lcom/coui/appcompat/preference/COUISwitchPreferenceCompat;->mListener:Lcom/coui/appcompat/preference/COUISwitchPreferenceCompat$Listener;

    invoke-virtual {v2, v3}, Lcom/coui/appcompat/widget/COUISwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 139
    .end local v2    # "switchView":Lcom/coui/appcompat/widget/COUISwitch;
    :cond_2
    iget-boolean v2, p0, Lcom/coui/appcompat/preference/COUISwitchPreferenceCompat;->mIsEnableClickSpan:Z

    if-eqz v2, :cond_3

    .line 140
    const v2, 0x1020010

    invoke-virtual {p1, v2}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 141
    .local v2, "summaryView":Landroid/widget/TextView;
    if-eqz v2, :cond_3

    .line 142
    invoke-virtual {p0}, Lcom/coui/appcompat/preference/COUISwitchPreferenceCompat;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x106000d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setHighlightColor(I)V

    .line 143
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 144
    new-instance v3, Lcom/coui/appcompat/preference/COUISwitchPreferenceCompat$1;

    invoke-direct {v3, p0, v2}, Lcom/coui/appcompat/preference/COUISwitchPreferenceCompat$1;-><init>(Lcom/coui/appcompat/preference/COUISwitchPreferenceCompat;Landroid/widget/TextView;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 176
    .end local v2    # "summaryView":Landroid/widget/TextView;
    :cond_3
    return-void
.end method

.method protected onClick()V
    .locals 2

    .line 181
    iget-object v0, p0, Lcom/coui/appcompat/preference/COUISwitchPreferenceCompat;->mSwitchView:Lcom/coui/appcompat/widget/COUISwitch;

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/coui/appcompat/preference/COUISwitchPreferenceCompat;->mSwitchView:Lcom/coui/appcompat/widget/COUISwitch;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/widget/COUISwitch;->setShouldPlaySound(Z)V

    .line 184
    :cond_0
    invoke-super {p0}, Landroidx/preference/SwitchPreferenceCompat;->onClick()V

    .line 185
    return-void
.end method

.method public setDividerDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .line 205
    if-eqz p1, :cond_0

    .line 206
    iput-object p1, p0, Lcom/coui/appcompat/preference/COUISwitchPreferenceCompat;->mDividerDrawable:Landroid/graphics/drawable/Drawable;

    .line 207
    invoke-virtual {p0}, Lcom/coui/appcompat/preference/COUISwitchPreferenceCompat;->notifyChanged()V

    .line 209
    :cond_0
    return-void
.end method

.method public setShowDivider(Z)V
    .locals 1
    .param p1, "show"    # Z

    .line 193
    iget-boolean v0, p0, Lcom/coui/appcompat/preference/COUISwitchPreferenceCompat;->mShowDivider:Z

    if-eq v0, p1, :cond_0

    .line 194
    iput-boolean p1, p0, Lcom/coui/appcompat/preference/COUISwitchPreferenceCompat;->mShowDivider:Z

    .line 195
    invoke-virtual {p0}, Lcom/coui/appcompat/preference/COUISwitchPreferenceCompat;->notifyChanged()V

    .line 197
    :cond_0
    return-void
.end method
