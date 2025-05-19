.class public Lcom/coui/appcompat/preference/COUIActivityDialogPreference;
.super Landroidx/preference/ListPreference;
.source "COUIActivityDialogPreference.java"


# instance fields
.field private mAssignment:Ljava/lang/CharSequence;

.field mContext:Landroid/content/Context;

.field mJumpRes:Landroid/graphics/drawable/Drawable;

.field private mShowDivider:Z

.field mStatusText1:Ljava/lang/CharSequence;

.field mStatusText2:Ljava/lang/CharSequence;

.field mStatusText3:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 99
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/preference/COUIActivityDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 101
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 92
    sget v0, Lcoui/support/appcompat/R$attr;->couiActivityDialogPreferenceStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/preference/COUIActivityDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 93
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 85
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/coui/appcompat/preference/COUIActivityDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 86
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 65
    invoke-direct {p0, p1, p2}, Landroidx/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coui/appcompat/preference/COUIActivityDialogPreference;->mShowDivider:Z

    .line 66
    iput-object p1, p0, Lcom/coui/appcompat/preference/COUIActivityDialogPreference;->mContext:Landroid/content/Context;

    .line 67
    sget-object v0, Lcoui/support/appcompat/R$styleable;->COUIJumpPreference:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 68
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v2, Lcoui/support/appcompat/R$styleable;->COUIJumpPreference_coui_jump_mark:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/coui/appcompat/preference/COUIActivityDialogPreference;->mJumpRes:Landroid/graphics/drawable/Drawable;

    .line 69
    sget v2, Lcoui/support/appcompat/R$styleable;->COUIJumpPreference_coui_jump_status1:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lcom/coui/appcompat/preference/COUIActivityDialogPreference;->mStatusText1:Ljava/lang/CharSequence;

    .line 70
    sget v2, Lcoui/support/appcompat/R$styleable;->COUIJumpPreference_coui_jump_status2:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lcom/coui/appcompat/preference/COUIActivityDialogPreference;->mStatusText2:Ljava/lang/CharSequence;

    .line 71
    sget v2, Lcoui/support/appcompat/R$styleable;->COUIJumpPreference_coui_jump_status3:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lcom/coui/appcompat/preference/COUIActivityDialogPreference;->mStatusText3:Ljava/lang/CharSequence;

    .line 72
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 74
    sget-object v2, Lcoui/support/appcompat/R$styleable;->COUIPreference:[I

    invoke-virtual {p1, p2, v2, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 75
    .local v1, "b":Landroid/content/res/TypedArray;
    sget v2, Lcoui/support/appcompat/R$styleable;->COUIPreference_couiShowDivider:I

    iget-boolean v3, p0, Lcom/coui/appcompat/preference/COUIActivityDialogPreference;->mShowDivider:Z

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/coui/appcompat/preference/COUIActivityDialogPreference;->mShowDivider:Z

    .line 76
    sget v2, Lcoui/support/appcompat/R$styleable;->COUIPreference_couiAssignment:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lcom/coui/appcompat/preference/COUIActivityDialogPreference;->mAssignment:Ljava/lang/CharSequence;

    .line 77
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 79
    return-void
.end method


# virtual methods
.method public getAssignment()Ljava/lang/CharSequence;
    .locals 1

    .line 275
    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIActivityDialogPreference;->mAssignment:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getJump()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 191
    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIActivityDialogPreference;->mJumpRes:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getStatusText1()Ljava/lang/CharSequence;
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIActivityDialogPreference;->mStatusText1:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getStatusText2()Ljava/lang/CharSequence;
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIActivityDialogPreference;->mStatusText2:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getStatusText3()Ljava/lang/CharSequence;
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIActivityDialogPreference;->mStatusText3:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public isShowDivider()Z
    .locals 1

    .line 254
    iget-boolean v0, p0, Lcom/coui/appcompat/preference/COUIActivityDialogPreference;->mShowDivider:Z

    return v0
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 9
    .param p1, "holder"    # Landroidx/preference/PreferenceViewHolder;

    .line 196
    invoke-super {p0, p1}, Landroidx/preference/ListPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 197
    sget v0, Lcoui/support/appcompat/R$id;->coui_preference_widget_jump:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 198
    .local v0, "jump":Landroid/widget/ImageView;
    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 199
    iget-object v3, p0, Lcom/coui/appcompat/preference/COUIActivityDialogPreference;->mJumpRes:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_0

    .line 200
    iget-object v3, p0, Lcom/coui/appcompat/preference/COUIActivityDialogPreference;->mJumpRes:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 201
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 203
    :cond_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 206
    :cond_1
    :goto_0
    sget v3, Lcoui/support/appcompat/R$id;->coui_statusText1:I

    invoke-virtual {p1, v3}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 207
    .local v3, "status1":Landroid/widget/TextView;
    if-eqz v3, :cond_3

    .line 208
    iget-object v4, p0, Lcom/coui/appcompat/preference/COUIActivityDialogPreference;->mStatusText1:Ljava/lang/CharSequence;

    .line 209
    .local v4, "statusText_1":Ljava/lang/CharSequence;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 210
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 211
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 213
    :cond_2
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 216
    .end local v4    # "statusText_1":Ljava/lang/CharSequence;
    :cond_3
    :goto_1
    sget v4, Lcoui/support/appcompat/R$id;->coui_statusText2:I

    invoke-virtual {p1, v4}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 217
    .local v4, "status2":Landroid/widget/TextView;
    if-eqz v4, :cond_5

    .line 218
    iget-object v5, p0, Lcom/coui/appcompat/preference/COUIActivityDialogPreference;->mStatusText2:Ljava/lang/CharSequence;

    .line 219
    .local v5, "statusText_2":Ljava/lang/CharSequence;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 220
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 221
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 223
    :cond_4
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 226
    .end local v5    # "statusText_2":Ljava/lang/CharSequence;
    :cond_5
    :goto_2
    sget v5, Lcoui/support/appcompat/R$id;->coui_statusText3:I

    invoke-virtual {p1, v5}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 227
    .local v5, "status3":Landroid/widget/TextView;
    if-eqz v5, :cond_7

    .line 228
    iget-object v6, p0, Lcom/coui/appcompat/preference/COUIActivityDialogPreference;->mStatusText3:Ljava/lang/CharSequence;

    .line 229
    .local v6, "statusText_3":Ljava/lang/CharSequence;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 230
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 231
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 233
    :cond_6
    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 236
    .end local v6    # "statusText_3":Ljava/lang/CharSequence;
    :cond_7
    :goto_3
    sget v6, Lcoui/support/appcompat/R$id;->assignment:I

    invoke-virtual {p1, v6}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 237
    .local v6, "assignmentView":Landroid/widget/TextView;
    if-eqz v6, :cond_9

    .line 238
    invoke-virtual {p0}, Lcom/coui/appcompat/preference/COUIActivityDialogPreference;->getAssignment()Ljava/lang/CharSequence;

    move-result-object v7

    .line 239
    .local v7, "assignment":Ljava/lang/CharSequence;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_8

    .line 240
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 241
    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4

    .line 243
    :cond_8
    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 246
    .end local v7    # "assignment":Ljava/lang/CharSequence;
    :cond_9
    :goto_4
    return-void
.end method

.method public setAssignment(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "assignment"    # Ljava/lang/CharSequence;

    .line 284
    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIActivityDialogPreference;->mAssignment:Ljava/lang/CharSequence;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 285
    iput-object p1, p0, Lcom/coui/appcompat/preference/COUIActivityDialogPreference;->mAssignment:Ljava/lang/CharSequence;

    .line 286
    invoke-virtual {p0}, Lcom/coui/appcompat/preference/COUIActivityDialogPreference;->notifyChanged()V

    .line 288
    :cond_0
    return-void
.end method

.method public setJump(I)V
    .locals 1
    .param p1, "iconResId"    # I

    .line 182
    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIActivityDialogPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/preference/COUIActivityDialogPreference;->setJump(Landroid/graphics/drawable/Drawable;)V

    .line 183
    return-void
.end method

.method public setJump(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "jump"    # Landroid/graphics/drawable/Drawable;

    .line 172
    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIActivityDialogPreference;->mJumpRes:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    .line 173
    iput-object p1, p0, Lcom/coui/appcompat/preference/COUIActivityDialogPreference;->mJumpRes:Landroid/graphics/drawable/Drawable;

    .line 174
    invoke-virtual {p0}, Lcom/coui/appcompat/preference/COUIActivityDialogPreference;->notifyChanged()V

    .line 176
    :cond_0
    return-void
.end method

.method public setShowDivider(Z)V
    .locals 1
    .param p1, "show"    # Z

    .line 263
    iget-boolean v0, p0, Lcom/coui/appcompat/preference/COUIActivityDialogPreference;->mShowDivider:Z

    if-eq v0, p1, :cond_0

    .line 264
    iput-boolean p1, p0, Lcom/coui/appcompat/preference/COUIActivityDialogPreference;->mShowDivider:Z

    .line 265
    invoke-virtual {p0}, Lcom/coui/appcompat/preference/COUIActivityDialogPreference;->notifyChanged()V

    .line 267
    :cond_0
    return-void
.end method

.method public setStatusText1(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .line 118
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIActivityDialogPreference;->mStatusText1:Ljava/lang/CharSequence;

    if-nez v0, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIActivityDialogPreference;->mStatusText1:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 119
    :cond_1
    iput-object p1, p0, Lcom/coui/appcompat/preference/COUIActivityDialogPreference;->mStatusText1:Ljava/lang/CharSequence;

    .line 120
    invoke-virtual {p0}, Lcom/coui/appcompat/preference/COUIActivityDialogPreference;->notifyChanged()V

    .line 122
    :cond_2
    return-void
.end method

.method public setStatusText2(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .line 139
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIActivityDialogPreference;->mStatusText2:Ljava/lang/CharSequence;

    if-nez v0, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIActivityDialogPreference;->mStatusText2:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 140
    :cond_1
    iput-object p1, p0, Lcom/coui/appcompat/preference/COUIActivityDialogPreference;->mStatusText2:Ljava/lang/CharSequence;

    .line 141
    invoke-virtual {p0}, Lcom/coui/appcompat/preference/COUIActivityDialogPreference;->notifyChanged()V

    .line 143
    :cond_2
    return-void
.end method

.method public setStatusText3(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .line 160
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIActivityDialogPreference;->mStatusText3:Ljava/lang/CharSequence;

    if-nez v0, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIActivityDialogPreference;->mStatusText3:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 161
    :cond_1
    iput-object p1, p0, Lcom/coui/appcompat/preference/COUIActivityDialogPreference;->mStatusText3:Ljava/lang/CharSequence;

    .line 162
    invoke-virtual {p0}, Lcom/coui/appcompat/preference/COUIActivityDialogPreference;->notifyChanged()V

    .line 164
    :cond_2
    return-void
.end method
