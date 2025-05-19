.class public Lcom/coui/appcompat/preference/COUIListPreference;
.super Landroidx/preference/ListPreference;
.source "COUIListPreference.java"


# instance fields
.field private mAssignment:Ljava/lang/CharSequence;

.field mContext:Landroid/content/Context;

.field mJumpRes:Landroid/graphics/drawable/Drawable;

.field mStatusText1:Ljava/lang/CharSequence;

.field mStatusText2:Ljava/lang/CharSequence;

.field mStatusText3:Ljava/lang/CharSequence;

.field mSummaries:[Ljava/lang/CharSequence;

.field mSummaryView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 75
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/preference/COUIListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 58
    invoke-direct {p0, p1, p2}, Landroidx/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 59
    iput-object p1, p0, Lcom/coui/appcompat/preference/COUIListPreference;->mContext:Landroid/content/Context;

    .line 60
    sget-object v0, Lcoui/support/appcompat/R$styleable;->COUIJumpPreference:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 61
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v2, Lcoui/support/appcompat/R$styleable;->COUIJumpPreference_coui_jump_mark:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/coui/appcompat/preference/COUIListPreference;->mJumpRes:Landroid/graphics/drawable/Drawable;

    .line 62
    sget v2, Lcoui/support/appcompat/R$styleable;->COUIJumpPreference_coui_jump_status1:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lcom/coui/appcompat/preference/COUIListPreference;->mStatusText1:Ljava/lang/CharSequence;

    .line 63
    sget v2, Lcoui/support/appcompat/R$styleable;->COUIJumpPreference_coui_jump_status2:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lcom/coui/appcompat/preference/COUIListPreference;->mStatusText2:Ljava/lang/CharSequence;

    .line 64
    sget v2, Lcoui/support/appcompat/R$styleable;->COUIJumpPreference_coui_jump_status3:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lcom/coui/appcompat/preference/COUIListPreference;->mStatusText3:Ljava/lang/CharSequence;

    .line 65
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 66
    sget-object v2, Lcoui/support/appcompat/R$styleable;->COUIPreference:[I

    invoke-virtual {p1, p2, v2, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 67
    .local v1, "b":Landroid/content/res/TypedArray;
    sget v2, Lcoui/support/appcompat/R$styleable;->COUIPreference_couiAssignment:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lcom/coui/appcompat/preference/COUIListPreference;->mAssignment:Ljava/lang/CharSequence;

    .line 68
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 69
    return-void
.end method


# virtual methods
.method public getAssignment()Ljava/lang/CharSequence;
    .locals 1

    .line 232
    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIListPreference;->mAssignment:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getJump()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIListPreference;->mJumpRes:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getStatusText1()Ljava/lang/CharSequence;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIListPreference;->mStatusText1:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getStatusText2()Ljava/lang/CharSequence;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIListPreference;->mStatusText2:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getStatusText3()Ljava/lang/CharSequence;
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIListPreference;->mStatusText3:Ljava/lang/CharSequence;

    return-object v0
.end method

.method getSummaries()[Ljava/lang/CharSequence;
    .locals 1

    .line 257
    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIListPreference;->mSummaries:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 9
    .param p1, "holder"    # Landroidx/preference/PreferenceViewHolder;

    .line 172
    invoke-super {p0, p1}, Landroidx/preference/ListPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 174
    sget v0, Lcoui/support/appcompat/R$id;->coui_preference_widget_jump:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 175
    .local v0, "jump":Landroid/widget/ImageView;
    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 176
    iget-object v3, p0, Lcom/coui/appcompat/preference/COUIListPreference;->mJumpRes:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_0

    .line 177
    iget-object v3, p0, Lcom/coui/appcompat/preference/COUIListPreference;->mJumpRes:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 178
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 180
    :cond_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 183
    :cond_1
    :goto_0
    sget v3, Lcoui/support/appcompat/R$id;->coui_statusText1:I

    invoke-virtual {p1, v3}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 184
    .local v3, "status1":Landroid/widget/TextView;
    if-eqz v3, :cond_3

    .line 185
    iget-object v4, p0, Lcom/coui/appcompat/preference/COUIListPreference;->mStatusText1:Ljava/lang/CharSequence;

    .line 186
    .local v4, "statusText_1":Ljava/lang/CharSequence;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 187
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 188
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 190
    :cond_2
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 193
    .end local v4    # "statusText_1":Ljava/lang/CharSequence;
    :cond_3
    :goto_1
    sget v4, Lcoui/support/appcompat/R$id;->coui_statusText2:I

    invoke-virtual {p1, v4}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 194
    .local v4, "status2":Landroid/widget/TextView;
    if-eqz v4, :cond_5

    .line 195
    iget-object v5, p0, Lcom/coui/appcompat/preference/COUIListPreference;->mStatusText2:Ljava/lang/CharSequence;

    .line 196
    .local v5, "statusText_2":Ljava/lang/CharSequence;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 197
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 198
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 200
    :cond_4
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 203
    .end local v5    # "statusText_2":Ljava/lang/CharSequence;
    :cond_5
    :goto_2
    sget v5, Lcoui/support/appcompat/R$id;->coui_statusText3:I

    invoke-virtual {p1, v5}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 204
    .local v5, "status3":Landroid/widget/TextView;
    if-eqz v5, :cond_7

    .line 205
    iget-object v6, p0, Lcom/coui/appcompat/preference/COUIListPreference;->mStatusText3:Ljava/lang/CharSequence;

    .line 206
    .local v6, "statusText_3":Ljava/lang/CharSequence;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 207
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 208
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 210
    :cond_6
    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 214
    .end local v6    # "statusText_3":Ljava/lang/CharSequence;
    :cond_7
    :goto_3
    sget v6, Lcoui/support/appcompat/R$id;->assignment:I

    invoke-virtual {p1, v6}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 215
    .local v6, "assignmentView":Landroid/widget/TextView;
    if-eqz v6, :cond_9

    .line 216
    invoke-virtual {p0}, Lcom/coui/appcompat/preference/COUIListPreference;->getAssignment()Ljava/lang/CharSequence;

    move-result-object v7

    .line 217
    .local v7, "assignment":Ljava/lang/CharSequence;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_8

    .line 218
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 219
    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4

    .line 221
    :cond_8
    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 224
    .end local v7    # "assignment":Ljava/lang/CharSequence;
    :cond_9
    :goto_4
    return-void
.end method

.method public setAssignment(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "assignment"    # Ljava/lang/CharSequence;

    .line 241
    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIListPreference;->mAssignment:Ljava/lang/CharSequence;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 242
    iput-object p1, p0, Lcom/coui/appcompat/preference/COUIListPreference;->mAssignment:Ljava/lang/CharSequence;

    .line 243
    invoke-virtual {p0}, Lcom/coui/appcompat/preference/COUIListPreference;->notifyChanged()V

    .line 245
    :cond_0
    return-void
.end method

.method public setJump(I)V
    .locals 1
    .param p1, "iconResId"    # I

    .line 158
    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIListPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/preference/COUIListPreference;->setJump(Landroid/graphics/drawable/Drawable;)V

    .line 159
    return-void
.end method

.method public setJump(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "jump"    # Landroid/graphics/drawable/Drawable;

    .line 147
    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIListPreference;->mJumpRes:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    .line 148
    iput-object p1, p0, Lcom/coui/appcompat/preference/COUIListPreference;->mJumpRes:Landroid/graphics/drawable/Drawable;

    .line 149
    invoke-virtual {p0}, Lcom/coui/appcompat/preference/COUIListPreference;->notifyChanged()V

    .line 151
    :cond_0
    return-void
.end method

.method public setStatusText1(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .line 93
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIListPreference;->mStatusText1:Ljava/lang/CharSequence;

    if-nez v0, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIListPreference;->mStatusText1:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 94
    :cond_1
    iput-object p1, p0, Lcom/coui/appcompat/preference/COUIListPreference;->mStatusText1:Ljava/lang/CharSequence;

    .line 95
    invoke-virtual {p0}, Lcom/coui/appcompat/preference/COUIListPreference;->notifyChanged()V

    .line 97
    :cond_2
    return-void
.end method

.method public setStatusText2(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .line 114
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIListPreference;->mStatusText2:Ljava/lang/CharSequence;

    if-nez v0, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIListPreference;->mStatusText2:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 115
    :cond_1
    iput-object p1, p0, Lcom/coui/appcompat/preference/COUIListPreference;->mStatusText2:Ljava/lang/CharSequence;

    .line 116
    invoke-virtual {p0}, Lcom/coui/appcompat/preference/COUIListPreference;->notifyChanged()V

    .line 118
    :cond_2
    return-void
.end method

.method public setStatusText3(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .line 135
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIListPreference;->mStatusText3:Ljava/lang/CharSequence;

    if-nez v0, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIListPreference;->mStatusText3:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 136
    :cond_1
    iput-object p1, p0, Lcom/coui/appcompat/preference/COUIListPreference;->mStatusText3:Ljava/lang/CharSequence;

    .line 137
    invoke-virtual {p0}, Lcom/coui/appcompat/preference/COUIListPreference;->notifyChanged()V

    .line 139
    :cond_2
    return-void
.end method

.method public setSummaries([Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "summaries"    # [Ljava/lang/CharSequence;

    .line 253
    iput-object p1, p0, Lcom/coui/appcompat/preference/COUIListPreference;->mSummaries:[Ljava/lang/CharSequence;

    .line 254
    return-void
.end method
