.class public Lcom/coui/appcompat/dialog/app/AlertController;
.super Ljava/lang/Object;
.source "AlertController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/dialog/app/AlertController$CheckedItemAdapter;,
        Lcom/coui/appcompat/dialog/app/AlertController$AlertParams;,
        Lcom/coui/appcompat/dialog/app/AlertController$RecycleListView;,
        Lcom/coui/appcompat/dialog/app/AlertController$ButtonHandler;
    }
.end annotation


# instance fields
.field mAdapter:Landroid/widget/ListAdapter;

.field protected mAlertDialogLayout:I

.field private final mButtonHandler:Landroid/view/View$OnClickListener;

.field private final mButtonIconDimen:I

.field mButtonNegative:Landroid/widget/Button;

.field private mButtonNegativeIcon:Landroid/graphics/drawable/Drawable;

.field mButtonNegativeMessage:Landroid/os/Message;

.field mButtonNegativeText:Ljava/lang/CharSequence;

.field mButtonNeutral:Landroid/widget/Button;

.field private mButtonNeutralIcon:Landroid/graphics/drawable/Drawable;

.field mButtonNeutralMessage:Landroid/os/Message;

.field mButtonNeutralText:Ljava/lang/CharSequence;

.field private mButtonPanelLayoutHint:I

.field private mButtonPanelSideLayout:I

.field mButtonPositive:Landroid/widget/Button;

.field private mButtonPositiveIcon:Landroid/graphics/drawable/Drawable;

.field mButtonPositiveMessage:Landroid/os/Message;

.field mButtonPositiveText:Ljava/lang/CharSequence;

.field mChangeable:Z

.field mCheckedItem:I

.field private final mContext:Landroid/content/Context;

.field private mCustomTitleView:Landroid/view/View;

.field final mDialog:Landroidx/appcompat/app/AppCompatDialog;

.field private mDialogType:I

.field mHandler:Landroid/os/Handler;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mIconId:I

.field private mIconView:Landroid/widget/ImageView;

.field mIsMultiChoice:Z

.field mIsSingleChoice:Z

.field mListItemLayout:I

.field mListLayout:I

.field mListView:Landroid/widget/ListView;

.field mMessage:Ljava/lang/CharSequence;

.field mMessageNeedScroll:Z

.field private mMessageView:Landroid/widget/TextView;

.field mMultiChoiceItemLayout:I

.field mScrollView:Landroid/widget/ScrollView;

.field private mShowTitle:Z

.field mSingleChoiceItemLayout:I

.field mTitle:Ljava/lang/CharSequence;

.field private mTitleView:Landroid/widget/TextView;

.field private mView:Landroid/view/View;

.field private mViewLayoutResId:I

.field private mViewSpacingBottom:I

.field private mViewSpacingLeft:I

.field private mViewSpacingRight:I

.field private mViewSpacingSpecified:Z

.field private mViewSpacingTop:I

.field final mWindow:Landroid/view/Window;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/appcompat/app/AppCompatDialog;Landroid/view/Window;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "di"    # Landroidx/appcompat/app/AppCompatDialog;
    .param p3, "window"    # Landroid/view/Window;

    .line 230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coui/appcompat/dialog/app/AlertController;->mViewSpacingSpecified:Z

    .line 123
    iput v0, p0, Lcom/coui/appcompat/dialog/app/AlertController;->mIconId:I

    .line 133
    const/4 v1, -0x1

    iput v1, p0, Lcom/coui/appcompat/dialog/app/AlertController;->mCheckedItem:I

    .line 144
    iput v0, p0, Lcom/coui/appcompat/dialog/app/AlertController;->mButtonPanelLayoutHint:I

    .line 146
    iput v0, p0, Lcom/coui/appcompat/dialog/app/AlertController;->mDialogType:I

    .line 152
    iput-boolean v0, p0, Lcom/coui/appcompat/dialog/app/AlertController;->mMessageNeedScroll:Z

    .line 166
    new-instance v1, Lcom/coui/appcompat/dialog/app/AlertController$1;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/dialog/app/AlertController$1;-><init>(Lcom/coui/appcompat/dialog/app/AlertController;)V

    iput-object v1, p0, Lcom/coui/appcompat/dialog/app/AlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    .line 231
    iput-object p1, p0, Lcom/coui/appcompat/dialog/app/AlertController;->mContext:Landroid/content/Context;

    .line 232
    iput-object p2, p0, Lcom/coui/appcompat/dialog/app/AlertController;->mDialog:Landroidx/appcompat/app/AppCompatDialog;

    .line 233
    iput-object p3, p0, Lcom/coui/appcompat/dialog/app/AlertController;->mWindow:Landroid/view/Window;

    .line 234
    new-instance v1, Lcom/coui/appcompat/dialog/app/AlertController$ButtonHandler;

    invoke-direct {v1, p2}, Lcom/coui/appcompat/dialog/app/AlertController$ButtonHandler;-><init>(Landroid/content/DialogInterface;)V

    iput-object v1, p0, Lcom/coui/appcompat/dialog/app/AlertController;->mHandler:Landroid/os/Handler;

    .line 236
    sget-object v1, Lcoui/support/appcompat/R$styleable;->COUIAlertDialog:[I

    sget v2, Lcoui/support/appcompat/R$attr;->couiAlertDialogStyle:I

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v1, v2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 239
    .local v1, "a":Landroid/content/res/TypedArray;
    sget v2, Lcoui/support/appcompat/R$styleable;->COUIAlertDialog_android_layout:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/coui/appcompat/dialog/app/AlertController;->mAlertDialogLayout:I

    .line 240
    sget v2, Lcoui/support/appcompat/R$styleable;->COUIAlertDialog_buttonPanelSideLayout:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/coui/appcompat/dialog/app/AlertController;->mButtonPanelSideLayout:I

    .line 242
    sget v2, Lcoui/support/appcompat/R$styleable;->COUIAlertDialog_listLayout:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/coui/appcompat/dialog/app/AlertController;->mListLayout:I

    .line 243
    sget v2, Lcoui/support/appcompat/R$styleable;->COUIAlertDialog_multiChoiceItemLayout:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/coui/appcompat/dialog/app/AlertController;->mMultiChoiceItemLayout:I

    .line 244
    sget v2, Lcoui/support/appcompat/R$styleable;->COUIAlertDialog_singleChoiceItemLayout:I

    .line 245
    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/coui/appcompat/dialog/app/AlertController;->mSingleChoiceItemLayout:I

    .line 246
    sget v2, Lcoui/support/appcompat/R$styleable;->COUIAlertDialog_listItemLayout:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/coui/appcompat/dialog/app/AlertController;->mListItemLayout:I

    .line 247
    sget v2, Lcoui/support/appcompat/R$styleable;->COUIAlertDialog_showTitle:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/coui/appcompat/dialog/app/AlertController;->mShowTitle:Z

    .line 248
    sget v2, Lcoui/support/appcompat/R$styleable;->COUIAlertDialog_buttonIconDimen:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/dialog/app/AlertController;->mButtonIconDimen:I

    .line 250
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 253
    invoke-virtual {p2, v3}, Landroidx/appcompat/app/AppCompatDialog;->supportRequestWindowFeature(I)Z

    .line 254
    return-void
.end method

.method static canTextInput(Landroid/view/View;)Z
    .locals 5
    .param p0, "v"    # Landroid/view/View;

    .line 257
    invoke-virtual {p0}, Landroid/view/View;->onCheckIsTextEditor()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 258
    return v1

    .line 261
    :cond_0
    instance-of v0, p0, Landroid/view/ViewGroup;

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 262
    return v2

    .line 265
    :cond_1
    move-object v0, p0

    check-cast v0, Landroid/view/ViewGroup;

    .line 266
    .local v0, "vg":Landroid/view/ViewGroup;
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    .line 267
    .local v3, "i":I
    :cond_2
    if-lez v3, :cond_3

    .line 268
    add-int/lit8 v3, v3, -0x1

    .line 269
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    .line 270
    invoke-static {p0}, Lcom/coui/appcompat/dialog/app/AlertController;->canTextInput(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 271
    return v1

    .line 275
    :cond_3
    return v2
.end method

.method private centerButton(Landroid/widget/Button;)V
    .locals 2
    .param p1, "button"    # Landroid/widget/Button;

    .line 914
    invoke-virtual {p1}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 915
    .local v0, "params":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v1, 0x1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 916
    const/high16 v1, 0x3f000000    # 0.5f

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 917
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 918
    return-void
.end method

.method static manageScrollIndicators(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 3
    .param p0, "v"    # Landroid/view/View;
    .param p1, "upIndicator"    # Landroid/view/View;
    .param p2, "downIndicator"    # Landroid/view/View;

    .line 833
    const/4 v0, 0x4

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 834
    const/4 v2, -0x1

    .line 835
    invoke-virtual {p0, v2}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 834
    move v2, v1

    goto :goto_0

    .line 835
    :cond_0
    nop

    .line 834
    move v2, v0

    :goto_0
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 837
    :cond_1
    if-eqz p2, :cond_3

    .line 838
    const/4 v2, 0x1

    .line 839
    invoke-virtual {p0, v2}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 838
    move v0, v1

    goto :goto_1

    .line 839
    :cond_2
    nop

    .line 838
    :goto_1
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 841
    :cond_3
    return-void
.end method

.method private resolvePanel(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;
    .locals 2
    .param p1, "customPanel"    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "defaultPanel"    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 525
    if-nez p1, :cond_1

    .line 527
    instance-of v0, p2, Landroid/view/ViewStub;

    if-eqz v0, :cond_0

    .line 528
    move-object v0, p2

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object p2

    .line 531
    :cond_0
    move-object v0, p2

    check-cast v0, Landroid/view/ViewGroup;

    return-object v0

    .line 535
    :cond_1
    if-eqz p2, :cond_2

    .line 536
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 537
    .local v0, "parent":Landroid/view/ViewParent;
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_2

    .line 538
    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 543
    .end local v0    # "parent":Landroid/view/ViewParent;
    :cond_2
    instance-of v0, p1, Landroid/view/ViewStub;

    if-eqz v0, :cond_3

    .line 544
    move-object v0, p1

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object p1

    .line 547
    :cond_3
    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    return-object v0
.end method

.method private setScrollIndicators(Landroid/view/ViewGroup;Landroid/view/View;II)V
    .locals 6
    .param p1, "contentPanel"    # Landroid/view/ViewGroup;
    .param p2, "content"    # Landroid/view/View;
    .param p3, "indicators"    # I
    .param p4, "mask"    # I

    .line 644
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/AlertController;->mWindow:Landroid/view/Window;

    sget v1, Lcoui/support/appcompat/R$id;->scrollIndicatorUp:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 645
    .local v0, "indicatorUp":Landroid/view/View;
    iget-object v1, p0, Lcom/coui/appcompat/dialog/app/AlertController;->mWindow:Landroid/view/Window;

    sget v2, Lcoui/support/appcompat/R$id;->scrollIndicatorDown:I

    invoke-virtual {v1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 647
    .local v1, "indicatorDown":Landroid/view/View;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_1

    .line 651
    if-eqz v0, :cond_0

    .line 652
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 654
    :cond_0
    if-eqz v1, :cond_8

    .line 655
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 659
    :cond_1
    if-eqz v0, :cond_2

    and-int/lit8 v2, p3, 0x1

    if-nez v2, :cond_2

    .line 660
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 661
    const/4 v0, 0x0

    .line 663
    :cond_2
    if-eqz v1, :cond_3

    and-int/lit8 v2, p3, 0x2

    if-nez v2, :cond_3

    .line 664
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 665
    const/4 v1, 0x0

    .line 668
    :cond_3
    if-nez v0, :cond_4

    if-eqz v1, :cond_8

    .line 669
    :cond_4
    move-object v2, v0

    .line 670
    .local v2, "top":Landroid/view/View;
    move-object v3, v1

    .line 672
    .local v3, "bottom":Landroid/view/View;
    iget-object v4, p0, Lcom/coui/appcompat/dialog/app/AlertController;->mMessage:Ljava/lang/CharSequence;

    if-eqz v4, :cond_5

    .line 684
    iget-object v4, p0, Lcom/coui/appcompat/dialog/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    new-instance v5, Lcom/coui/appcompat/dialog/app/AlertController$2;

    invoke-direct {v5, p0, v2, v3}, Lcom/coui/appcompat/dialog/app/AlertController$2;-><init>(Lcom/coui/appcompat/dialog/app/AlertController;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v4, v5}, Landroid/widget/ScrollView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 690
    :cond_5
    iget-object v4, p0, Lcom/coui/appcompat/dialog/app/AlertController;->mListView:Landroid/widget/ListView;

    if-eqz v4, :cond_6

    .line 692
    iget-object v4, p0, Lcom/coui/appcompat/dialog/app/AlertController;->mListView:Landroid/widget/ListView;

    new-instance v5, Lcom/coui/appcompat/dialog/app/AlertController$3;

    invoke-direct {v5, p0, v2, v3}, Lcom/coui/appcompat/dialog/app/AlertController$3;-><init>(Lcom/coui/appcompat/dialog/app/AlertController;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 704
    iget-object v4, p0, Lcom/coui/appcompat/dialog/app/AlertController;->mListView:Landroid/widget/ListView;

    new-instance v5, Lcom/coui/appcompat/dialog/app/AlertController$4;

    invoke-direct {v5, p0, v2, v3}, Lcom/coui/appcompat/dialog/app/AlertController$4;-><init>(Lcom/coui/appcompat/dialog/app/AlertController;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 712
    :cond_6
    if-eqz v2, :cond_7

    .line 713
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 715
    :cond_7
    if-eqz v3, :cond_8

    .line 716
    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 721
    .end local v2    # "top":Landroid/view/View;
    .end local v3    # "bottom":Landroid/view/View;
    :cond_8
    :goto_0
    return-void
.end method

.method private setupCustomContent(Landroid/view/ViewGroup;)V
    .locals 7
    .param p1, "customPanel"    # Landroid/view/ViewGroup;

    .line 725
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/AlertController;->mView:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 726
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/AlertController;->mView:Landroid/view/View;

    goto :goto_0

    .line 727
    :cond_0
    iget v0, p0, Lcom/coui/appcompat/dialog/app/AlertController;->mViewLayoutResId:I

    if-eqz v0, :cond_1

    .line 728
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/AlertController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 729
    .local v0, "inflater":Landroid/view/LayoutInflater;
    iget v2, p0, Lcom/coui/appcompat/dialog/app/AlertController;->mViewLayoutResId:I

    invoke-virtual {v0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 730
    .local v0, "customView":Landroid/view/View;
    goto :goto_0

    .line 731
    .end local v0    # "customView":Landroid/view/View;
    :cond_1
    const/4 v0, 0x0

    .line 734
    .restart local v0    # "customView":Landroid/view/View;
    :goto_0
    if-eqz v0, :cond_2

    const/4 v1, 0x1

    nop

    .line 735
    .local v1, "hasCustomView":Z
    :cond_2
    if-eqz v1, :cond_3

    invoke-static {v0}, Lcom/coui/appcompat/dialog/app/AlertController;->canTextInput(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 736
    :cond_3
    iget-object v2, p0, Lcom/coui/appcompat/dialog/app/AlertController;->mWindow:Landroid/view/Window;

    const/high16 v3, 0x20000

    invoke-virtual {v2, v3, v3}, Landroid/view/Window;->setFlags(II)V

    .line 740
    :cond_4
    if-eqz v1, :cond_7

    .line 741
    iget-object v2, p0, Lcom/coui/appcompat/dialog/app/AlertController;->mWindow:Landroid/view/Window;

    sget v3, Lcoui/support/appcompat/R$id;->custom:I

    invoke-virtual {v2, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    .line 742
    .local v2, "custom":Landroid/widget/FrameLayout;
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v0, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 744
    iget-boolean v3, p0, Lcom/coui/appcompat/dialog/app/AlertController;->mViewSpacingSpecified:Z

    if-eqz v3, :cond_5

    .line 745
    iget v3, p0, Lcom/coui/appcompat/dialog/app/AlertController;->mViewSpacingLeft:I

    iget v4, p0, Lcom/coui/appcompat/dialog/app/AlertController;->mViewSpacingTop:I

    iget v5, p0, Lcom/coui/appcompat/dialog/app/AlertController;->mViewSpacingRight:I

    iget v6, p0, Lcom/coui/appcompat/dialog/app/AlertController;->mViewSpacingBottom:I

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 749
    :cond_5
    iget-object v3, p0, Lcom/coui/appcompat/dialog/app/AlertController;->mListView:Landroid/widget/ListView;

    if-eqz v3, :cond_6

    .line 750
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, 0x0

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 752
    .end local v2    # "custom":Landroid/widget/FrameLayout;
    :cond_6
    goto :goto_1

    .line 753
    :cond_7
    const/16 v2, 0x8

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 755
    :goto_1
    return-void
.end method

.method private static shouldCenterSingleButton(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 217
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 218
    .local v0, "outValue":Landroid/util/TypedValue;
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget v2, Lcoui/support/appcompat/R$attr;->alertDialogCenterButtons:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 219
    iget v1, v0, Landroid/util/TypedValue;->data:I

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    return v3
.end method


# virtual methods
.method public getButton(I)Landroid/widget/Button;
    .locals 1
    .param p1, "whichButton"    # I

    .line 492
    packed-switch p1, :pswitch_data_0

    .line 500
    const/4 v0, 0x0

    return-object v0

    .line 494
    :pswitch_0
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    return-object v0

    .line 496
    :pswitch_1
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    return-object v0

    .line 498
    :pswitch_2
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    return-object v0

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getDialogType()I
    .locals 1

    .line 926
    iget v0, p0, Lcom/coui/appcompat/dialog/app/AlertController;->mDialogType:I

    return v0
.end method

.method public getIconAttributeResId(I)I
    .locals 3
    .param p1, "attrId"    # I

    .line 474
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 475
    .local v0, "out":Landroid/util/TypedValue;
    iget-object v1, p0, Lcom/coui/appcompat/dialog/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 476
    iget v1, v0, Landroid/util/TypedValue;->resourceId:I

    return v1
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    .line 485
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/AlertController;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method public installContent()V
    .locals 2

    .line 282
    invoke-virtual {p0}, Lcom/coui/appcompat/dialog/app/AlertController;->selectContentView()I

    move-result v0

    .line 283
    .local v0, "contentView":I
    iget-object v1, p0, Lcom/coui/appcompat/dialog/app/AlertController;->mDialog:Landroidx/appcompat/app/AppCompatDialog;

    invoke-virtual {v1, v0}, Landroidx/appcompat/app/AppCompatDialog;->setContentView(I)V

    .line 284
    invoke-virtual {p0}, Lcom/coui/appcompat/dialog/app/AlertController;->setupView()V

    .line 285
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 506
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, p2}, Landroid/widget/ScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 511
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, p2}, Landroid/widget/ScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected selectContentView()I
    .locals 2

    .line 288
    iget v0, p0, Lcom/coui/appcompat/dialog/app/AlertController;->mButtonPanelSideLayout:I

    if-nez v0, :cond_0

    .line 289
    iget v0, p0, Lcom/coui/appcompat/dialog/app/AlertController;->mAlertDialogLayout:I

    return v0

    .line 291
    :cond_0
    iget v0, p0, Lcom/coui/appcompat/dialog/app/AlertController;->mButtonPanelLayoutHint:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 292
    iget v0, p0, Lcom/coui/appcompat/dialog/app/AlertController;->mButtonPanelSideLayout:I

    return v0

    .line 294
    :cond_1
    iget v0, p0, Lcom/coui/appcompat/dialog/app/AlertController;->mAlertDialogLayout:I

    return v0
.end method

.method public setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "whichButton"    # I
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "listener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p4, "msg"    # Landroid/os/Message;
    .param p5, "icon"    # Landroid/graphics/drawable/Drawable;

    .line 398
    if-nez p4, :cond_0

    if-eqz p3, :cond_0

    .line 399
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/AlertController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p4

    .line 402
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 423
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Button does not exist"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 405
    :pswitch_0
    iput-object p2, p0, Lcom/coui/appcompat/dialog/app/AlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    .line 406
    iput-object p4, p0, Lcom/coui/appcompat/dialog/app/AlertController;->mButtonPositiveMessage:Landroid/os/Message;

    .line 407
    iput-object p5, p0, Lcom/coui/appcompat/dialog/app/AlertController;->mButtonPositiveIcon:Landroid/graphics/drawable/Drawable;

    .line 408
    goto :goto_0

    .line 411
    :pswitch_1
    iput-object p2, p0, Lcom/coui/appcompat/dialog/app/AlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    .line 412
    iput-object p4, p0, Lcom/coui/appcompat/dialog/app/AlertController;->mButtonNegativeMessage:Landroid/os/Message;

    .line 413
    iput-object p5, p0, Lcom/coui/appcompat/dialog/app/AlertController;->mButtonNegativeIcon:Landroid/graphics/drawable/Drawable;

    .line 414
    goto :goto_0

    .line 417
    :pswitch_2
    iput-object p2, p0, Lcom/coui/appcompat/dialog/app/AlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    .line 418
    iput-object p4, p0, Lcom/coui/appcompat/dialog/app/AlertController;->mButtonNeutralMessage:Landroid/os/Message;

    .line 419
    iput-object p5, p0, Lcom/coui/appcompat/dialog/app/AlertController;->mButtonNeutralIcon:Landroid/graphics/drawable/Drawable;

    .line 420
    nop

    .line 425
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setButtonPanelLayoutHint(I)V
    .locals 0
    .param p1, "layoutHint"    # I

    .line 379
    iput p1, p0, Lcom/coui/appcompat/dialog/app/AlertController;->mButtonPanelLayoutHint:I

    .line 380
    return-void
.end method

.method public setCustomTitle(Landroid/view/View;)V
    .locals 0
    .param p1, "customTitleView"    # Landroid/view/View;

    .line 313
    iput-object p1, p0, Lcom/coui/appcompat/dialog/app/AlertController;->mCustomTitleView:Landroid/view/View;

    .line 314
    return-void
.end method

.method public setDialogType(I)V
    .locals 0
    .param p1, "deleteDialogOption"    # I

    .line 936
    iput p1, p0, Lcom/coui/appcompat/dialog/app/AlertController;->mDialogType:I

    .line 937
    return-void
.end method

.method public setIcon(I)V
    .locals 2
    .param p1, "resId"    # I

    .line 434
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coui/appcompat/dialog/app/AlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 435
    iput p1, p0, Lcom/coui/appcompat/dialog/app/AlertController;->mIconId:I

    .line 437
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/AlertController;->mIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 438
    if-eqz p1, :cond_0

    .line 439
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/AlertController;->mIconView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 440
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/AlertController;->mIconView:Landroid/widget/ImageView;

    iget v1, p0, Lcom/coui/appcompat/dialog/app/AlertController;->mIconId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 442
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/AlertController;->mIconView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 445
    :cond_1
    :goto_0
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .line 453
    iput-object p1, p0, Lcom/coui/appcompat/dialog/app/AlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 454
    const/4 v0, 0x0

    iput v0, p0, Lcom/coui/appcompat/dialog/app/AlertController;->mIconId:I

    .line 456
    iget-object v1, p0, Lcom/coui/appcompat/dialog/app/AlertController;->mIconView:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    .line 457
    if-eqz p1, :cond_0

    .line 458
    iget-object v1, p0, Lcom/coui/appcompat/dialog/app/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 459
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 461
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/AlertController;->mIconView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 464
    :cond_1
    :goto_0
    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/CharSequence;

    .line 322
    iput-object p1, p0, Lcom/coui/appcompat/dialog/app/AlertController;->mMessage:Ljava/lang/CharSequence;

    .line 323
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/AlertController;->mMessageView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 324
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/AlertController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 326
    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 303
    iput-object p1, p0, Lcom/coui/appcompat/dialog/app/AlertController;->mTitle:Ljava/lang/CharSequence;

    .line 304
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/AlertController;->mTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 305
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/AlertController;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 307
    :cond_0
    return-void
.end method

.method public setView(I)V
    .locals 1
    .param p1, "layoutResId"    # I

    .line 334
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coui/appcompat/dialog/app/AlertController;->mView:Landroid/view/View;

    .line 335
    iput p1, p0, Lcom/coui/appcompat/dialog/app/AlertController;->mViewLayoutResId:I

    .line 336
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coui/appcompat/dialog/app/AlertController;->mViewSpacingSpecified:Z

    .line 337
    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 345
    iput-object p1, p0, Lcom/coui/appcompat/dialog/app/AlertController;->mView:Landroid/view/View;

    .line 346
    const/4 v0, 0x0

    iput v0, p0, Lcom/coui/appcompat/dialog/app/AlertController;->mViewLayoutResId:I

    .line 347
    iput-boolean v0, p0, Lcom/coui/appcompat/dialog/app/AlertController;->mViewSpacingSpecified:Z

    .line 348
    return-void
.end method

.method public setView(Landroid/view/View;IIII)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "viewSpacingLeft"    # I
    .param p3, "viewSpacingTop"    # I
    .param p4, "viewSpacingRight"    # I
    .param p5, "viewSpacingBottom"    # I

    .line 366
    iput-object p1, p0, Lcom/coui/appcompat/dialog/app/AlertController;->mView:Landroid/view/View;

    .line 367
    const/4 v0, 0x0

    iput v0, p0, Lcom/coui/appcompat/dialog/app/AlertController;->mViewLayoutResId:I

    .line 368
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coui/appcompat/dialog/app/AlertController;->mViewSpacingSpecified:Z

    .line 369
    iput p2, p0, Lcom/coui/appcompat/dialog/app/AlertController;->mViewSpacingLeft:I

    .line 370
    iput p3, p0, Lcom/coui/appcompat/dialog/app/AlertController;->mViewSpacingTop:I

    .line 371
    iput p4, p0, Lcom/coui/appcompat/dialog/app/AlertController;->mViewSpacingRight:I

    .line 372
    iput p5, p0, Lcom/coui/appcompat/dialog/app/AlertController;->mViewSpacingBottom:I

    .line 373
    return-void
.end method

.method protected setupButtons(Landroid/view/ViewGroup;)V
    .locals 10
    .param p1, "buttonPanel"    # Landroid/view/ViewGroup;

    .line 844
    const/4 v0, 0x1

    .line 845
    .local v0, "BIT_BUTTON_POSITIVE":I
    const/4 v1, 0x2

    .line 846
    .local v1, "BIT_BUTTON_NEGATIVE":I
    const/4 v2, 0x4

    .line 847
    .local v2, "BIT_BUTTON_NEUTRAL":I
    const/4 v3, 0x0

    .line 848
    .local v3, "whichButtons":I
    const v4, 0x1020019

    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/coui/appcompat/dialog/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    .line 849
    iget-object v4, p0, Lcom/coui/appcompat/dialog/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    iget-object v5, p0, Lcom/coui/appcompat/dialog/app/AlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 851
    iget-object v4, p0, Lcom/coui/appcompat/dialog/app/AlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const/16 v5, 0x8

    const/4 v6, 0x0

    const/4 v7, 0x0

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/coui/appcompat/dialog/app/AlertController;->mButtonPositiveIcon:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_0

    .line 852
    iget-object v4, p0, Lcom/coui/appcompat/dialog/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 854
    :cond_0
    iget-object v4, p0, Lcom/coui/appcompat/dialog/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    iget-object v8, p0, Lcom/coui/appcompat/dialog/app/AlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    invoke-virtual {v4, v8}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 855
    iget-object v4, p0, Lcom/coui/appcompat/dialog/app/AlertController;->mButtonPositiveIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_1

    .line 856
    iget-object v4, p0, Lcom/coui/appcompat/dialog/app/AlertController;->mButtonPositiveIcon:Landroid/graphics/drawable/Drawable;

    iget v8, p0, Lcom/coui/appcompat/dialog/app/AlertController;->mButtonIconDimen:I

    iget v9, p0, Lcom/coui/appcompat/dialog/app/AlertController;->mButtonIconDimen:I

    invoke-virtual {v4, v7, v7, v8, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 857
    iget-object v4, p0, Lcom/coui/appcompat/dialog/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    iget-object v8, p0, Lcom/coui/appcompat/dialog/app/AlertController;->mButtonPositiveIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v8, v6, v6, v6}, Landroid/widget/Button;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 859
    :cond_1
    iget-object v4, p0, Lcom/coui/appcompat/dialog/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 860
    or-int/2addr v3, v0

    .line 863
    :goto_0
    const v4, 0x102001a

    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/coui/appcompat/dialog/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    .line 864
    iget-object v4, p0, Lcom/coui/appcompat/dialog/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    iget-object v8, p0, Lcom/coui/appcompat/dialog/app/AlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 866
    iget-object v4, p0, Lcom/coui/appcompat/dialog/app/AlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/coui/appcompat/dialog/app/AlertController;->mButtonNegativeIcon:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_2

    .line 867
    iget-object v4, p0, Lcom/coui/appcompat/dialog/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1

    .line 869
    :cond_2
    iget-object v4, p0, Lcom/coui/appcompat/dialog/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    iget-object v8, p0, Lcom/coui/appcompat/dialog/app/AlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    invoke-virtual {v4, v8}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 870
    iget-object v4, p0, Lcom/coui/appcompat/dialog/app/AlertController;->mButtonNegativeIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_3

    .line 871
    iget-object v4, p0, Lcom/coui/appcompat/dialog/app/AlertController;->mButtonNegativeIcon:Landroid/graphics/drawable/Drawable;

    iget v8, p0, Lcom/coui/appcompat/dialog/app/AlertController;->mButtonIconDimen:I

    iget v9, p0, Lcom/coui/appcompat/dialog/app/AlertController;->mButtonIconDimen:I

    invoke-virtual {v4, v7, v7, v8, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 872
    iget-object v4, p0, Lcom/coui/appcompat/dialog/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    iget-object v8, p0, Lcom/coui/appcompat/dialog/app/AlertController;->mButtonNegativeIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v8, v6, v6, v6}, Landroid/widget/Button;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 874
    :cond_3
    iget-object v4, p0, Lcom/coui/appcompat/dialog/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 875
    or-int/2addr v3, v1

    .line 878
    :goto_1
    const v4, 0x102001b

    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/coui/appcompat/dialog/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    .line 879
    iget-object v4, p0, Lcom/coui/appcompat/dialog/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    iget-object v8, p0, Lcom/coui/appcompat/dialog/app/AlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 881
    iget-object v4, p0, Lcom/coui/appcompat/dialog/app/AlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/coui/appcompat/dialog/app/AlertController;->mButtonNeutralIcon:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_4

    .line 882
    iget-object v4, p0, Lcom/coui/appcompat/dialog/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_2

    .line 884
    :cond_4
    iget-object v4, p0, Lcom/coui/appcompat/dialog/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    iget-object v8, p0, Lcom/coui/appcompat/dialog/app/AlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    invoke-virtual {v4, v8}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 885
    iget-object v4, p0, Lcom/coui/appcompat/dialog/app/AlertController;->mButtonPositiveIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_5

    .line 886
    iget-object v4, p0, Lcom/coui/appcompat/dialog/app/AlertController;->mButtonPositiveIcon:Landroid/graphics/drawable/Drawable;

    iget v8, p0, Lcom/coui/appcompat/dialog/app/AlertController;->mButtonIconDimen:I

    iget v9, p0, Lcom/coui/appcompat/dialog/app/AlertController;->mButtonIconDimen:I

    invoke-virtual {v4, v7, v7, v8, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 887
    iget-object v4, p0, Lcom/coui/appcompat/dialog/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    iget-object v8, p0, Lcom/coui/appcompat/dialog/app/AlertController;->mButtonPositiveIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v8, v6, v6, v6}, Landroid/widget/Button;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 889
    :cond_5
    iget-object v4, p0, Lcom/coui/appcompat/dialog/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 890
    or-int/2addr v3, v2

    .line 893
    :goto_2
    iget-object v4, p0, Lcom/coui/appcompat/dialog/app/AlertController;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/coui/appcompat/dialog/app/AlertController;->shouldCenterSingleButton(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 898
    if-ne v3, v0, :cond_6

    .line 899
    iget-object v4, p0, Lcom/coui/appcompat/dialog/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-direct {p0, v4}, Lcom/coui/appcompat/dialog/app/AlertController;->centerButton(Landroid/widget/Button;)V

    goto :goto_3

    .line 900
    :cond_6
    if-ne v3, v1, :cond_7

    .line 901
    iget-object v4, p0, Lcom/coui/appcompat/dialog/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-direct {p0, v4}, Lcom/coui/appcompat/dialog/app/AlertController;->centerButton(Landroid/widget/Button;)V

    goto :goto_3

    .line 902
    :cond_7
    if-ne v3, v2, :cond_8

    .line 903
    iget-object v4, p0, Lcom/coui/appcompat/dialog/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-direct {p0, v4}, Lcom/coui/appcompat/dialog/app/AlertController;->centerButton(Landroid/widget/Button;)V

    .line 907
    :cond_8
    :goto_3
    if-eqz v3, :cond_9

    const/4 v7, 0x1

    nop

    :cond_9
    move v4, v7

    .line 908
    .local v4, "hasButtons":Z
    if-nez v4, :cond_a

    .line 909
    invoke-virtual {p1, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 911
    :cond_a
    return-void
.end method

.method protected setupContent(Landroid/view/ViewGroup;)V
    .locals 5
    .param p1, "contentPanel"    # Landroid/view/ViewGroup;

    .line 804
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/AlertController;->mWindow:Landroid/view/Window;

    sget v1, Lcoui/support/appcompat/R$id;->scrollView:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/coui/appcompat/dialog/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    .line 805
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setFocusable(Z)V

    .line 806
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setNestedScrollingEnabled(Z)V

    .line 809
    const v0, 0x102000b

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coui/appcompat/dialog/app/AlertController;->mMessageView:Landroid/widget/TextView;

    .line 810
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/AlertController;->mMessageView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 811
    return-void

    .line 814
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/AlertController;->mMessage:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    .line 815
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/AlertController;->mMessageView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/coui/appcompat/dialog/app/AlertController;->mMessage:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 817
    :cond_1
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/AlertController;->mMessageView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 818
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    iget-object v2, p0, Lcom/coui/appcompat/dialog/app/AlertController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/ScrollView;->removeView(Landroid/view/View;)V

    .line 820
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/AlertController;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_2

    .line 821
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 822
    .local v0, "scrollParent":Landroid/view/ViewGroup;
    iget-object v1, p0, Lcom/coui/appcompat/dialog/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    .line 823
    .local v1, "childIndex":I
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 824
    iget-object v2, p0, Lcom/coui/appcompat/dialog/app/AlertController;->mListView:Landroid/widget/ListView;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 826
    .end local v0    # "scrollParent":Landroid/view/ViewGroup;
    .end local v1    # "childIndex":I
    goto :goto_0

    .line 827
    :cond_2
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 830
    :goto_0
    return-void
.end method

.method protected setupTitle(Landroid/view/ViewGroup;)V
    .locals 7
    .param p1, "topPanel"    # Landroid/view/ViewGroup;

    .line 758
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/AlertController;->mCustomTitleView:Landroid/view/View;

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    .line 760
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v0, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 763
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget-object v2, p0, Lcom/coui/appcompat/dialog/app/AlertController;->mCustomTitleView:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 766
    iget-object v2, p0, Lcom/coui/appcompat/dialog/app/AlertController;->mWindow:Landroid/view/Window;

    sget v3, Lcoui/support/appcompat/R$id;->title_template:I

    invoke-virtual {v2, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 767
    .local v2, "titleTemplate":Landroid/view/View;
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 768
    .end local v0    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v2    # "titleTemplate":Landroid/view/View;
    goto/16 :goto_0

    .line 769
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/AlertController;->mWindow:Landroid/view/Window;

    const v2, 0x1020006

    invoke-virtual {v0, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/coui/appcompat/dialog/app/AlertController;->mIconView:Landroid/widget/ImageView;

    .line 771
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/AlertController;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 772
    .local v0, "hasTextTitle":Z
    if-eqz v0, :cond_3

    iget-boolean v2, p0, Lcom/coui/appcompat/dialog/app/AlertController;->mShowTitle:Z

    if-eqz v2, :cond_3

    .line 774
    iget-object v2, p0, Lcom/coui/appcompat/dialog/app/AlertController;->mWindow:Landroid/view/Window;

    sget v3, Lcoui/support/appcompat/R$id;->alertTitle:I

    invoke-virtual {v2, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/coui/appcompat/dialog/app/AlertController;->mTitleView:Landroid/widget/TextView;

    .line 775
    iget-object v2, p0, Lcom/coui/appcompat/dialog/app/AlertController;->mTitleView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/coui/appcompat/dialog/app/AlertController;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 780
    iget v2, p0, Lcom/coui/appcompat/dialog/app/AlertController;->mIconId:I

    if-eqz v2, :cond_1

    .line 781
    iget-object v1, p0, Lcom/coui/appcompat/dialog/app/AlertController;->mIconView:Landroid/widget/ImageView;

    iget v2, p0, Lcom/coui/appcompat/dialog/app/AlertController;->mIconId:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 782
    :cond_1
    iget-object v2, p0, Lcom/coui/appcompat/dialog/app/AlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_2

    .line 783
    iget-object v1, p0, Lcom/coui/appcompat/dialog/app/AlertController;->mIconView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/coui/appcompat/dialog/app/AlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 787
    :cond_2
    iget-object v2, p0, Lcom/coui/appcompat/dialog/app/AlertController;->mTitleView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/coui/appcompat/dialog/app/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v3

    iget-object v4, p0, Lcom/coui/appcompat/dialog/app/AlertController;->mIconView:Landroid/widget/ImageView;

    .line 788
    invoke-virtual {v4}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v4

    iget-object v5, p0, Lcom/coui/appcompat/dialog/app/AlertController;->mIconView:Landroid/widget/ImageView;

    .line 789
    invoke-virtual {v5}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v5

    iget-object v6, p0, Lcom/coui/appcompat/dialog/app/AlertController;->mIconView:Landroid/widget/ImageView;

    .line 790
    invoke-virtual {v6}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v6

    .line 787
    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 791
    iget-object v2, p0, Lcom/coui/appcompat/dialog/app/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 795
    :cond_3
    iget-object v2, p0, Lcom/coui/appcompat/dialog/app/AlertController;->mWindow:Landroid/view/Window;

    sget v3, Lcoui/support/appcompat/R$id;->title_template:I

    invoke-virtual {v2, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 796
    .restart local v2    # "titleTemplate":Landroid/view/View;
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 797
    iget-object v3, p0, Lcom/coui/appcompat/dialog/app/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 798
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 801
    .end local v0    # "hasTextTitle":Z
    .end local v2    # "titleTemplate":Landroid/view/View;
    :goto_0
    return-void
.end method

.method protected setupView()V
    .locals 19

    .line 551
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/coui/appcompat/dialog/app/AlertController;->mWindow:Landroid/view/Window;

    sget v2, Lcoui/support/appcompat/R$id;->parentPanel:I

    invoke-virtual {v1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 552
    .local v1, "parentPanel":Landroid/view/View;
    sget v2, Lcoui/support/appcompat/R$id;->topPanel:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 553
    .local v2, "defaultTopPanel":Landroid/view/View;
    sget v3, Lcoui/support/appcompat/R$id;->contentPanel:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 554
    .local v3, "defaultContentPanel":Landroid/view/View;
    sget v4, Lcoui/support/appcompat/R$id;->buttonPanel:I

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 558
    .local v4, "defaultButtonPanel":Landroid/view/View;
    sget v5, Lcoui/support/appcompat/R$id;->customPanel:I

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    .line 559
    .local v5, "customPanel":Landroid/view/ViewGroup;
    invoke-direct {v0, v5}, Lcom/coui/appcompat/dialog/app/AlertController;->setupCustomContent(Landroid/view/ViewGroup;)V

    .line 561
    sget v6, Lcoui/support/appcompat/R$id;->topPanel:I

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 562
    .local v6, "customTopPanel":Landroid/view/View;
    sget v7, Lcoui/support/appcompat/R$id;->contentPanel:I

    invoke-virtual {v5, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 563
    .local v7, "customContentPanel":Landroid/view/View;
    sget v8, Lcoui/support/appcompat/R$id;->buttonPanel:I

    invoke-virtual {v5, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 566
    .local v8, "customButtonPanel":Landroid/view/View;
    invoke-direct {v0, v6, v2}, Lcom/coui/appcompat/dialog/app/AlertController;->resolvePanel(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v9

    .line 567
    .local v9, "topPanel":Landroid/view/ViewGroup;
    invoke-direct {v0, v7, v3}, Lcom/coui/appcompat/dialog/app/AlertController;->resolvePanel(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v10

    .line 568
    .local v10, "contentPanel":Landroid/view/ViewGroup;
    invoke-direct {v0, v8, v4}, Lcom/coui/appcompat/dialog/app/AlertController;->resolvePanel(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v11

    .line 570
    .local v11, "buttonPanel":Landroid/view/ViewGroup;
    invoke-virtual {v0, v10}, Lcom/coui/appcompat/dialog/app/AlertController;->setupContent(Landroid/view/ViewGroup;)V

    .line 571
    invoke-virtual {v0, v11}, Lcom/coui/appcompat/dialog/app/AlertController;->setupButtons(Landroid/view/ViewGroup;)V

    .line 572
    invoke-virtual {v0, v9}, Lcom/coui/appcompat/dialog/app/AlertController;->setupTitle(Landroid/view/ViewGroup;)V

    .line 574
    const/16 v12, 0x8

    if-eqz v5, :cond_0

    .line 575
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v15

    if-eq v15, v12, :cond_0

    const/4 v15, 0x1

    goto :goto_0

    :cond_0
    const/4 v15, 0x0

    .line 576
    .local v15, "hasCustomPanel":Z
    :goto_0
    if-eqz v9, :cond_1

    .line 577
    invoke-virtual {v9}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v13

    if-eq v13, v12, :cond_1

    const/4 v13, 0x1

    goto :goto_1

    :cond_1
    const/4 v13, 0x0

    .line 578
    .local v13, "hasTopPanel":Z
    :goto_1
    if-eqz v11, :cond_2

    .line 579
    invoke-virtual {v11}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v14

    if-eq v14, v12, :cond_2

    const/4 v12, 0x1

    goto :goto_2

    :cond_2
    const/4 v12, 0x0

    .line 582
    .local v12, "hasButtonPanel":Z
    :goto_2
    if-nez v12, :cond_3

    .line 583
    if-eqz v10, :cond_3

    .line 584
    sget v14, Lcoui/support/appcompat/R$id;->textSpacerNoButtons:I

    invoke-virtual {v10, v14}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v14

    .line 585
    .local v14, "spacer":Landroid/view/View;
    if-eqz v14, :cond_3

    .line 586
    move-object/from16 v17, v1

    const/4 v1, 0x0

    .end local v1    # "parentPanel":Landroid/view/View;
    .local v17, "parentPanel":Landroid/view/View;
    invoke-virtual {v14, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 591
    .end local v14    # "spacer":Landroid/view/View;
    .end local v17    # "parentPanel":Landroid/view/View;
    .restart local v1    # "parentPanel":Landroid/view/View;
    :cond_3
    move-object/from16 v17, v1

    .end local v1    # "parentPanel":Landroid/view/View;
    .restart local v17    # "parentPanel":Landroid/view/View;
    :goto_3
    if-eqz v13, :cond_8

    .line 593
    iget-object v1, v0, Lcom/coui/appcompat/dialog/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    if-eqz v1, :cond_4

    .line 594
    iget-object v1, v0, Lcom/coui/appcompat/dialog/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    const/4 v14, 0x1

    invoke-virtual {v1, v14}, Landroid/widget/ScrollView;->setClipToPadding(Z)V

    .line 598
    :cond_4
    const/4 v1, 0x0

    .line 599
    .local v1, "divider":Landroid/view/View;
    iget-object v14, v0, Lcom/coui/appcompat/dialog/app/AlertController;->mMessage:Ljava/lang/CharSequence;

    if-nez v14, :cond_5

    iget-object v14, v0, Lcom/coui/appcompat/dialog/app/AlertController;->mListView:Landroid/widget/ListView;

    if-eqz v14, :cond_6

    .line 600
    :cond_5
    sget v14, Lcoui/support/appcompat/R$id;->titleDividerNoCustom:I

    invoke-virtual {v9, v14}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 603
    :cond_6
    if-eqz v1, :cond_7

    .line 604
    const/4 v14, 0x0

    invoke-virtual {v1, v14}, Landroid/view/View;->setVisibility(I)V

    .line 606
    .end local v1    # "divider":Landroid/view/View;
    :cond_7
    goto :goto_4

    .line 607
    :cond_8
    if-eqz v10, :cond_9

    .line 608
    sget v1, Lcoui/support/appcompat/R$id;->textSpacerNoTitle:I

    invoke-virtual {v10, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 609
    .local v1, "spacer":Landroid/view/View;
    if-eqz v1, :cond_9

    .line 610
    const/4 v14, 0x0

    invoke-virtual {v1, v14}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5

    .line 615
    .end local v1    # "spacer":Landroid/view/View;
    :cond_9
    :goto_4
    const/4 v14, 0x0

    :goto_5
    iget-object v1, v0, Lcom/coui/appcompat/dialog/app/AlertController;->mListView:Landroid/widget/ListView;

    instance-of v1, v1, Lcom/coui/appcompat/dialog/app/AlertController$RecycleListView;

    if-eqz v1, :cond_a

    .line 616
    iget-object v1, v0, Lcom/coui/appcompat/dialog/app/AlertController;->mListView:Landroid/widget/ListView;

    check-cast v1, Lcom/coui/appcompat/dialog/app/AlertController$RecycleListView;

    invoke-virtual {v1, v13, v12}, Lcom/coui/appcompat/dialog/app/AlertController$RecycleListView;->setHasDecor(ZZ)V

    .line 620
    :cond_a
    if-nez v15, :cond_e

    .line 621
    iget-object v1, v0, Lcom/coui/appcompat/dialog/app/AlertController;->mListView:Landroid/widget/ListView;

    if-eqz v1, :cond_b

    iget-object v1, v0, Lcom/coui/appcompat/dialog/app/AlertController;->mListView:Landroid/widget/ListView;

    goto :goto_6

    :cond_b
    iget-object v1, v0, Lcom/coui/appcompat/dialog/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    .line 622
    .local v1, "content":Landroid/view/View;
    :goto_6
    if-eqz v1, :cond_e

    .line 623
    if-eqz v13, :cond_c

    const/16 v16, 0x1

    goto :goto_7

    :cond_c
    move/from16 v16, v14

    :goto_7
    if-eqz v12, :cond_d

    const/4 v14, 0x2

    nop

    :cond_d
    or-int v14, v16, v14

    .line 625
    .local v14, "indicators":I
    move-object/from16 v18, v2

    .end local v2    # "defaultTopPanel":Landroid/view/View;
    .local v18, "defaultTopPanel":Landroid/view/View;
    const/4 v2, 0x3

    invoke-direct {v0, v10, v1, v14, v2}, Lcom/coui/appcompat/dialog/app/AlertController;->setScrollIndicators(Landroid/view/ViewGroup;Landroid/view/View;II)V

    goto :goto_8

    .line 630
    .end local v1    # "content":Landroid/view/View;
    .end local v14    # "indicators":I
    .end local v18    # "defaultTopPanel":Landroid/view/View;
    .restart local v2    # "defaultTopPanel":Landroid/view/View;
    :cond_e
    move-object/from16 v18, v2

    .end local v2    # "defaultTopPanel":Landroid/view/View;
    .restart local v18    # "defaultTopPanel":Landroid/view/View;
    :goto_8
    iget-object v1, v0, Lcom/coui/appcompat/dialog/app/AlertController;->mListView:Landroid/widget/ListView;

    .line 631
    .local v1, "listView":Landroid/widget/ListView;
    if-eqz v1, :cond_f

    iget-object v2, v0, Lcom/coui/appcompat/dialog/app/AlertController;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v2, :cond_f

    .line 632
    iget-object v2, v0, Lcom/coui/appcompat/dialog/app/AlertController;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 633
    iget v2, v0, Lcom/coui/appcompat/dialog/app/AlertController;->mCheckedItem:I

    .line 634
    .local v2, "checkedItem":I
    const/4 v14, -0x1

    if-le v2, v14, :cond_f

    .line 635
    const/4 v14, 0x1

    invoke-virtual {v1, v2, v14}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 636
    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setSelection(I)V

    .line 639
    .end local v2    # "checkedItem":I
    :cond_f
    return-void
.end method
