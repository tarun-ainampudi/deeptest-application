.class public Lcom/coui/appcompat/preference/COUIInputPreference;
.super Lcom/coui/appcompat/preference/COUIPreference;
.source "COUIInputPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/preference/COUIInputPreference$SavedState;
    }
.end annotation


# instance fields
.field private mContent:Ljava/lang/CharSequence;

.field private mContext:Landroid/content/Context;

.field private mEditText:Lcom/coui/appcompat/widget/COUIEditText;

.field private mEditTextHasTitlePaddingBottom:I

.field private mEditTextHasTitlePaddingTop:I

.field private mEditTextNoTitlePaddingBottom:I

.field private mEditTextNoTitlePaddingTop:I

.field private mEditTextPaddingEnd:I

.field private mHasTitle:Z

.field private mHint:Ljava/lang/CharSequence;

.field private mPreferenceView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 71
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/preference/COUIInputPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 78
    sget v0, Lcoui/support/appcompat/R$attr;->couiInputPreferenceStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/preference/COUIInputPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 79
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 85
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/coui/appcompat/preference/COUIInputPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 86
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 103
    invoke-direct {p0, p1, p2, p3}, Lcom/coui/appcompat/preference/COUIPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 104
    iput-object p1, p0, Lcom/coui/appcompat/preference/COUIInputPreference;->mContext:Landroid/content/Context;

    .line 106
    sget-object v0, Lcoui/support/appcompat/R$styleable;->COUIInputPreference:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 108
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v2, Lcoui/support/appcompat/R$styleable;->COUIInputPreference_couiContent:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lcom/coui/appcompat/preference/COUIInputPreference;->mContent:Ljava/lang/CharSequence;

    .line 109
    sget v2, Lcoui/support/appcompat/R$styleable;->COUIInputPreference_couiHint:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lcom/coui/appcompat/preference/COUIInputPreference;->mHint:Ljava/lang/CharSequence;

    .line 110
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 112
    sget-object v2, Lcoui/support/appcompat/R$styleable;->Preference:[I

    invoke-virtual {p1, p2, v2, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 114
    .local v2, "c":Landroid/content/res/TypedArray;
    sget v3, Lcoui/support/appcompat/R$styleable;->Preference_android_title:I

    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 115
    .local v3, "title":Ljava/lang/CharSequence;
    const/4 v4, 0x1

    if-eqz v3, :cond_0

    move v5, v4

    goto :goto_0

    :cond_0
    move v5, v1

    :goto_0
    iput-boolean v5, p0, Lcom/coui/appcompat/preference/COUIInputPreference;->mHasTitle:Z

    .line 116
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 118
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcoui/support/appcompat/R$dimen;->coui_input_edit_text_has_title_padding_top:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lcom/coui/appcompat/preference/COUIInputPreference;->mEditTextHasTitlePaddingTop:I

    .line 119
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcoui/support/appcompat/R$dimen;->coui_input_edit_text_has_title_padding_bottom:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lcom/coui/appcompat/preference/COUIInputPreference;->mEditTextHasTitlePaddingBottom:I

    .line 120
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcoui/support/appcompat/R$dimen;->coui_input_edit_text_no_title_padding_top:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lcom/coui/appcompat/preference/COUIInputPreference;->mEditTextNoTitlePaddingTop:I

    .line 121
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcoui/support/appcompat/R$dimen;->coui_input_edit_text_no_title_padding_bottom:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    iput v5, p0, Lcom/coui/appcompat/preference/COUIInputPreference;->mEditTextNoTitlePaddingBottom:I

    .line 122
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcoui/support/appcompat/R$dimen;->coui_input_preference_padding_end:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    iput v5, p0, Lcom/coui/appcompat/preference/COUIInputPreference;->mEditTextPaddingEnd:I

    .line 124
    new-instance v5, Lcom/coui/appcompat/widget/COUIScrolledEditText;

    invoke-direct {v5, p1, p2}, Lcom/coui/appcompat/widget/COUIScrolledEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v5, p0, Lcom/coui/appcompat/preference/COUIInputPreference;->mEditText:Lcom/coui/appcompat/widget/COUIEditText;

    .line 125
    iget-object v5, p0, Lcom/coui/appcompat/preference/COUIInputPreference;->mEditText:Lcom/coui/appcompat/widget/COUIEditText;

    const v6, 0x1020009

    invoke-virtual {v5, v6}, Lcom/coui/appcompat/widget/COUIEditText;->setId(I)V

    .line 126
    iget-object v5, p0, Lcom/coui/appcompat/preference/COUIInputPreference;->mEditText:Lcom/coui/appcompat/widget/COUIEditText;

    invoke-virtual {v5, v1}, Lcom/coui/appcompat/widget/COUIEditText;->setBackgroundResource(I)V

    .line 127
    iget-object v5, p0, Lcom/coui/appcompat/preference/COUIInputPreference;->mEditText:Lcom/coui/appcompat/widget/COUIEditText;

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Lcom/coui/appcompat/widget/COUIEditText;->setMaxLines(I)V

    .line 128
    iget-object v5, p0, Lcom/coui/appcompat/preference/COUIInputPreference;->mEditText:Lcom/coui/appcompat/widget/COUIEditText;

    invoke-virtual {v5, v4}, Lcom/coui/appcompat/widget/COUIEditText;->setFastDeletable(Z)V

    .line 129
    iget-object v4, p0, Lcom/coui/appcompat/preference/COUIInputPreference;->mEditText:Lcom/coui/appcompat/widget/COUIEditText;

    invoke-virtual {v4, v1}, Lcom/coui/appcompat/widget/COUIEditText;->setVerticalScrollBarEnabled(Z)V

    .line 130
    iget-object v4, p0, Lcom/coui/appcompat/preference/COUIInputPreference;->mEditText:Lcom/coui/appcompat/widget/COUIEditText;

    const/4 v5, 0x0

    const v6, 0x3f8ccccd    # 1.1f

    invoke-virtual {v4, v5, v6}, Lcom/coui/appcompat/widget/COUIEditText;->setLineSpacing(FF)V

    .line 131
    iget-object v4, p0, Lcom/coui/appcompat/preference/COUIInputPreference;->mEditText:Lcom/coui/appcompat/widget/COUIEditText;

    const v5, 0x800013

    invoke-virtual {v4, v5}, Lcom/coui/appcompat/widget/COUIEditText;->setGravity(I)V

    .line 132
    iget-object v4, p0, Lcom/coui/appcompat/preference/COUIInputPreference;->mEditText:Lcom/coui/appcompat/widget/COUIEditText;

    iget-object v5, p0, Lcom/coui/appcompat/preference/COUIInputPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcoui/support/appcompat/R$dimen;->coui_input_preference_text_size:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v4, v1, v5}, Lcom/coui/appcompat/widget/COUIEditText;->setTextSize(IF)V

    .line 134
    iget-boolean v4, p0, Lcom/coui/appcompat/preference/COUIInputPreference;->mHasTitle:Z

    if-eqz v4, :cond_1

    .line 135
    iget-object v4, p0, Lcom/coui/appcompat/preference/COUIInputPreference;->mEditText:Lcom/coui/appcompat/widget/COUIEditText;

    iget-object v5, p0, Lcom/coui/appcompat/preference/COUIInputPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcoui/support/appcompat/R$color;->coui_input_preference_text_color:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/coui/appcompat/widget/COUIEditText;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 136
    iget-object v4, p0, Lcom/coui/appcompat/preference/COUIInputPreference;->mEditText:Lcom/coui/appcompat/widget/COUIEditText;

    iget v5, p0, Lcom/coui/appcompat/preference/COUIInputPreference;->mEditTextHasTitlePaddingTop:I

    iget v6, p0, Lcom/coui/appcompat/preference/COUIInputPreference;->mEditTextPaddingEnd:I

    iget v7, p0, Lcom/coui/appcompat/preference/COUIInputPreference;->mEditTextHasTitlePaddingBottom:I

    invoke-virtual {v4, v1, v5, v6, v7}, Lcom/coui/appcompat/widget/COUIEditText;->setPaddingRelative(IIII)V

    goto :goto_1

    .line 143
    :cond_1
    iget-object v4, p0, Lcom/coui/appcompat/preference/COUIInputPreference;->mEditText:Lcom/coui/appcompat/widget/COUIEditText;

    iget v5, p0, Lcom/coui/appcompat/preference/COUIInputPreference;->mEditTextNoTitlePaddingTop:I

    iget v6, p0, Lcom/coui/appcompat/preference/COUIInputPreference;->mEditTextPaddingEnd:I

    iget v7, p0, Lcom/coui/appcompat/preference/COUIInputPreference;->mEditTextNoTitlePaddingBottom:I

    invoke-virtual {v4, v1, v5, v6, v7}, Lcom/coui/appcompat/widget/COUIEditText;->setPaddingRelative(IIII)V

    .line 150
    :goto_1
    return-void
.end method


# virtual methods
.method public getContent()Ljava/lang/CharSequence;
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIInputPreference;->mEditText:Lcom/coui/appcompat/widget/COUIEditText;

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIInputPreference;->mEditText:Lcom/coui/appcompat/widget/COUIEditText;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/COUIEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    return-object v0

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIInputPreference;->mContent:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getEditText()Lcom/coui/appcompat/widget/COUIEditText;
    .locals 1

    .line 228
    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIInputPreference;->mEditText:Lcom/coui/appcompat/widget/COUIEditText;

    return-object v0
.end method

.method public getHint()Ljava/lang/CharSequence;
    .locals 1

    .line 197
    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIInputPreference;->mHint:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getPreferenceView()Landroid/view/View;
    .locals 1

    .line 219
    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIInputPreference;->mPreferenceView:Landroid/view/View;

    return-object v0
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 6
    .param p1, "holder"    # Landroidx/preference/PreferenceViewHolder;

    .line 253
    invoke-super {p0, p1}, Lcom/coui/appcompat/preference/COUIPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 254
    sget v0, Lcoui/support/appcompat/R$id;->coui_preference:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/preference/COUIInputPreference;->mPreferenceView:Landroid/view/View;

    .line 255
    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIInputPreference;->mPreferenceView:Landroid/view/View;

    sget v1, Lcoui/support/appcompat/R$id;->edittext_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 256
    .local v0, "container":Landroid/view/ViewGroup;
    if-eqz v0, :cond_1

    .line 257
    const v1, 0x1020009

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 258
    .local v1, "editText":Landroid/widget/EditText;
    iget-object v2, p0, Lcom/coui/appcompat/preference/COUIInputPreference;->mEditText:Lcom/coui/appcompat/widget/COUIEditText;

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 259
    iget-object v2, p0, Lcom/coui/appcompat/preference/COUIInputPreference;->mEditText:Lcom/coui/appcompat/widget/COUIEditText;

    invoke-virtual {v2}, Lcom/coui/appcompat/widget/COUIEditText;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .line 260
    .local v2, "oldParent":Landroid/view/ViewParent;
    if-eqz v2, :cond_0

    .line 261
    move-object v3, v2

    check-cast v3, Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/coui/appcompat/preference/COUIInputPreference;->mEditText:Lcom/coui/appcompat/widget/COUIEditText;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 263
    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 264
    iget-object v3, p0, Lcom/coui/appcompat/preference/COUIInputPreference;->mEditText:Lcom/coui/appcompat/widget/COUIEditText;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-virtual {v0, v3, v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 268
    .end local v1    # "editText":Landroid/widget/EditText;
    .end local v2    # "oldParent":Landroid/view/ViewParent;
    :cond_1
    invoke-virtual {p0}, Lcom/coui/appcompat/preference/COUIInputPreference;->getHint()Ljava/lang/CharSequence;

    move-result-object v1

    .line 269
    .local v1, "hint":Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 270
    iget-object v2, p0, Lcom/coui/appcompat/preference/COUIInputPreference;->mEditText:Lcom/coui/appcompat/widget/COUIEditText;

    invoke-virtual {v2, v1}, Lcom/coui/appcompat/widget/COUIEditText;->setHint(Ljava/lang/CharSequence;)V

    .line 272
    :cond_2
    iget-object v2, p0, Lcom/coui/appcompat/preference/COUIInputPreference;->mEditText:Lcom/coui/appcompat/widget/COUIEditText;

    invoke-virtual {p0}, Lcom/coui/appcompat/preference/COUIInputPreference;->isEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/coui/appcompat/widget/COUIEditText;->setEnabled(Z)V

    .line 273
    return-void
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1
    .param p1, "a"    # Landroid/content/res/TypedArray;
    .param p2, "index"    # I

    .line 233
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .line 291
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/coui/appcompat/preference/COUIInputPreference$SavedState;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 297
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/coui/appcompat/preference/COUIInputPreference$SavedState;

    .line 298
    .local v0, "myState":Lcom/coui/appcompat/preference/COUIInputPreference$SavedState;
    invoke-virtual {v0}, Lcom/coui/appcompat/preference/COUIInputPreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Lcom/coui/appcompat/preference/COUIPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 299
    iget-object v1, v0, Lcom/coui/appcompat/preference/COUIInputPreference$SavedState;->mText:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/coui/appcompat/preference/COUIInputPreference;->setContent(Ljava/lang/CharSequence;)V

    .line 300
    return-void

    .line 293
    .end local v0    # "myState":Lcom/coui/appcompat/preference/COUIInputPreference$SavedState;
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lcom/coui/appcompat/preference/COUIPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 294
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .line 277
    invoke-super {p0}, Lcom/coui/appcompat/preference/COUIPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 278
    .local v0, "superState":Landroid/os/Parcelable;
    invoke-virtual {p0}, Lcom/coui/appcompat/preference/COUIInputPreference;->isPersistent()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 280
    return-object v0

    .line 282
    :cond_0
    new-instance v1, Lcom/coui/appcompat/preference/COUIInputPreference$SavedState;

    invoke-direct {v1, v0}, Lcom/coui/appcompat/preference/COUIInputPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 283
    .local v1, "myState":Lcom/coui/appcompat/preference/COUIInputPreference$SavedState;
    iget-object v2, p0, Lcom/coui/appcompat/preference/COUIInputPreference;->mContent:Ljava/lang/CharSequence;

    if-eqz v2, :cond_1

    .line 284
    iget-object v2, p0, Lcom/coui/appcompat/preference/COUIInputPreference;->mContent:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/coui/appcompat/preference/COUIInputPreference$SavedState;->mText:Ljava/lang/String;

    .line 286
    :cond_1
    return-object v1
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 1
    .param p1, "restoreValue"    # Z
    .param p2, "defaultValue"    # Ljava/lang/Object;

    .line 238
    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIInputPreference;->mContent:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 239
    return-void

    .line 241
    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIInputPreference;->mContent:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/preference/COUIInputPreference;->getPersistedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    .line 243
    .local v0, "value":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0, v0}, Lcom/coui/appcompat/preference/COUIInputPreference;->setContent(Ljava/lang/CharSequence;)V

    .line 244
    return-void
.end method

.method public setContent(Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "content"    # Ljava/lang/CharSequence;

    .line 171
    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIInputPreference;->mEditText:Lcom/coui/appcompat/widget/COUIEditText;

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIInputPreference;->mEditText:Lcom/coui/appcompat/widget/COUIEditText;

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/widget/COUIEditText;->setText(Ljava/lang/CharSequence;)V

    .line 173
    iput-object p1, p0, Lcom/coui/appcompat/preference/COUIInputPreference;->mContent:Ljava/lang/CharSequence;

    .line 174
    return-void

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIInputPreference;->mContent:Ljava/lang/CharSequence;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 177
    .local v0, "changed":Z
    if-eqz v0, :cond_1

    .line 178
    invoke-virtual {p0}, Lcom/coui/appcompat/preference/COUIInputPreference;->notifyChanged()V

    .line 180
    :cond_1
    invoke-virtual {p0}, Lcom/coui/appcompat/preference/COUIInputPreference;->shouldDisableDependents()Z

    move-result v1

    .line 181
    .local v1, "wasBlocking":Z
    iput-object p1, p0, Lcom/coui/appcompat/preference/COUIInputPreference;->mContent:Ljava/lang/CharSequence;

    .line 182
    if-eqz p1, :cond_2

    .line 183
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/coui/appcompat/preference/COUIInputPreference;->persistString(Ljava/lang/String;)Z

    .line 185
    :cond_2
    invoke-virtual {p0}, Lcom/coui/appcompat/preference/COUIInputPreference;->shouldDisableDependents()Z

    move-result v2

    .line 186
    .local v2, "isBlocking":Z
    if-eq v2, v1, :cond_3

    .line 187
    invoke-virtual {p0, v2}, Lcom/coui/appcompat/preference/COUIInputPreference;->notifyDependencyChange(Z)V

    .line 189
    :cond_3
    return-void
.end method

.method public setHint(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "hint"    # Ljava/lang/CharSequence;

    .line 206
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIInputPreference;->mHint:Ljava/lang/CharSequence;

    if-nez v0, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIInputPreference;->mHint:Ljava/lang/CharSequence;

    .line 207
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 208
    :cond_1
    iput-object p1, p0, Lcom/coui/appcompat/preference/COUIInputPreference;->mHint:Ljava/lang/CharSequence;

    .line 209
    invoke-virtual {p0}, Lcom/coui/appcompat/preference/COUIInputPreference;->notifyChanged()V

    .line 211
    :cond_2
    return-void
.end method

.method public shouldDisableDependents()Z
    .locals 1

    .line 248
    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIInputPreference;->mContent:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0}, Lcom/coui/appcompat/preference/COUIPreference;->shouldDisableDependents()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
