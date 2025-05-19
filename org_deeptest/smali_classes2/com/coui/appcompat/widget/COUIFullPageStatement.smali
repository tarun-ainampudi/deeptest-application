.class public Lcom/coui/appcompat/widget/COUIFullPageStatement;
.super Landroid/widget/LinearLayout;
.source "COUIFullPageStatement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/widget/COUIFullPageStatement$OnButtonClickListener;
    }
.end annotation


# instance fields
.field private mAppStatement:Landroid/widget/TextView;

.field private mBottomButton:Lcom/coui/appcompat/widget/COUIButton;

.field private mContainer:Lcom/coui/appcompat/widget/COUIMaxHeightScrollView;

.field private mContext:Landroid/content/Context;

.field private mDividerLine:Landroid/view/View;

.field private mExitButton:Landroid/widget/TextView;

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mOnButtonClickListener:Lcom/coui/appcompat/widget/COUIFullPageStatement$OnButtonClickListener;

.field private mPrivacyIcon:Landroid/widget/ImageView;

.field private mScrollText:Lcom/coui/appcompat/widget/COUIMaxHeightScrollView;

.field private mStyle:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 64
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/widget/COUIFullPageStatement;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 71
    sget v0, Lcoui/support/appcompat/R$attr;->couiFullPageStatementStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/widget/COUIFullPageStatement;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 78
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/coui/appcompat/widget/COUIFullPageStatement;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 79
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 96
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 97
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUIFullPageStatement;->mContext:Landroid/content/Context;

    .line 98
    if-eqz p2, :cond_0

    invoke-interface {p2}, Landroid/util/AttributeSet;->getStyleAttribute()I

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    invoke-interface {p2}, Landroid/util/AttributeSet;->getStyleAttribute()I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/widget/COUIFullPageStatement;->mStyle:I

    goto :goto_0

    .line 101
    :cond_0
    iput p3, p0, Lcom/coui/appcompat/widget/COUIFullPageStatement;->mStyle:I

    .line 103
    :goto_0
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUIFullPageStatement;->init()V

    .line 105
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIFullPageStatement;->mContext:Landroid/content/Context;

    sget-object v1, Lcoui/support/appcompat/R$styleable;->COUIFullPageStatement:[I

    const/4 v2, 0x0

    invoke-virtual {v0, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 106
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Lcoui/support/appcompat/R$styleable;->COUIFullPageStatement_exitButtonText:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 107
    .local v1, "exitButtonText":Ljava/lang/String;
    sget v3, Lcoui/support/appcompat/R$styleable;->COUIFullPageStatement_bottomButtonText:I

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 108
    .local v3, "bottomButtonText":Ljava/lang/String;
    iget-object v4, p0, Lcom/coui/appcompat/widget/COUIFullPageStatement;->mAppStatement:Landroid/widget/TextView;

    sget v5, Lcoui/support/appcompat/R$styleable;->COUIFullPageStatement_appStatement:I

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    iget-object v4, p0, Lcom/coui/appcompat/widget/COUIFullPageStatement;->mExitButton:Landroid/widget/TextView;

    sget v5, Lcoui/support/appcompat/R$styleable;->COUIFullPageStatement_couiFullPageStatementTextButtonColor:I

    invoke-virtual {v0, v5, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 110
    iget-object v4, p0, Lcom/coui/appcompat/widget/COUIFullPageStatement;->mDividerLine:Landroid/view/View;

    sget v5, Lcoui/support/appcompat/R$styleable;->COUIFullPageStatement_couiFullPageStatementDividerColor:I

    invoke-virtual {v0, v5, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundColor(I)V

    .line 111
    iget-object v4, p0, Lcom/coui/appcompat/widget/COUIFullPageStatement;->mPrivacyIcon:Landroid/widget/ImageView;

    sget v5, Lcoui/support/appcompat/R$styleable;->COUIFullPageStatement_couiFullPageStatementPrivacyIcon:I

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 112
    iget-object v4, p0, Lcom/coui/appcompat/widget/COUIFullPageStatement;->mAppStatement:Landroid/widget/TextView;

    sget v5, Lcoui/support/appcompat/R$styleable;->COUIFullPageStatement_couiFullPageStatementTextColor:I

    invoke-virtual {v0, v5, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 114
    if-eqz v3, :cond_1

    .line 115
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIFullPageStatement;->mBottomButton:Lcom/coui/appcompat/widget/COUIButton;

    invoke-virtual {v2, v3}, Lcom/coui/appcompat/widget/COUIButton;->setText(Ljava/lang/CharSequence;)V

    .line 117
    :cond_1
    if-eqz v1, :cond_2

    .line 118
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIFullPageStatement;->mExitButton:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    :cond_2
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 121
    return-void
.end method

.method static synthetic access$000(Lcom/coui/appcompat/widget/COUIFullPageStatement;)Lcom/coui/appcompat/widget/COUIFullPageStatement$OnButtonClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUIFullPageStatement;

    .line 46
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIFullPageStatement;->mOnButtonClickListener:Lcom/coui/appcompat/widget/COUIFullPageStatement$OnButtonClickListener;

    return-object v0
.end method

.method private init()V
    .locals 3

    .line 124
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIFullPageStatement;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUIFullPageStatement;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 125
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIFullPageStatement;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget v1, Lcoui/support/appcompat/R$layout;->coui_full_page_statement:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 126
    .local v0, "view":Landroid/view/View;
    sget v1, Lcoui/support/appcompat/R$id;->txt_statement:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/coui/appcompat/widget/COUIFullPageStatement;->mAppStatement:Landroid/widget/TextView;

    .line 127
    sget v1, Lcoui/support/appcompat/R$id;->btn_confirm:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/coui/appcompat/widget/COUIButton;

    iput-object v1, p0, Lcom/coui/appcompat/widget/COUIFullPageStatement;->mBottomButton:Lcom/coui/appcompat/widget/COUIButton;

    .line 128
    sget v1, Lcoui/support/appcompat/R$id;->text_field1:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/coui/appcompat/widget/COUIMaxHeightScrollView;

    iput-object v1, p0, Lcom/coui/appcompat/widget/COUIFullPageStatement;->mContainer:Lcom/coui/appcompat/widget/COUIMaxHeightScrollView;

    .line 129
    sget v1, Lcoui/support/appcompat/R$id;->scroll_text:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/coui/appcompat/widget/COUIMaxHeightScrollView;

    iput-object v1, p0, Lcom/coui/appcompat/widget/COUIFullPageStatement;->mScrollText:Lcom/coui/appcompat/widget/COUIMaxHeightScrollView;

    .line 130
    sget v1, Lcoui/support/appcompat/R$id;->txt_exit:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/coui/appcompat/widget/COUIFullPageStatement;->mExitButton:Landroid/widget/TextView;

    .line 131
    sget v1, Lcoui/support/appcompat/R$id;->img_privacy_icon:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/coui/appcompat/widget/COUIFullPageStatement;->mPrivacyIcon:Landroid/widget/ImageView;

    .line 132
    sget v1, Lcoui/support/appcompat/R$id;->divider_line:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/coui/appcompat/widget/COUIFullPageStatement;->mDividerLine:Landroid/view/View;

    .line 133
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIFullPageStatement;->mContainer:Lcom/coui/appcompat/widget/COUIMaxHeightScrollView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/coui/appcompat/widget/COUIMaxHeightScrollView;->setNestedScrollingEnabled(Z)V

    .line 135
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIFullPageStatement;->mAppStatement:Landroid/widget/TextView;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/coui/appcompat/util/COUIChangeTextUtil;->adaptFontSize(Landroid/widget/TextView;I)V

    .line 137
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIFullPageStatement;->mBottomButton:Lcom/coui/appcompat/widget/COUIButton;

    new-instance v2, Lcom/coui/appcompat/widget/COUIFullPageStatement$1;

    invoke-direct {v2, p0}, Lcom/coui/appcompat/widget/COUIFullPageStatement$1;-><init>(Lcom/coui/appcompat/widget/COUIFullPageStatement;)V

    invoke-virtual {v1, v2}, Lcom/coui/appcompat/widget/COUIButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIFullPageStatement;->mExitButton:Landroid/widget/TextView;

    new-instance v2, Lcom/coui/appcompat/widget/COUIFullPageStatement$2;

    invoke-direct {v2, p0}, Lcom/coui/appcompat/widget/COUIFullPageStatement$2;-><init>(Lcom/coui/appcompat/widget/COUIFullPageStatement;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    return-void
.end method


# virtual methods
.method public getAppStatement()Landroid/widget/TextView;
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIFullPageStatement;->mAppStatement:Landroid/widget/TextView;

    return-object v0
.end method

.method public getScrollTextView()Lcom/coui/appcompat/widget/COUIMaxHeightScrollView;
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIFullPageStatement;->mScrollText:Lcom/coui/appcompat/widget/COUIMaxHeightScrollView;

    return-object v0
.end method

.method public isShowPrivacyIcon(Z)V
    .locals 2
    .param p1, "show"    # Z

    .line 219
    if-eqz p1, :cond_0

    .line 220
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIFullPageStatement;->mPrivacyIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 222
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIFullPageStatement;->mPrivacyIcon:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 224
    :goto_0
    return-void
.end method

.method public refresh()V
    .locals 7

    .line 263
    const/4 v0, 0x0

    .line 264
    .local v0, "array":Landroid/content/res/TypedArray;
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIFullPageStatement;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/coui/appcompat/widget/COUIFullPageStatement;->mStyle:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v1

    .line 265
    .local v1, "styleAttrType":Ljava/lang/String;
    const-string v2, "attr"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    .line 266
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIFullPageStatement;->mContext:Landroid/content/Context;

    sget-object v5, Lcoui/support/appcompat/R$styleable;->COUIFullPageStatement:[I

    iget v6, p0, Lcom/coui/appcompat/widget/COUIFullPageStatement;->mStyle:I

    invoke-virtual {v2, v3, v5, v6, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    goto :goto_0

    .line 267
    :cond_0
    const-string v2, "style"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 268
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIFullPageStatement;->mContext:Landroid/content/Context;

    sget-object v5, Lcoui/support/appcompat/R$styleable;->COUIFullPageStatement:[I

    iget v6, p0, Lcom/coui/appcompat/widget/COUIFullPageStatement;->mStyle:I

    invoke-virtual {v2, v3, v5, v4, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 270
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 271
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIFullPageStatement;->mExitButton:Landroid/widget/TextView;

    sget v3, Lcoui/support/appcompat/R$styleable;->COUIFullPageStatement_couiFullPageStatementTextButtonColor:I

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 272
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIFullPageStatement;->mDividerLine:Landroid/view/View;

    sget v3, Lcoui/support/appcompat/R$styleable;->COUIFullPageStatement_couiFullPageStatementDividerColor:I

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 273
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIFullPageStatement;->mPrivacyIcon:Landroid/widget/ImageView;

    sget v3, Lcoui/support/appcompat/R$styleable;->COUIFullPageStatement_couiFullPageStatementPrivacyIcon:I

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 274
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIFullPageStatement;->mAppStatement:Landroid/widget/TextView;

    sget v3, Lcoui/support/appcompat/R$styleable;->COUIFullPageStatement_couiFullPageStatementTextColor:I

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 275
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 277
    :cond_2
    return-void
.end method

.method public setAppStatement(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "statement"    # Ljava/lang/CharSequence;

    .line 178
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIFullPageStatement;->mAppStatement:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 179
    return-void
.end method

.method public setAppStatementTextColor(I)V
    .locals 1
    .param p1, "color"    # I

    .line 256
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIFullPageStatement;->mAppStatement:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 257
    return-void
.end method

.method public setButtonListener(Lcom/coui/appcompat/widget/COUIFullPageStatement$OnButtonClickListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/coui/appcompat/widget/COUIFullPageStatement$OnButtonClickListener;

    .line 203
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUIFullPageStatement;->mOnButtonClickListener:Lcom/coui/appcompat/widget/COUIFullPageStatement$OnButtonClickListener;

    .line 204
    return-void
.end method

.method public setButtonText(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .line 186
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIFullPageStatement;->mBottomButton:Lcom/coui/appcompat/widget/COUIButton;

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/widget/COUIButton;->setText(Ljava/lang/CharSequence;)V

    .line 187
    return-void
.end method

.method public setContainer(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 211
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIFullPageStatement;->mContainer:Lcom/coui/appcompat/widget/COUIMaxHeightScrollView;

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/widget/COUIMaxHeightScrollView;->addView(Landroid/view/View;)V

    .line 212
    return-void
.end method

.method public setDividerLineColor(I)V
    .locals 1
    .param p1, "color"    # I

    .line 252
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIFullPageStatement;->mDividerLine:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 253
    return-void
.end method

.method public setExitButtonText(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .line 194
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIFullPageStatement;->mExitButton:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 195
    return-void
.end method

.method public setExitTextColor(I)V
    .locals 1
    .param p1, "color"    # I

    .line 244
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIFullPageStatement;->mExitButton:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 245
    return-void
.end method

.method public setPrivacyIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 248
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIFullPageStatement;->mPrivacyIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 249
    return-void
.end method

.method public setStatementMaxHeight(I)V
    .locals 1
    .param p1, "height"    # I

    .line 231
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIFullPageStatement;->mScrollText:Lcom/coui/appcompat/widget/COUIMaxHeightScrollView;

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/widget/COUIMaxHeightScrollView;->setMaxHeight(I)V

    .line 232
    return-void
.end method
