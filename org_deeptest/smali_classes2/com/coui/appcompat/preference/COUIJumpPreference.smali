.class public Lcom/coui/appcompat/preference/COUIJumpPreference;
.super Lcom/coui/appcompat/preference/COUIPreference;
.source "COUIJumpPreference.java"


# static fields
.field public static final FORCE_CLICK:I = 0x1

.field public static final FORCE_UNCLICK:I = 0x2

.field public static final NORMAL:I


# instance fields
.field private mClickStyle:I

.field mContext:Landroid/content/Context;

.field mHasBorder:Z

.field mJumpRes:Landroid/graphics/drawable/Drawable;

.field mStatusText1:Ljava/lang/CharSequence;

.field mStatusText2:Ljava/lang/CharSequence;

.field mStatusText3:Ljava/lang/CharSequence;

.field mSummaryView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 104
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/preference/COUIJumpPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 105
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 97
    sget v0, Lcoui/support/appcompat/R$attr;->couiJumpPreferenceStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/preference/COUIJumpPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 98
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 90
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/coui/appcompat/preference/COUIJumpPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 91
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 75
    invoke-direct {p0, p1, p2, p3}, Lcom/coui/appcompat/preference/COUIPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 58
    const/4 v0, 0x0

    iput v0, p0, Lcom/coui/appcompat/preference/COUIJumpPreference;->mClickStyle:I

    .line 76
    iput-object p1, p0, Lcom/coui/appcompat/preference/COUIJumpPreference;->mContext:Landroid/content/Context;

    .line 77
    sget-object v1, Lcoui/support/appcompat/R$styleable;->COUIJumpPreference:[I

    invoke-virtual {p1, p2, v1, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 78
    .local v1, "a":Landroid/content/res/TypedArray;
    sget v2, Lcoui/support/appcompat/R$styleable;->COUIJumpPreference_coui_jump_mark:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/coui/appcompat/preference/COUIJumpPreference;->mJumpRes:Landroid/graphics/drawable/Drawable;

    .line 79
    sget v2, Lcoui/support/appcompat/R$styleable;->COUIJumpPreference_coui_jump_status1:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lcom/coui/appcompat/preference/COUIJumpPreference;->mStatusText1:Ljava/lang/CharSequence;

    .line 80
    sget v2, Lcoui/support/appcompat/R$styleable;->COUIJumpPreference_coui_jump_status2:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lcom/coui/appcompat/preference/COUIJumpPreference;->mStatusText2:Ljava/lang/CharSequence;

    .line 81
    sget v2, Lcoui/support/appcompat/R$styleable;->COUIJumpPreference_coui_jump_status3:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lcom/coui/appcompat/preference/COUIJumpPreference;->mStatusText3:Ljava/lang/CharSequence;

    .line 82
    sget v2, Lcoui/support/appcompat/R$styleable;->COUIJumpPreference_couiClickStyle:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/preference/COUIJumpPreference;->mClickStyle:I

    .line 83
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 84
    return-void
.end method


# virtual methods
.method public getClickStyle()I
    .locals 1

    .line 122
    iget v0, p0, Lcom/coui/appcompat/preference/COUIJumpPreference;->mClickStyle:I

    return v0
.end method

.method public getJump()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 214
    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIJumpPreference;->mJumpRes:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getStatusText1()Ljava/lang/CharSequence;
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIJumpPreference;->mStatusText1:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getStatusText2()Ljava/lang/CharSequence;
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIJumpPreference;->mStatusText2:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getStatusText3()Ljava/lang/CharSequence;
    .locals 1

    .line 173
    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIJumpPreference;->mStatusText3:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 10
    .param p1, "holder"    # Landroidx/preference/PreferenceViewHolder;

    .line 220
    invoke-super {p0, p1}, Lcom/coui/appcompat/preference/COUIPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 221
    const/4 v0, 0x0

    .line 222
    .local v0, "unpressed":Z
    sget v1, Lcoui/support/appcompat/R$id;->coui_preference_widget_jump:I

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 223
    .local v1, "jump":Landroid/widget/ImageView;
    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 224
    iget-object v4, p0, Lcom/coui/appcompat/preference/COUIJumpPreference;->mJumpRes:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_0

    .line 225
    const/4 v0, 0x0

    .line 226
    iget-object v4, p0, Lcom/coui/appcompat/preference/COUIJumpPreference;->mJumpRes:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 227
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 229
    :cond_0
    const/4 v0, 0x1

    .line 230
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 233
    :cond_1
    :goto_0
    sget v4, Lcoui/support/appcompat/R$id;->coui_preference:I

    invoke-virtual {p1, v4}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 234
    .local v4, "preference":Landroid/view/View;
    if-eqz v4, :cond_2

    .line 235
    iget v5, p0, Lcom/coui/appcompat/preference/COUIJumpPreference;->mClickStyle:I

    packed-switch v5, :pswitch_data_0

    goto :goto_1

    .line 247
    :pswitch_0
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/view/View;->setClickable(Z)V

    .line 248
    goto :goto_1

    .line 243
    :pswitch_1
    invoke-virtual {v4, v3}, Landroid/view/View;->setClickable(Z)V

    .line 244
    goto :goto_1

    .line 240
    :pswitch_2
    nop

    .line 254
    :cond_2
    :goto_1
    sget v5, Lcoui/support/appcompat/R$id;->coui_statusText1:I

    invoke-virtual {p1, v5}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 255
    .local v5, "status1":Landroid/widget/TextView;
    if-eqz v5, :cond_4

    .line 256
    iget-object v6, p0, Lcom/coui/appcompat/preference/COUIJumpPreference;->mStatusText1:Ljava/lang/CharSequence;

    .line 257
    .local v6, "statusText_1":Ljava/lang/CharSequence;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 258
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 259
    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 261
    :cond_3
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 264
    .end local v6    # "statusText_1":Ljava/lang/CharSequence;
    :cond_4
    :goto_2
    sget v6, Lcoui/support/appcompat/R$id;->coui_statusText2:I

    invoke-virtual {p1, v6}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 265
    .local v6, "status2":Landroid/widget/TextView;
    if-eqz v6, :cond_6

    .line 266
    iget-object v7, p0, Lcom/coui/appcompat/preference/COUIJumpPreference;->mStatusText2:Ljava/lang/CharSequence;

    .line 267
    .local v7, "statusText_2":Ljava/lang/CharSequence;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 268
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 269
    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 271
    :cond_5
    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 274
    .end local v7    # "statusText_2":Ljava/lang/CharSequence;
    :cond_6
    :goto_3
    sget v7, Lcoui/support/appcompat/R$id;->coui_statusText3:I

    invoke-virtual {p1, v7}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 275
    .local v7, "status3":Landroid/widget/TextView;
    if-eqz v7, :cond_8

    .line 276
    iget-object v8, p0, Lcom/coui/appcompat/preference/COUIJumpPreference;->mStatusText3:Ljava/lang/CharSequence;

    .line 277
    .local v8, "statusText_3":Ljava/lang/CharSequence;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_7

    .line 278
    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 279
    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4

    .line 281
    :cond_7
    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 284
    .end local v8    # "statusText_3":Ljava/lang/CharSequence;
    :cond_8
    :goto_4
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setClickStyle(I)V
    .locals 0
    .param p1, "style"    # I

    .line 113
    iput p1, p0, Lcom/coui/appcompat/preference/COUIJumpPreference;->mClickStyle:I

    .line 114
    return-void
.end method

.method public setJump(I)V
    .locals 1
    .param p1, "iconResId"    # I

    .line 205
    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIJumpPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/preference/COUIJumpPreference;->setJump(Landroid/graphics/drawable/Drawable;)V

    .line 206
    return-void
.end method

.method public setJump(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "jump"    # Landroid/graphics/drawable/Drawable;

    .line 194
    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIJumpPreference;->mJumpRes:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    .line 195
    iput-object p1, p0, Lcom/coui/appcompat/preference/COUIJumpPreference;->mJumpRes:Landroid/graphics/drawable/Drawable;

    .line 196
    invoke-virtual {p0}, Lcom/coui/appcompat/preference/COUIJumpPreference;->notifyChanged()V

    .line 198
    :cond_0
    return-void
.end method

.method public setStatusText1(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .line 140
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIJumpPreference;->mStatusText1:Ljava/lang/CharSequence;

    if-nez v0, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIJumpPreference;->mStatusText1:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 141
    :cond_1
    iput-object p1, p0, Lcom/coui/appcompat/preference/COUIJumpPreference;->mStatusText1:Ljava/lang/CharSequence;

    .line 142
    invoke-virtual {p0}, Lcom/coui/appcompat/preference/COUIJumpPreference;->notifyChanged()V

    .line 144
    :cond_2
    return-void
.end method

.method public setStatusText2(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .line 161
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIJumpPreference;->mStatusText2:Ljava/lang/CharSequence;

    if-nez v0, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIJumpPreference;->mStatusText2:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 162
    :cond_1
    iput-object p1, p0, Lcom/coui/appcompat/preference/COUIJumpPreference;->mStatusText2:Ljava/lang/CharSequence;

    .line 163
    invoke-virtual {p0}, Lcom/coui/appcompat/preference/COUIJumpPreference;->notifyChanged()V

    .line 165
    :cond_2
    return-void
.end method

.method public setStatusText3(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .line 182
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIJumpPreference;->mStatusText3:Ljava/lang/CharSequence;

    if-nez v0, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIJumpPreference;->mStatusText3:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 183
    :cond_1
    iput-object p1, p0, Lcom/coui/appcompat/preference/COUIJumpPreference;->mStatusText3:Ljava/lang/CharSequence;

    .line 184
    invoke-virtual {p0}, Lcom/coui/appcompat/preference/COUIJumpPreference;->notifyChanged()V

    .line 186
    :cond_2
    return-void
.end method
