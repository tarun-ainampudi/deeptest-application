.class Lcom/coui/appcompat/widget/COUIBaseSpinner;
.super Lcom/coui/appcompat/widget/COUIAbsSpinner;
.source "COUIBaseSpinner.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/widget/COUIBaseSpinner$DropdownPopup;,
        Lcom/coui/appcompat/widget/COUIBaseSpinner$DialogPopup;,
        Lcom/coui/appcompat/widget/COUIBaseSpinner$SpinnerPopup;,
        Lcom/coui/appcompat/widget/COUIBaseSpinner$DropDownAdapter;,
        Lcom/coui/appcompat/widget/COUIBaseSpinner$SavedState;
    }
.end annotation


# static fields
.field private static final MAX_ITEMS_MEASURED:I = 0xf

.field public static final MODE_DIALOG:I = 0x0

.field public static final MODE_DROPDOWN:I = 0x1

.field private static final MODE_THEME:I = -0x1

.field private static final TAG:Ljava/lang/String; = "COUIBaseSpinner"


# instance fields
.field private mDisableChildrenWhenDisabled:Z

.field mDropDownWidth:I

.field protected mForwardingListener:Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow$ForwardingListener;

.field private mGravity:I

.field mPopup:Lcom/coui/appcompat/widget/COUIBaseSpinner$SpinnerPopup;

.field private mTempAdapter:Lcom/coui/appcompat/widget/COUIBaseSpinner$DropDownAdapter;

.field private mTempRect:Landroid/graphics/Rect;

.field private final mTintManager:Lcom/coui/appcompat/util/COUITintManager;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 105
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/widget/COUIBaseSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 106
    return-void
.end method

.method constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mode"    # I

    .line 119
    sget v0, Lcoui/support/appcompat/R$attr;->spinnerStyle:I

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0, p2}, Lcom/coui/appcompat/widget/COUIBaseSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 120
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 130
    sget v0, Lcoui/support/appcompat/R$attr;->spinnerStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/widget/COUIBaseSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 131
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 146
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/coui/appcompat/widget/COUIBaseSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 147
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I
    .param p4, "mode"    # I

    .line 166
    invoke-direct {p0, p1, p2, p3}, Lcom/coui/appcompat/widget/COUIAbsSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 94
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUIBaseSpinner;->mTempRect:Landroid/graphics/Rect;

    .line 168
    sget-object v0, Lcoui/support/appcompat/R$styleable;->COUISpinner:[I

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, p3, v1}, Landroidx/appcompat/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroidx/appcompat/widget/TintTypedArray;

    move-result-object v0

    .line 172
    .local v0, "a":Landroidx/appcompat/widget/TintTypedArray;
    sget v2, Lcoui/support/appcompat/R$styleable;->COUISpinner_android_background:I

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 173
    sget v2, Lcoui/support/appcompat/R$styleable;->COUISpinner_android_background:I

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/coui/appcompat/widget/COUIBaseSpinner;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 176
    :cond_0
    const/4 v2, -0x1

    if-ne p4, v2, :cond_1

    .line 177
    sget v2, Lcoui/support/appcompat/R$styleable;->COUISpinner_supportSpinnerMode:I

    invoke-virtual {v0, v2, v1}, Landroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    move-result p4

    .line 180
    :cond_1
    const/4 v2, 0x0

    packed-switch p4, :pswitch_data_0

    goto :goto_0

    .line 187
    :pswitch_0
    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/coui/appcompat/widget/COUIBaseSpinner;->createDropdownPopup(Landroid/content/Context;Landroid/util/AttributeSet;II)Lcom/coui/appcompat/widget/COUIBaseSpinner$DropdownPopup;

    move-result-object v3

    .line 189
    .local v3, "popup":Lcom/coui/appcompat/widget/COUIBaseSpinner$DropdownPopup;
    sget v4, Lcoui/support/appcompat/R$styleable;->COUISpinner_android_dropDownWidth:I

    const/4 v5, -0x2

    invoke-virtual {v0, v4, v5}, Landroidx/appcompat/widget/TintTypedArray;->getLayoutDimension(II)I

    move-result v4

    iput v4, p0, Lcom/coui/appcompat/widget/COUIBaseSpinner;->mDropDownWidth:I

    .line 192
    sget v4, Lcoui/support/appcompat/R$styleable;->COUISpinner_android_popupBackground:I

    .line 193
    invoke-virtual {v0, v4}, Landroidx/appcompat/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 192
    invoke-virtual {v3, v4}, Lcom/coui/appcompat/widget/COUIBaseSpinner$DropdownPopup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 195
    iput-object v3, p0, Lcom/coui/appcompat/widget/COUIBaseSpinner;->mPopup:Lcom/coui/appcompat/widget/COUIBaseSpinner$SpinnerPopup;

    .line 196
    new-instance v4, Lcom/coui/appcompat/widget/COUIBaseSpinner$1;

    invoke-direct {v4, p0, p0, v3}, Lcom/coui/appcompat/widget/COUIBaseSpinner$1;-><init>(Lcom/coui/appcompat/widget/COUIBaseSpinner;Landroid/view/View;Lcom/coui/appcompat/widget/COUIBaseSpinner$DropdownPopup;)V

    iput-object v4, p0, Lcom/coui/appcompat/widget/COUIBaseSpinner;->mForwardingListener:Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow$ForwardingListener;

    .line 210
    goto :goto_0

    .line 182
    .end local v3    # "popup":Lcom/coui/appcompat/widget/COUIBaseSpinner$DropdownPopup;
    :pswitch_1
    new-instance v3, Lcom/coui/appcompat/widget/COUIBaseSpinner$DialogPopup;

    invoke-direct {v3, p0, v2}, Lcom/coui/appcompat/widget/COUIBaseSpinner$DialogPopup;-><init>(Lcom/coui/appcompat/widget/COUIBaseSpinner;Lcom/coui/appcompat/widget/COUIBaseSpinner$1;)V

    iput-object v3, p0, Lcom/coui/appcompat/widget/COUIBaseSpinner;->mPopup:Lcom/coui/appcompat/widget/COUIBaseSpinner$SpinnerPopup;

    .line 183
    nop

    .line 214
    :goto_0
    sget v3, Lcoui/support/appcompat/R$styleable;->COUISpinner_android_gravity:I

    const/16 v4, 0x11

    invoke-virtual {v0, v3, v4}, Landroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Lcom/coui/appcompat/widget/COUIBaseSpinner;->mGravity:I

    .line 216
    iget-object v3, p0, Lcom/coui/appcompat/widget/COUIBaseSpinner;->mPopup:Lcom/coui/appcompat/widget/COUIBaseSpinner$SpinnerPopup;

    if-eqz v3, :cond_2

    .line 217
    iget-object v3, p0, Lcom/coui/appcompat/widget/COUIBaseSpinner;->mPopup:Lcom/coui/appcompat/widget/COUIBaseSpinner$SpinnerPopup;

    sget v4, Lcoui/support/appcompat/R$styleable;->COUISpinner_supportPrompt:I

    invoke-virtual {v0, v4}, Landroidx/appcompat/widget/TintTypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/coui/appcompat/widget/COUIBaseSpinner$SpinnerPopup;->setPromptText(Ljava/lang/CharSequence;)V

    .line 220
    :cond_2
    sget v3, Lcoui/support/appcompat/R$styleable;->COUISpinner_supportDisableChildrenWhenDisabled:I

    invoke-virtual {v0, v3, v1}, Landroidx/appcompat/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/coui/appcompat/widget/COUIBaseSpinner;->mDisableChildrenWhenDisabled:Z

    .line 223
    invoke-virtual {v0}, Landroidx/appcompat/widget/TintTypedArray;->recycle()V

    .line 227
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIBaseSpinner;->mTempAdapter:Lcom/coui/appcompat/widget/COUIBaseSpinner$DropDownAdapter;

    if-eqz v1, :cond_3

    .line 228
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIBaseSpinner;->mPopup:Lcom/coui/appcompat/widget/COUIBaseSpinner$SpinnerPopup;

    iget-object v3, p0, Lcom/coui/appcompat/widget/COUIBaseSpinner;->mTempAdapter:Lcom/coui/appcompat/widget/COUIBaseSpinner$DropDownAdapter;

    invoke-interface {v1, v3}, Lcom/coui/appcompat/widget/COUIBaseSpinner$SpinnerPopup;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 229
    iput-object v2, p0, Lcom/coui/appcompat/widget/COUIBaseSpinner;->mTempAdapter:Lcom/coui/appcompat/widget/COUIBaseSpinner$DropDownAdapter;

    .line 233
    :cond_3
    invoke-static {p1}, Lcom/coui/appcompat/util/COUITintManager;->get(Landroid/content/Context;)Lcom/coui/appcompat/util/COUITintManager;

    move-result-object v1

    iput-object v1, p0, Lcom/coui/appcompat/widget/COUIBaseSpinner;->mTintManager:Lcom/coui/appcompat/util/COUITintManager;

    .line 234
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic access$200(Lcom/coui/appcompat/widget/COUIBaseSpinner;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUIBaseSpinner;

    .line 58
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIBaseSpinner;->mTempRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method private makeView(IZ)Landroid/view/View;
    .locals 2
    .param p1, "position"    # I
    .param p2, "addChild"    # Z

    .line 536
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/COUIBaseSpinner;->mDataChanged:Z

    if-nez v0, :cond_0

    .line 537
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIBaseSpinner;->mRecycler:Lcom/coui/appcompat/widget/COUIAbsSpinner$RecycleBin;

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/widget/COUIAbsSpinner$RecycleBin;->get(I)Landroid/view/View;

    move-result-object v0

    .line 538
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 540
    invoke-direct {p0, v0, p2}, Lcom/coui/appcompat/widget/COUIBaseSpinner;->setUpChild(Landroid/view/View;Z)V

    .line 542
    return-object v0

    .line 547
    .end local v0    # "child":Landroid/view/View;
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIBaseSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1, p0}, Landroid/widget/SpinnerAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 550
    .restart local v0    # "child":Landroid/view/View;
    invoke-direct {p0, v0, p2}, Lcom/coui/appcompat/widget/COUIBaseSpinner;->setUpChild(Landroid/view/View;Z)V

    .line 552
    return-object v0
.end method

.method private setUpChild(Landroid/view/View;Z)V
    .locals 8
    .param p1, "child"    # Landroid/view/View;
    .param p2, "addChild"    # Z

    .line 565
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 566
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    if-nez v0, :cond_0

    .line 567
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIBaseSpinner;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 570
    :cond_0
    if-eqz p2, :cond_1

    .line 571
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/coui/appcompat/widget/COUIBaseSpinner;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    .line 574
    :cond_1
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIBaseSpinner;->hasFocus()Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setSelected(Z)V

    .line 575
    iget-boolean v1, p0, Lcom/coui/appcompat/widget/COUIBaseSpinner;->mDisableChildrenWhenDisabled:Z

    if-eqz v1, :cond_2

    .line 576
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIBaseSpinner;->isEnabled()Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 580
    :cond_2
    iget v1, p0, Lcom/coui/appcompat/widget/COUIBaseSpinner;->mHeightMeasureSpec:I

    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIBaseSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/coui/appcompat/widget/COUIBaseSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v3

    iget v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v1, v2, v3}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 582
    .local v1, "childHeightSpec":I
    iget v2, p0, Lcom/coui/appcompat/widget/COUIBaseSpinner;->mWidthMeasureSpec:I

    iget-object v3, p0, Lcom/coui/appcompat/widget/COUIBaseSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Lcom/coui/appcompat/widget/COUIBaseSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v4

    iget v4, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v2, v3, v4}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v2

    .line 586
    .local v2, "childWidthSpec":I
    invoke-virtual {p1, v2, v1}, Landroid/view/View;->measure(II)V

    .line 592
    iget-object v3, p0, Lcom/coui/appcompat/widget/COUIBaseSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    .line 593
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIBaseSpinner;->getMeasuredHeight()I

    move-result v4

    iget-object v5, p0, Lcom/coui/appcompat/widget/COUIBaseSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v5

    iget-object v5, p0, Lcom/coui/appcompat/widget/COUIBaseSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    .line 594
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    .line 595
    .local v3, "childTop":I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v4, v3

    .line 597
    .local v4, "childBottom":I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    .line 598
    .local v5, "width":I
    const/4 v6, 0x0

    .line 599
    .local v6, "childLeft":I
    add-int v7, v6, v5

    .line 601
    .local v7, "childRight":I
    invoke-virtual {p1, v6, v3, v7, v4}, Landroid/view/View;->layout(IIII)V

    .line 602
    return-void
.end method


# virtual methods
.method createDropdownPopup(Landroid/content/Context;Landroid/util/AttributeSet;II)Lcom/coui/appcompat/widget/COUIBaseSpinner$DropdownPopup;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 1125
    new-instance v6, Lcom/coui/appcompat/widget/COUIBaseSpinner$DropdownPopup;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/coui/appcompat/widget/COUIBaseSpinner$DropdownPopup;-><init>(Lcom/coui/appcompat/widget/COUIBaseSpinner;Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-object v6
.end method

.method public getBaseline()I
    .locals 3

    .line 387
    const/4 v0, 0x0

    .line 389
    .local v0, "child":Landroid/view/View;
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIBaseSpinner;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_0

    .line 390
    invoke-virtual {p0, v2}, Lcom/coui/appcompat/widget/COUIBaseSpinner;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 391
    :cond_0
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIBaseSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIBaseSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v1}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 392
    invoke-direct {p0, v2, v2}, Lcom/coui/appcompat/widget/COUIBaseSpinner;->makeView(IZ)Landroid/view/View;

    move-result-object v0

    .line 393
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIBaseSpinner;->mRecycler:Lcom/coui/appcompat/widget/COUIAbsSpinner$RecycleBin;

    invoke-virtual {v1, v2, v0}, Lcom/coui/appcompat/widget/COUIAbsSpinner$RecycleBin;->put(ILandroid/view/View;)V

    .line 396
    :cond_1
    :goto_0
    const/4 v1, -0x1

    if-eqz v0, :cond_3

    .line 397
    invoke-virtual {v0}, Landroid/view/View;->getBaseline()I

    move-result v2

    .line 398
    .local v2, "childBaseline":I
    if-ltz v2, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v1

    add-int/2addr v1, v2

    nop

    :cond_2
    return v1

    .line 400
    .end local v2    # "childBaseline":I
    :cond_3
    return v1
.end method

.method public getDropDownHorizontalOffset()I
    .locals 1

    .line 307
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIBaseSpinner;->mPopup:Lcom/coui/appcompat/widget/COUIBaseSpinner$SpinnerPopup;

    invoke-interface {v0}, Lcom/coui/appcompat/widget/COUIBaseSpinner$SpinnerPopup;->getHorizontalOffset()I

    move-result v0

    return v0
.end method

.method public getDropDownVerticalOffset()I
    .locals 1

    .line 287
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIBaseSpinner;->mPopup:Lcom/coui/appcompat/widget/COUIBaseSpinner$SpinnerPopup;

    invoke-interface {v0}, Lcom/coui/appcompat/widget/COUIBaseSpinner$SpinnerPopup;->getVerticalOffset()I

    move-result v0

    return v0
.end method

.method public getDropDownWidth()I
    .locals 1

    .line 337
    iget v0, p0, Lcom/coui/appcompat/widget/COUIBaseSpinner;->mDropDownWidth:I

    return v0
.end method

.method public getPopupBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 267
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIBaseSpinner;->mPopup:Lcom/coui/appcompat/widget/COUIBaseSpinner$SpinnerPopup;

    invoke-interface {v0}, Lcom/coui/appcompat/widget/COUIBaseSpinner$SpinnerPopup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getPrompt()Ljava/lang/CharSequence;
    .locals 1

    .line 644
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIBaseSpinner;->mPopup:Lcom/coui/appcompat/widget/COUIBaseSpinner$SpinnerPopup;

    invoke-interface {v0}, Lcom/coui/appcompat/widget/COUIBaseSpinner$SpinnerPopup;->getHintText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method layout(IZ)V
    .locals 9
    .param p1, "delta"    # I
    .param p2, "animate"    # Z

    .line 470
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIBaseSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    .line 471
    .local v0, "childrenLeft":I
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIBaseSpinner;->getRight()I

    move-result v1

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIBaseSpinner;->getLeft()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIBaseSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIBaseSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    .line 473
    .local v1, "childrenWidth":I
    iget-boolean v2, p0, Lcom/coui/appcompat/widget/COUIBaseSpinner;->mDataChanged:Z

    if-eqz v2, :cond_0

    .line 474
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIBaseSpinner;->handleDataChanged()V

    .line 478
    :cond_0
    iget v2, p0, Lcom/coui/appcompat/widget/COUIBaseSpinner;->mItemCount:I

    if-nez v2, :cond_1

    .line 479
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIBaseSpinner;->resetList()V

    .line 480
    return-void

    .line 483
    :cond_1
    iget v2, p0, Lcom/coui/appcompat/widget/COUIBaseSpinner;->mNextSelectedPosition:I

    if-ltz v2, :cond_2

    .line 484
    iget v2, p0, Lcom/coui/appcompat/widget/COUIBaseSpinner;->mNextSelectedPosition:I

    invoke-virtual {p0, v2}, Lcom/coui/appcompat/widget/COUIBaseSpinner;->setSelectedPositionInt(I)V

    .line 487
    :cond_2
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIBaseSpinner;->recycleAllViews()V

    .line 490
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIBaseSpinner;->removeAllViewsInLayout()V

    .line 493
    iget v2, p0, Lcom/coui/appcompat/widget/COUIBaseSpinner;->mSelectedPosition:I

    iput v2, p0, Lcom/coui/appcompat/widget/COUIBaseSpinner;->mFirstPosition:I

    .line 494
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIBaseSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    if-eqz v2, :cond_5

    .line 495
    iget v2, p0, Lcom/coui/appcompat/widget/COUIBaseSpinner;->mSelectedPosition:I

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lcom/coui/appcompat/widget/COUIBaseSpinner;->makeView(IZ)Landroid/view/View;

    move-result-object v2

    .line 496
    .local v2, "sel":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    .line 497
    .local v4, "width":I
    move v5, v0

    .line 498
    .local v5, "selectedOffset":I
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v6

    .line 499
    .local v6, "layoutDirection":I
    iget v7, p0, Lcom/coui/appcompat/widget/COUIBaseSpinner;->mGravity:I

    invoke-static {v7, v6}, Landroidx/core/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v7

    .line 500
    .local v7, "absoluteGravity":I
    and-int/lit8 v8, v7, 0x7

    if-eq v8, v3, :cond_4

    const/4 v3, 0x5

    if-eq v8, v3, :cond_3

    goto :goto_0

    .line 505
    :cond_3
    add-int v3, v0, v1

    sub-int v5, v3, v4

    goto :goto_0

    .line 502
    :cond_4
    div-int/lit8 v3, v1, 0x2

    add-int/2addr v3, v0

    div-int/lit8 v8, v4, 0x2

    sub-int v5, v3, v8

    .line 503
    nop

    .line 508
    :goto_0
    invoke-virtual {v2, v5}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 512
    .end local v2    # "sel":Landroid/view/View;
    .end local v4    # "width":I
    .end local v5    # "selectedOffset":I
    .end local v6    # "layoutDirection":I
    .end local v7    # "absoluteGravity":I
    :cond_5
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIBaseSpinner;->mRecycler:Lcom/coui/appcompat/widget/COUIAbsSpinner$RecycleBin;

    invoke-virtual {v2}, Lcom/coui/appcompat/widget/COUIAbsSpinner$RecycleBin;->clear()V

    .line 514
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIBaseSpinner;->invalidate()V

    .line 516
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIBaseSpinner;->checkSelectionChanged()V

    .line 518
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/coui/appcompat/widget/COUIBaseSpinner;->mDataChanged:Z

    .line 519
    iput-boolean v2, p0, Lcom/coui/appcompat/widget/COUIBaseSpinner;->mNeedSync:Z

    .line 520
    iget v2, p0, Lcom/coui/appcompat/widget/COUIBaseSpinner;->mSelectedPosition:I

    invoke-virtual {p0, v2}, Lcom/coui/appcompat/widget/COUIBaseSpinner;->setNextSelectedPositionInt(I)V

    .line 521
    return-void
.end method

.method measureContentWidth(Landroid/widget/SpinnerAdapter;Landroid/graphics/drawable/Drawable;)I
    .locals 12
    .param p1, "adapter"    # Landroid/widget/SpinnerAdapter;
    .param p2, "background"    # Landroid/graphics/drawable/Drawable;

    .line 648
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 649
    return v0

    .line 652
    :cond_0
    const/4 v1, 0x0

    .line 653
    .local v1, "width":I
    const/4 v2, 0x0

    .line 654
    .local v2, "itemView":Landroid/view/View;
    const/4 v3, 0x0

    .line 655
    .local v3, "itemType":I
    nop

    .line 656
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 657
    .local v4, "widthMeasureSpec":I
    nop

    .line 658
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 662
    .local v5, "heightMeasureSpec":I
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIBaseSpinner;->getSelectedItemPosition()I

    move-result v6

    invoke-static {v0, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 663
    .local v6, "start":I
    invoke-interface {p1}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v7

    add-int/lit8 v8, v6, 0xf

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 664
    .local v7, "end":I
    sub-int v8, v7, v6

    .line 665
    .local v8, "count":I
    rsub-int/lit8 v9, v8, 0xf

    sub-int v9, v6, v9

    invoke-static {v0, v9}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 666
    .end local v6    # "start":I
    .local v0, "start":I
    move v6, v1

    move v1, v0

    .local v1, "i":I
    .local v6, "width":I
    :goto_0
    if-ge v1, v7, :cond_3

    .line 667
    invoke-interface {p1, v1}, Landroid/widget/SpinnerAdapter;->getItemViewType(I)I

    move-result v9

    .line 668
    .local v9, "positionType":I
    if-eq v9, v3, :cond_1

    .line 669
    move v3, v9

    .line 670
    const/4 v2, 0x0

    .line 672
    :cond_1
    invoke-interface {p1, v1, v2, p0}, Landroid/widget/SpinnerAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 673
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    if-nez v10, :cond_2

    .line 674
    new-instance v10, Landroid/view/ViewGroup$LayoutParams;

    const/4 v11, -0x2

    invoke-direct {v10, v11, v11}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v10}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 678
    :cond_2
    invoke-virtual {v2, v4, v5}, Landroid/view/View;->measure(II)V

    .line 679
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    invoke-static {v6, v10}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 666
    .end local v9    # "positionType":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 683
    .end local v1    # "i":I
    :cond_3
    if-eqz p2, :cond_4

    .line 684
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIBaseSpinner;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 685
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIBaseSpinner;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v9, p0, Lcom/coui/appcompat/widget/COUIBaseSpinner;->mTempRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v9

    add-int/2addr v6, v1

    .line 688
    :cond_4
    return v6
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 620
    invoke-virtual {p0, p2}, Lcom/coui/appcompat/widget/COUIBaseSpinner;->setSelection(I)V

    .line 621
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 622
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 406
    invoke-super {p0}, Lcom/coui/appcompat/widget/COUIAbsSpinner;->onDetachedFromWindow()V

    .line 408
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIBaseSpinner;->mPopup:Lcom/coui/appcompat/widget/COUIBaseSpinner$SpinnerPopup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIBaseSpinner;->mPopup:Lcom/coui/appcompat/widget/COUIBaseSpinner$SpinnerPopup;

    invoke-interface {v0}, Lcom/coui/appcompat/widget/COUIBaseSpinner$SpinnerPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 409
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIBaseSpinner;->mPopup:Lcom/coui/appcompat/widget/COUIBaseSpinner$SpinnerPopup;

    invoke-interface {v0}, Lcom/coui/appcompat/widget/COUIBaseSpinner$SpinnerPopup;->dismiss()V

    .line 411
    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .line 456
    invoke-super/range {p0 .. p5}, Lcom/coui/appcompat/widget/COUIAbsSpinner;->onLayout(ZIIII)V

    .line 457
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coui/appcompat/widget/COUIBaseSpinner;->mInLayout:Z

    .line 458
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/coui/appcompat/widget/COUIBaseSpinner;->layout(IZ)V

    .line 459
    iput-boolean v0, p0, Lcom/coui/appcompat/widget/COUIBaseSpinner;->mInLayout:Z

    .line 460
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 439
    invoke-super {p0, p1, p2}, Lcom/coui/appcompat/widget/COUIAbsSpinner;->onMeasure(II)V

    .line 440
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIBaseSpinner;->mPopup:Lcom/coui/appcompat/widget/COUIBaseSpinner$SpinnerPopup;

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_0

    .line 441
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIBaseSpinner;->getMeasuredWidth()I

    move-result v0

    .line 442
    .local v0, "measuredWidth":I
    nop

    .line 443
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIBaseSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v1

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIBaseSpinner;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/coui/appcompat/widget/COUIBaseSpinner;->measureContentWidth(Landroid/widget/SpinnerAdapter;Landroid/graphics/drawable/Drawable;)I

    move-result v1

    .line 442
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 444
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 442
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 445
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIBaseSpinner;->getMeasuredHeight()I

    move-result v2

    .line 442
    invoke-virtual {p0, v1, v2}, Lcom/coui/appcompat/widget/COUIBaseSpinner;->setMeasuredDimension(II)V

    .line 447
    .end local v0    # "measuredWidth":I
    :cond_0
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Parcelable;

    .line 700
    move-object v0, p1

    check-cast v0, Lcom/coui/appcompat/widget/COUIBaseSpinner$SavedState;

    .line 702
    .local v0, "ss":Lcom/coui/appcompat/widget/COUIBaseSpinner$SavedState;
    invoke-virtual {v0}, Lcom/coui/appcompat/widget/COUIBaseSpinner$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Lcom/coui/appcompat/widget/COUIAbsSpinner;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 704
    iget-boolean v1, v0, Lcom/coui/appcompat/widget/COUIBaseSpinner$SavedState;->showDropdown:Z

    if-eqz v1, :cond_0

    .line 705
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIBaseSpinner;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    .line 706
    .local v1, "vto":Landroid/view/ViewTreeObserver;
    if-eqz v1, :cond_0

    .line 707
    new-instance v2, Lcom/coui/appcompat/widget/COUIBaseSpinner$2;

    invoke-direct {v2, p0}, Lcom/coui/appcompat/widget/COUIBaseSpinner$2;-><init>(Lcom/coui/appcompat/widget/COUIBaseSpinner;)V

    .line 720
    .local v2, "listener":Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 723
    .end local v1    # "vto":Landroid/view/ViewTreeObserver;
    .end local v2    # "listener":Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    :cond_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 693
    new-instance v0, Lcom/coui/appcompat/widget/COUIBaseSpinner$SavedState;

    invoke-super {p0}, Lcom/coui/appcompat/widget/COUIAbsSpinner;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/coui/appcompat/widget/COUIBaseSpinner$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 694
    .local v0, "ss":Lcom/coui/appcompat/widget/COUIBaseSpinner$SavedState;
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIBaseSpinner;->mPopup:Lcom/coui/appcompat/widget/COUIBaseSpinner$SpinnerPopup;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIBaseSpinner;->mPopup:Lcom/coui/appcompat/widget/COUIBaseSpinner$SpinnerPopup;

    invoke-interface {v1}, Lcom/coui/appcompat/widget/COUIBaseSpinner$SpinnerPopup;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, v0, Lcom/coui/appcompat/widget/COUIBaseSpinner$SavedState;->showDropdown:Z

    .line 695
    return-object v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 430
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIBaseSpinner;->mForwardingListener:Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow$ForwardingListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIBaseSpinner;->mForwardingListener:Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow$ForwardingListener;

    invoke-virtual {v0, p0, p1}, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow$ForwardingListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 431
    const/4 v0, 0x1

    return v0

    .line 434
    :cond_0
    invoke-super {p0, p1}, Lcom/coui/appcompat/widget/COUIAbsSpinner;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public performClick()Z
    .locals 4

    .line 606
    invoke-super {p0}, Lcom/coui/appcompat/widget/COUIAbsSpinner;->performClick()Z

    move-result v0

    .line 608
    .local v0, "handled":Z
    if-nez v0, :cond_0

    .line 609
    const/4 v0, 0x1

    .line 611
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIBaseSpinner;->mPopup:Lcom/coui/appcompat/widget/COUIBaseSpinner$SpinnerPopup;

    invoke-interface {v1}, Lcom/coui/appcompat/widget/COUIBaseSpinner$SpinnerPopup;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 612
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIBaseSpinner;->mPopup:Lcom/coui/appcompat/widget/COUIBaseSpinner$SpinnerPopup;

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIBaseSpinner;->getTextDirection()I

    move-result v2

    invoke-static {p0}, Lcom/coui/appcompat/widget/COUIViewCompat;->getTextAlignment(Landroid/view/View;)I

    move-result v3

    invoke-interface {v1, v2, v3}, Lcom/coui/appcompat/widget/COUIBaseSpinner$SpinnerPopup;->show(II)V

    .line 616
    :cond_0
    return v0
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    .line 58
    check-cast p1, Landroid/widget/SpinnerAdapter;

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/widget/COUIBaseSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/SpinnerAdapter;)V
    .locals 3
    .param p1, "adapter"    # Landroid/widget/SpinnerAdapter;

    .line 369
    invoke-super {p0, p1}, Lcom/coui/appcompat/widget/COUIAbsSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 371
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIBaseSpinner;->mRecycler:Lcom/coui/appcompat/widget/COUIAbsSpinner$RecycleBin;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/COUIAbsSpinner$RecycleBin;->clear()V

    .line 373
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIBaseSpinner;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 374
    .local v0, "targetSdkVersion":I
    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    if-eqz p1, :cond_1

    .line 375
    invoke-interface {p1}, Landroid/widget/SpinnerAdapter;->getViewTypeCount()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 376
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Spinner adapter view type count must be 1"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 378
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIBaseSpinner;->mPopup:Lcom/coui/appcompat/widget/COUIBaseSpinner$SpinnerPopup;

    if-eqz v1, :cond_2

    .line 379
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIBaseSpinner;->mPopup:Lcom/coui/appcompat/widget/COUIBaseSpinner$SpinnerPopup;

    new-instance v2, Lcom/coui/appcompat/widget/COUIBaseSpinner$DropDownAdapter;

    invoke-direct {v2, p1}, Lcom/coui/appcompat/widget/COUIBaseSpinner$DropDownAdapter;-><init>(Landroid/widget/SpinnerAdapter;)V

    invoke-interface {v1, v2}, Lcom/coui/appcompat/widget/COUIBaseSpinner$SpinnerPopup;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_1

    .line 381
    :cond_2
    new-instance v1, Lcom/coui/appcompat/widget/COUIBaseSpinner$DropDownAdapter;

    invoke-direct {v1, p1}, Lcom/coui/appcompat/widget/COUIBaseSpinner$DropDownAdapter;-><init>(Landroid/widget/SpinnerAdapter;)V

    iput-object v1, p0, Lcom/coui/appcompat/widget/COUIBaseSpinner;->mTempAdapter:Lcom/coui/appcompat/widget/COUIBaseSpinner$DropDownAdapter;

    .line 383
    :goto_1
    return-void
.end method

.method public setDropDownHorizontalOffset(I)V
    .locals 1
    .param p1, "pixels"    # I

    .line 297
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIBaseSpinner;->mPopup:Lcom/coui/appcompat/widget/COUIBaseSpinner$SpinnerPopup;

    invoke-interface {v0, p1}, Lcom/coui/appcompat/widget/COUIBaseSpinner$SpinnerPopup;->setHorizontalOffset(I)V

    .line 298
    return-void
.end method

.method public setDropDownVerticalOffset(I)V
    .locals 1
    .param p1, "pixels"    # I

    .line 277
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIBaseSpinner;->mPopup:Lcom/coui/appcompat/widget/COUIBaseSpinner$SpinnerPopup;

    invoke-interface {v0, p1}, Lcom/coui/appcompat/widget/COUIBaseSpinner$SpinnerPopup;->setVerticalOffset(I)V

    .line 278
    return-void
.end method

.method public setDropDownWidth(I)V
    .locals 2
    .param p1, "pixels"    # I

    .line 321
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIBaseSpinner;->mPopup:Lcom/coui/appcompat/widget/COUIBaseSpinner$SpinnerPopup;

    instance-of v0, v0, Lcom/coui/appcompat/widget/COUIBaseSpinner$DropdownPopup;

    if-nez v0, :cond_0

    .line 322
    const-string v0, "COUIBaseSpinner"

    const-string v1, "Cannot set dropdown width for MODE_DIALOG, ignoring"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    return-void

    .line 325
    :cond_0
    iput p1, p0, Lcom/coui/appcompat/widget/COUIBaseSpinner;->mDropDownWidth:I

    .line 326
    return-void
.end method

.method public setEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .line 342
    invoke-super {p0, p1}, Lcom/coui/appcompat/widget/COUIAbsSpinner;->setEnabled(Z)V

    .line 343
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/COUIBaseSpinner;->mDisableChildrenWhenDisabled:Z

    if-eqz v0, :cond_0

    .line 344
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIBaseSpinner;->getChildCount()I

    move-result v0

    .line 345
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 346
    invoke-virtual {p0, v1}, Lcom/coui/appcompat/widget/COUIBaseSpinner;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 345
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 349
    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public setGravity(I)V
    .locals 1
    .param p1, "gravity"    # I

    .line 358
    iget v0, p0, Lcom/coui/appcompat/widget/COUIBaseSpinner;->mGravity:I

    if-eq v0, p1, :cond_1

    .line 359
    and-int/lit8 v0, p1, 0x7

    if-nez v0, :cond_0

    .line 360
    const v0, 0x800003

    or-int/2addr p1, v0

    .line 362
    :cond_0
    iput p1, p0, Lcom/coui/appcompat/widget/COUIBaseSpinner;->mGravity:I

    .line 363
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIBaseSpinner;->requestLayout()V

    .line 365
    :cond_1
    return-void
.end method

.method public setOnItemClickListener(Lcom/coui/appcompat/widget/COUIAdapterView$OnItemClickListener;)V
    .locals 2
    .param p1, "l"    # Lcom/coui/appcompat/widget/COUIAdapterView$OnItemClickListener;

    .line 421
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "setOnItemClickListener cannot be used with a spinner."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method setOnItemClickListenerInt(Lcom/coui/appcompat/widget/COUIAdapterView$OnItemClickListener;)V
    .locals 0
    .param p1, "l"    # Lcom/coui/appcompat/widget/COUIAdapterView$OnItemClickListener;

    .line 425
    invoke-super {p0, p1}, Lcom/coui/appcompat/widget/COUIAbsSpinner;->setOnItemClickListener(Lcom/coui/appcompat/widget/COUIAdapterView$OnItemClickListener;)V

    .line 426
    return-void
.end method

.method public setPopupBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "background"    # Landroid/graphics/drawable/Drawable;

    .line 243
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIBaseSpinner;->mPopup:Lcom/coui/appcompat/widget/COUIBaseSpinner$SpinnerPopup;

    instance-of v0, v0, Lcom/coui/appcompat/widget/COUIBaseSpinner$DropdownPopup;

    if-nez v0, :cond_0

    .line 244
    const-string v0, "COUIBaseSpinner"

    const-string v1, "setPopupBackgroundDrawable: incompatible spinner mode; ignoring..."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    return-void

    .line 247
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIBaseSpinner;->mPopup:Lcom/coui/appcompat/widget/COUIBaseSpinner$SpinnerPopup;

    check-cast v0, Lcom/coui/appcompat/widget/COUIBaseSpinner$DropdownPopup;

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/widget/COUIBaseSpinner$DropdownPopup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 248
    return-void
.end method

.method public setPopupBackgroundResource(I)V
    .locals 1
    .param p1, "resId"    # I

    .line 257
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIBaseSpinner;->mTintManager:Lcom/coui/appcompat/util/COUITintManager;

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/util/COUITintManager;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/COUIBaseSpinner;->setPopupBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 258
    return-void
.end method

.method public setPrompt(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "prompt"    # Ljava/lang/CharSequence;

    .line 629
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIBaseSpinner;->mPopup:Lcom/coui/appcompat/widget/COUIBaseSpinner$SpinnerPopup;

    invoke-interface {v0, p1}, Lcom/coui/appcompat/widget/COUIBaseSpinner$SpinnerPopup;->setPromptText(Ljava/lang/CharSequence;)V

    .line 630
    return-void
.end method

.method public setPromptId(I)V
    .locals 1
    .param p1, "promptId"    # I

    .line 637
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIBaseSpinner;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/COUIBaseSpinner;->setPrompt(Ljava/lang/CharSequence;)V

    .line 638
    return-void
.end method
