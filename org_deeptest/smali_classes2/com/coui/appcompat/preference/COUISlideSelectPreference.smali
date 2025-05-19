.class public Lcom/coui/appcompat/preference/COUISlideSelectPreference;
.super Lcom/coui/appcompat/preference/COUIPreference;
.source "COUISlideSelectPreference.java"


# static fields
.field public static final FORCE_CLICK:I = 0x1

.field public static final FORCE_UNCLICK:I = 0x2

.field public static final NORMAL:I


# instance fields
.field private mClickStyle:I

.field mContext:Landroid/content/Context;

.field mSelectionText:Ljava/lang/CharSequence;

.field private mStatus1:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 59
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/preference/COUISlideSelectPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 66
    sget v0, Lcoui/support/appcompat/R$attr;->couiSlideSelectPreferenceStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/preference/COUISlideSelectPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 73
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/coui/appcompat/preference/COUISlideSelectPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 90
    invoke-direct {p0, p1, p2, p3}, Lcom/coui/appcompat/preference/COUIPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 50
    const/4 v0, 0x0

    iput v0, p0, Lcom/coui/appcompat/preference/COUISlideSelectPreference;->mClickStyle:I

    .line 91
    iput-object p1, p0, Lcom/coui/appcompat/preference/COUISlideSelectPreference;->mContext:Landroid/content/Context;

    .line 92
    sget-object v1, Lcoui/support/appcompat/R$styleable;->COUISlideSelectPreference:[I

    invoke-virtual {p1, p2, v1, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 93
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Lcoui/support/appcompat/R$styleable;->COUISlideSelectPreference_coui_select_status1:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/coui/appcompat/preference/COUISlideSelectPreference;->mSelectionText:Ljava/lang/CharSequence;

    .line 94
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 95
    return-void
.end method


# virtual methods
.method public getSelectionText()Ljava/lang/CharSequence;
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/coui/appcompat/preference/COUISlideSelectPreference;->mSelectionText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/coui/appcompat/preference/COUISlideSelectPreference;->mSelectionText:Ljava/lang/CharSequence;

    return-object v0

    .line 118
    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 6
    .param p1, "holder"    # Landroidx/preference/PreferenceViewHolder;

    .line 136
    invoke-super {p0, p1}, Lcom/coui/appcompat/preference/COUIPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 137
    const/4 v0, 0x0

    .line 138
    .local v0, "unpressed":Z
    sget v1, Lcoui/support/appcompat/R$id;->coui_preference:I

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 139
    .local v1, "view":Landroid/view/View;
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 140
    sget v2, Lcoui/support/appcompat/R$id;->coui_preference:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 141
    .local v2, "preference":Landroid/view/View;
    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 142
    iget v4, p0, Lcom/coui/appcompat/preference/COUISlideSelectPreference;->mClickStyle:I

    packed-switch v4, :pswitch_data_0

    goto :goto_0

    .line 154
    :pswitch_0
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/view/View;->setClickable(Z)V

    .line 155
    goto :goto_0

    .line 150
    :pswitch_1
    invoke-virtual {v2, v3}, Landroid/view/View;->setClickable(Z)V

    .line 151
    goto :goto_0

    .line 147
    :pswitch_2
    nop

    .line 161
    :cond_0
    :goto_0
    sget v4, Lcoui/support/appcompat/R$id;->coui_statusText_select:I

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/coui/appcompat/preference/COUISlideSelectPreference;->mStatus1:Landroid/widget/TextView;

    .line 162
    iget-object v4, p0, Lcom/coui/appcompat/preference/COUISlideSelectPreference;->mStatus1:Landroid/widget/TextView;

    if-eqz v4, :cond_2

    .line 163
    iget-object v4, p0, Lcom/coui/appcompat/preference/COUISlideSelectPreference;->mSelectionText:Ljava/lang/CharSequence;

    .line 164
    .local v4, "statusText_1":Ljava/lang/CharSequence;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 165
    iget-object v5, p0, Lcom/coui/appcompat/preference/COUISlideSelectPreference;->mStatus1:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 166
    iget-object v5, p0, Lcom/coui/appcompat/preference/COUISlideSelectPreference;->mStatus1:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 168
    :cond_1
    iget-object v3, p0, Lcom/coui/appcompat/preference/COUISlideSelectPreference;->mStatus1:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 171
    .end local v4    # "statusText_1":Ljava/lang/CharSequence;
    :cond_2
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setBlurView(Landroid/view/View;)V
    .locals 0
    .param p1, "blurView"    # Landroid/view/View;

    .line 180
    return-void
.end method

.method public setSelectionText(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .line 103
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUISlideSelectPreference;->mSelectionText:Ljava/lang/CharSequence;

    if-nez v0, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUISlideSelectPreference;->mSelectionText:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 104
    :cond_1
    iput-object p1, p0, Lcom/coui/appcompat/preference/COUISlideSelectPreference;->mSelectionText:Ljava/lang/CharSequence;

    .line 105
    invoke-virtual {p0}, Lcom/coui/appcompat/preference/COUISlideSelectPreference;->notifyChanged()V

    .line 107
    :cond_2
    return-void
.end method

.method public setStatusText(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .line 128
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUISlideSelectPreference;->mSelectionText:Ljava/lang/CharSequence;

    if-nez v0, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUISlideSelectPreference;->mSelectionText:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 129
    :cond_1
    iput-object p1, p0, Lcom/coui/appcompat/preference/COUISlideSelectPreference;->mSelectionText:Ljava/lang/CharSequence;

    .line 130
    invoke-virtual {p0}, Lcom/coui/appcompat/preference/COUISlideSelectPreference;->notifyChanged()V

    .line 132
    :cond_2
    return-void
.end method
