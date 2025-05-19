.class public Lcom/coui/appcompat/widget/keyboard/COUIKeyboardView;
.super Landroid/widget/LinearLayout;
.source "COUIKeyboardView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/widget/keyboard/COUIKeyboardView$OnClickSwitchListener;,
        Lcom/coui/appcompat/widget/keyboard/COUIKeyboardView$OnClickButtonListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "COUIKeyBoardView"


# instance fields
.field private mAccessClose:Ljava/lang/String;

.field private mAccessDetail:Ljava/lang/String;

.field private mCloseButton:Landroid/widget/ImageView;

.field private mContext:Landroid/content/Context;

.field private mDefaultType:I

.field private mDetailButton:Landroid/widget/ImageView;

.field private mHelper:Lcom/coui/appcompat/widget/keyboard/COUIKeyboardHelper;

.field private mKeyboardView:Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;

.field private mOnClickButtonListener:Lcom/coui/appcompat/widget/keyboard/COUIKeyboardView$OnClickButtonListener;

.field private mOnClickSwitchListener:Lcom/coui/appcompat/widget/keyboard/COUIKeyboardView$OnClickSwitchListener;

.field private mSecureType:Z

.field private mTitleName:Ljava/lang/String;

.field private mTitleNameTextView:Landroid/widget/TextView;

.field private mTopView:Landroid/widget/RelativeLayout;

.field private mWidthOffset:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 69
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/widget/keyboard/COUIKeyboardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 75
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/widget/keyboard/COUIKeyboardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 90
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 52
    const/4 v0, 0x0

    iput v0, p0, Lcom/coui/appcompat/widget/keyboard/COUIKeyboardView;->mDefaultType:I

    .line 53
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/coui/appcompat/widget/keyboard/COUIKeyboardView;->mOnClickButtonListener:Lcom/coui/appcompat/widget/keyboard/COUIKeyboardView$OnClickButtonListener;

    .line 54
    iput-object v1, p0, Lcom/coui/appcompat/widget/keyboard/COUIKeyboardView;->mOnClickSwitchListener:Lcom/coui/appcompat/widget/keyboard/COUIKeyboardView$OnClickSwitchListener;

    .line 91
    iput-object p1, p0, Lcom/coui/appcompat/widget/keyboard/COUIKeyboardView;->mContext:Landroid/content/Context;

    .line 92
    sget-object v1, Lcoui/support/appcompat/R$styleable;->COUIKeyboardView:[I

    sget v2, Lcoui/support/appcompat/R$style;->COUIKeyBoardView:I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 93
    .local v1, "a":Landroid/content/res/TypedArray;
    sget v2, Lcoui/support/appcompat/R$styleable;->COUIKeyboardView_couiKeyboardViewType:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/coui/appcompat/widget/keyboard/COUIKeyboardView;->mSecureType:Z

    .line 94
    sget v2, Lcoui/support/appcompat/R$styleable;->COUIKeyboardView_couiWidthOffset:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/coui/appcompat/widget/keyboard/COUIKeyboardView;->mWidthOffset:I

    .line 95
    sget v2, Lcoui/support/appcompat/R$styleable;->COUIKeyboardView_couiTitleName:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/coui/appcompat/widget/keyboard/COUIKeyboardView;->mTitleName:Ljava/lang/String;

    .line 97
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    iget-boolean v4, p0, Lcom/coui/appcompat/widget/keyboard/COUIKeyboardView;->mSecureType:Z

    if-eqz v4, :cond_0

    sget v4, Lcoui/support/appcompat/R$layout;->coui_security_keybord_view:I

    goto :goto_0

    :cond_0
    sget v4, Lcoui/support/appcompat/R$layout;->coui_unlock_keybord_view:I

    :goto_0
    invoke-virtual {v2, v4, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 99
    sget v2, Lcoui/support/appcompat/R$id;->coui_keyboard_view_close:I

    invoke-virtual {p0, v2}, Lcom/coui/appcompat/widget/keyboard/COUIKeyboardView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/coui/appcompat/widget/keyboard/COUIKeyboardView;->mCloseButton:Landroid/widget/ImageView;

    .line 100
    sget v2, Lcoui/support/appcompat/R$id;->coui_keyboard_view_detail:I

    invoke-virtual {p0, v2}, Lcom/coui/appcompat/widget/keyboard/COUIKeyboardView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/coui/appcompat/widget/keyboard/COUIKeyboardView;->mDetailButton:Landroid/widget/ImageView;

    .line 101
    sget v2, Lcoui/support/appcompat/R$id;->keyboardview:I

    invoke-virtual {p0, v2}, Lcom/coui/appcompat/widget/keyboard/COUIKeyboardView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;

    iput-object v2, p0, Lcom/coui/appcompat/widget/keyboard/COUIKeyboardView;->mKeyboardView:Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;

    .line 102
    sget v2, Lcoui/support/appcompat/R$id;->coui_keyboard_view_top:I

    invoke-virtual {p0, v2}, Lcom/coui/appcompat/widget/keyboard/COUIKeyboardView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/coui/appcompat/widget/keyboard/COUIKeyboardView;->mTopView:Landroid/widget/RelativeLayout;

    .line 103
    sget v2, Lcoui/support/appcompat/R$id;->coui_keyboard_view_text:I

    invoke-virtual {p0, v2}, Lcom/coui/appcompat/widget/keyboard/COUIKeyboardView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/coui/appcompat/widget/keyboard/COUIKeyboardView;->mTitleNameTextView:Landroid/widget/TextView;

    .line 105
    iget-object v2, p0, Lcom/coui/appcompat/widget/keyboard/COUIKeyboardView;->mTopView:Landroid/widget/RelativeLayout;

    iget-boolean v4, p0, Lcom/coui/appcompat/widget/keyboard/COUIKeyboardView;->mSecureType:Z

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    const/16 v0, 0x8

    :goto_1
    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 107
    iget-object v0, p0, Lcom/coui/appcompat/widget/keyboard/COUIKeyboardView;->mCloseButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    iget-object v0, p0, Lcom/coui/appcompat/widget/keyboard/COUIKeyboardView;->mDetailButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    iget-object v0, p0, Lcom/coui/appcompat/widget/keyboard/COUIKeyboardView;->mKeyboardView:Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;

    invoke-virtual {v0, v3}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->setProximityCorrectionEnabled(Z)V

    .line 110
    iget-object v0, p0, Lcom/coui/appcompat/widget/keyboard/COUIKeyboardView;->mTitleNameTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/coui/appcompat/widget/keyboard/COUIKeyboardView;->mTitleName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcoui/support/appcompat/R$string;->coui_keyboard_view_access_close_button:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/widget/keyboard/COUIKeyboardView;->mAccessClose:Ljava/lang/String;

    .line 113
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcoui/support/appcompat/R$string;->coui_keyboard_view_access_detail_button:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/widget/keyboard/COUIKeyboardView;->mAccessDetail:Ljava/lang/String;

    .line 115
    iget-object v0, p0, Lcom/coui/appcompat/widget/keyboard/COUIKeyboardView;->mCloseButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 116
    iget-object v0, p0, Lcom/coui/appcompat/widget/keyboard/COUIKeyboardView;->mCloseButton:Landroid/widget/ImageView;

    new-instance v2, Lcom/coui/appcompat/widget/keyboard/COUIKeyboardView$1;

    invoke-direct {v2, p0}, Lcom/coui/appcompat/widget/keyboard/COUIKeyboardView$1;-><init>(Lcom/coui/appcompat/widget/keyboard/COUIKeyboardView;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 128
    :cond_2
    iget-object v0, p0, Lcom/coui/appcompat/widget/keyboard/COUIKeyboardView;->mDetailButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    .line 129
    iget-object v0, p0, Lcom/coui/appcompat/widget/keyboard/COUIKeyboardView;->mDetailButton:Landroid/widget/ImageView;

    new-instance v2, Lcom/coui/appcompat/widget/keyboard/COUIKeyboardView$2;

    invoke-direct {v2, p0}, Lcom/coui/appcompat/widget/keyboard/COUIKeyboardView$2;-><init>(Lcom/coui/appcompat/widget/keyboard/COUIKeyboardView;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 141
    :cond_3
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 142
    return-void
.end method

.method static synthetic access$000(Lcom/coui/appcompat/widget/keyboard/COUIKeyboardView;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/keyboard/COUIKeyboardView;

    .line 46
    iget-object v0, p0, Lcom/coui/appcompat/widget/keyboard/COUIKeyboardView;->mAccessClose:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/coui/appcompat/widget/keyboard/COUIKeyboardView;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/keyboard/COUIKeyboardView;

    .line 46
    iget-object v0, p0, Lcom/coui/appcompat/widget/keyboard/COUIKeyboardView;->mAccessDetail:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public adjustSizeChange(I)V
    .locals 8
    .param p1, "width"    # I

    .line 248
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/keyboard/COUIKeyboardView;->getKeyboardView()Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->getKeyboard()Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;

    move-result-object v0

    .line 249
    .local v0, "securityKeyboard":Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;
    if-eqz v0, :cond_0

    .line 250
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/keyboard/COUIKeyboardView;->getKeyboardView()Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->getKeyboard()Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;->getMinWidth()I

    move-result v1

    .line 251
    .local v1, "mKeyboardWidth":I
    sub-int v2, p1, v1

    div-int/lit8 v2, v2, 0x2

    .line 252
    .local v2, "padding":I
    iget-object v3, p0, Lcom/coui/appcompat/widget/keyboard/COUIKeyboardView;->mKeyboardView:Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;

    iget-object v4, p0, Lcom/coui/appcompat/widget/keyboard/COUIKeyboardView;->mKeyboardView:Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;

    invoke-virtual {v4}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->getPaddingTop()I

    move-result v4

    iget-object v5, p0, Lcom/coui/appcompat/widget/keyboard/COUIKeyboardView;->mKeyboardView:Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;

    invoke-virtual {v5}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->getPaddingBottom()I

    move-result v5

    invoke-virtual {v3, v2, v4, v2, v5}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->setPadding(IIII)V

    .line 253
    iget-object v3, p0, Lcom/coui/appcompat/widget/keyboard/COUIKeyboardView;->mCloseButton:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/coui/appcompat/widget/keyboard/COUIKeyboardView;->mCloseButton:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getPaddingStart()I

    move-result v4

    iget-object v5, p0, Lcom/coui/appcompat/widget/keyboard/COUIKeyboardView;->mCloseButton:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v5

    iget v6, p0, Lcom/coui/appcompat/widget/keyboard/COUIKeyboardView;->mWidthOffset:I

    add-int/2addr v6, v2

    iget-object v7, p0, Lcom/coui/appcompat/widget/keyboard/COUIKeyboardView;->mCloseButton:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v7

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/widget/ImageView;->setPaddingRelative(IIII)V

    .line 254
    iget-object v3, p0, Lcom/coui/appcompat/widget/keyboard/COUIKeyboardView;->mDetailButton:Landroid/widget/ImageView;

    iget v4, p0, Lcom/coui/appcompat/widget/keyboard/COUIKeyboardView;->mWidthOffset:I

    add-int/2addr v4, v2

    iget-object v5, p0, Lcom/coui/appcompat/widget/keyboard/COUIKeyboardView;->mDetailButton:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v5

    iget-object v6, p0, Lcom/coui/appcompat/widget/keyboard/COUIKeyboardView;->mDetailButton:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getPaddingEnd()I

    move-result v6

    iget-object v7, p0, Lcom/coui/appcompat/widget/keyboard/COUIKeyboardView;->mDetailButton:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v7

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/widget/ImageView;->setPaddingRelative(IIII)V

    .line 255
    iget-object v3, p0, Lcom/coui/appcompat/widget/keyboard/COUIKeyboardView;->mKeyboardView:Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;

    invoke-virtual {v3}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->invalidateAllKeys()V

    .line 257
    .end local v1    # "mKeyboardWidth":I
    .end local v2    # "padding":I
    :cond_0
    return-void
.end method

.method public getKeyboardHelper()Lcom/coui/appcompat/widget/keyboard/COUIKeyboardHelper;
    .locals 1

    .line 240
    iget-object v0, p0, Lcom/coui/appcompat/widget/keyboard/COUIKeyboardView;->mHelper:Lcom/coui/appcompat/widget/keyboard/COUIKeyboardHelper;

    return-object v0
.end method

.method public getKeyboardView()Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/coui/appcompat/widget/keyboard/COUIKeyboardView;->mKeyboardView:Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/coui/appcompat/widget/keyboard/COUIKeyboardView;->mKeyboardView:Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;

    return-object v0

    .line 181
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTopView()Landroid/view/View;
    .locals 1

    .line 265
    iget-object v0, p0, Lcom/coui/appcompat/widget/keyboard/COUIKeyboardView;->mTopView:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 159
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcoui/support/appcompat/R$id;->coui_keyboard_view_close:I

    if-ne v0, v1, :cond_0

    .line 160
    iget-object v0, p0, Lcom/coui/appcompat/widget/keyboard/COUIKeyboardView;->mOnClickButtonListener:Lcom/coui/appcompat/widget/keyboard/COUIKeyboardView$OnClickButtonListener;

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/coui/appcompat/widget/keyboard/COUIKeyboardView;->mOnClickButtonListener:Lcom/coui/appcompat/widget/keyboard/COUIKeyboardView$OnClickButtonListener;

    invoke-interface {v0}, Lcom/coui/appcompat/widget/keyboard/COUIKeyboardView$OnClickButtonListener;->onClickButton()V

    .line 165
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcoui/support/appcompat/R$id;->coui_keyboard_view_detail:I

    if-ne v0, v1, :cond_1

    .line 167
    iget-object v0, p0, Lcom/coui/appcompat/widget/keyboard/COUIKeyboardView;->mOnClickSwitchListener:Lcom/coui/appcompat/widget/keyboard/COUIKeyboardView$OnClickSwitchListener;

    if-eqz v0, :cond_1

    .line 168
    iget-object v0, p0, Lcom/coui/appcompat/widget/keyboard/COUIKeyboardView;->mOnClickSwitchListener:Lcom/coui/appcompat/widget/keyboard/COUIKeyboardView$OnClickSwitchListener;

    invoke-interface {v0}, Lcom/coui/appcompat/widget/keyboard/COUIKeyboardView$OnClickSwitchListener;->onClickSwitch()V

    .line 171
    :cond_1
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "configuration"    # Landroid/content/res/Configuration;

    .line 146
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 147
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 151
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 152
    .local v0, "width":I
    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/keyboard/COUIKeyboardView;->adjustSizeChange(I)V

    .line 153
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 154
    return-void
.end method

.method public setKeyBoardType(I)V
    .locals 0
    .param p1, "type"    # I

    .line 223
    iput p1, p0, Lcom/coui/appcompat/widget/keyboard/COUIKeyboardView;->mDefaultType:I

    .line 224
    return-void
.end method

.method public setKeyboardHelper(Lcom/coui/appcompat/widget/keyboard/COUIKeyboardHelper;)V
    .locals 0
    .param p1, "helper"    # Lcom/coui/appcompat/widget/keyboard/COUIKeyboardHelper;

    .line 232
    iput-object p1, p0, Lcom/coui/appcompat/widget/keyboard/COUIKeyboardView;->mHelper:Lcom/coui/appcompat/widget/keyboard/COUIKeyboardHelper;

    .line 233
    return-void
.end method

.method public setOnClickButtonListener(Lcom/coui/appcompat/widget/keyboard/COUIKeyboardView$OnClickButtonListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/coui/appcompat/widget/keyboard/COUIKeyboardView$OnClickButtonListener;

    .line 189
    iput-object p1, p0, Lcom/coui/appcompat/widget/keyboard/COUIKeyboardView;->mOnClickButtonListener:Lcom/coui/appcompat/widget/keyboard/COUIKeyboardView$OnClickButtonListener;

    .line 190
    return-void
.end method

.method public setOnClickSwitchListener(Lcom/coui/appcompat/widget/keyboard/COUIKeyboardView$OnClickSwitchListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/coui/appcompat/widget/keyboard/COUIKeyboardView$OnClickSwitchListener;

    .line 207
    iput-object p1, p0, Lcom/coui/appcompat/widget/keyboard/COUIKeyboardView;->mOnClickSwitchListener:Lcom/coui/appcompat/widget/keyboard/COUIKeyboardView$OnClickSwitchListener;

    .line 208
    return-void
.end method
