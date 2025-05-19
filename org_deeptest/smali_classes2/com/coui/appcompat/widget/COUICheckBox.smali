.class public Lcom/coui/appcompat/widget/COUICheckBox;
.super Landroidx/appcompat/widget/AppCompatButton;
.source "COUICheckBox.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/widget/COUICheckBox$SavedState;,
        Lcom/coui/appcompat/widget/COUICheckBox$OnStateChangeListener;
    }
.end annotation


# static fields
.field private static final ALLSELECT_SET:[I

.field private static final DEBUG:Z = false

.field private static final MAX_INDEX:I = 0x2

.field private static final PARTSELECT_SET:[I

.field public static final SELECT_ALL:I = 0x2

.field public static final SELECT_NONE:I = 0x0

.field public static final SELECT_PART:I = 0x1

.field private static final TAG:Ljava/lang/String; = "COUICheckBox"


# instance fields
.field private mBroadcasting:Z

.field private mButtonDrawable:Landroid/graphics/drawable/Drawable;

.field private mButtonResource:I

.field private mOnStateChangeListener:Lcom/coui/appcompat/widget/COUICheckBox$OnStateChangeListener;

.field private mState:I

.field private mStyle:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 72
    const/4 v0, 0x1

    new-array v1, v0, [I

    sget v2, Lcoui/support/appcompat/R$attr;->coui_state_allSelect:I

    const/4 v3, 0x0

    aput v2, v1, v3

    sput-object v1, Lcom/coui/appcompat/widget/COUICheckBox;->ALLSELECT_SET:[I

    .line 75
    new-array v0, v0, [I

    sget v1, Lcoui/support/appcompat/R$attr;->coui_state_partSelect:I

    aput v1, v0, v3

    sput-object v0, Lcom/coui/appcompat/widget/COUICheckBox;->PARTSELECT_SET:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 84
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/widget/COUICheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 85
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 91
    sget v0, Lcoui/support/appcompat/R$attr;->couiCheckBoxStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/widget/COUICheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 92
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 106
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 107
    if-eqz p2, :cond_0

    invoke-interface {p2}, Landroid/util/AttributeSet;->getStyleAttribute()I

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    invoke-interface {p2}, Landroid/util/AttributeSet;->getStyleAttribute()I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/widget/COUICheckBox;->mStyle:I

    goto :goto_0

    .line 110
    :cond_0
    iput p3, p0, Lcom/coui/appcompat/widget/COUICheckBox;->mStyle:I

    .line 112
    :goto_0
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/coui/appcompat/util/COUIDarkModeUtil;->setForceDarkAllow(Landroid/view/View;Z)V

    .line 113
    sget-object v1, Lcoui/support/appcompat/R$styleable;->COUICheckBox:[I

    invoke-virtual {p1, p2, v1, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 115
    .local v1, "a":Landroid/content/res/TypedArray;
    sget v2, Lcoui/support/appcompat/R$styleable;->COUICheckBox_couiButton:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 116
    .local v2, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_1

    .line 117
    invoke-virtual {p0, v2}, Lcom/coui/appcompat/widget/COUICheckBox;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 120
    :cond_1
    sget v3, Lcoui/support/appcompat/R$styleable;->COUICheckBox_couiCheckBoxState:I

    invoke-virtual {v1, v3, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    .line 121
    .local v0, "state":I
    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/COUICheckBox;->setState(I)V

    .line 122
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 123
    if-eqz p2, :cond_2

    .line 124
    invoke-interface {p2}, Landroid/util/AttributeSet;->getStyleAttribute()I

    move-result v3

    iput v3, p0, Lcom/coui/appcompat/widget/COUICheckBox;->mStyle:I

    .line 125
    iget v3, p0, Lcom/coui/appcompat/widget/COUICheckBox;->mStyle:I

    if-nez v3, :cond_3

    .line 126
    iput p3, p0, Lcom/coui/appcompat/widget/COUICheckBox;->mStyle:I

    goto :goto_1

    .line 129
    :cond_2
    iput p3, p0, Lcom/coui/appcompat/widget/COUICheckBox;->mStyle:I

    .line 131
    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 2

    .line 343
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatButton;->drawableStateChanged()V

    .line 345
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUICheckBox;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 346
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUICheckBox;->getDrawableState()[I

    move-result-object v0

    .line 347
    .local v0, "myDrawableState":[I
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUICheckBox;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 351
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUICheckBox;->invalidate()V

    .line 353
    .end local v0    # "myDrawableState":[I
    :cond_0
    return-void
.end method

.method public getCompoundPaddingLeft()I
    .locals 3

    .line 276
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatButton;->getCompoundPaddingLeft()I

    move-result v0

    .line 277
    .local v0, "padding":I
    invoke-static {p0}, Landroidx/appcompat/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 278
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUICheckBox;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    .line 279
    .local v1, "buttonDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    .line 280
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    add-int/2addr v0, v2

    .line 283
    .end local v1    # "buttonDrawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    return v0
.end method

.method public getCompoundPaddingRight()I
    .locals 3

    .line 288
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatButton;->getCompoundPaddingRight()I

    move-result v0

    .line 289
    .local v0, "padding":I
    invoke-static {p0}, Landroidx/appcompat/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 290
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUICheckBox;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    .line 291
    .local v1, "buttonDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    .line 292
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    add-int/2addr v0, v2

    .line 295
    .end local v1    # "buttonDrawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    return v0
.end method

.method public getState()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .line 159
    iget v0, p0, Lcom/coui/appcompat/widget/COUICheckBox;->mState:I

    return v0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    .line 362
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatButton;->jumpDrawablesToCurrentState()V

    .line 363
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUICheckBox;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 364
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUICheckBox;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 365
    :cond_0
    return-void
.end method

.method protected onCreateDrawableState(I)[I
    .locals 3
    .param p1, "extraSpace"    # I

    .line 328
    add-int/lit8 v0, p1, 0x1

    invoke-super {p0, v0}, Landroidx/appcompat/widget/AppCompatButton;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 332
    .local v0, "drawableState":[I
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUICheckBox;->getState()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 333
    sget-object v1, Lcom/coui/appcompat/widget/COUICheckBox;->PARTSELECT_SET:[I

    invoke-static {v0, v1}, Lcom/coui/appcompat/widget/COUICheckBox;->mergeDrawableStates([I[I)[I

    .line 335
    :cond_0
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUICheckBox;->getState()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 336
    sget-object v1, Lcom/coui/appcompat/widget/COUICheckBox;->ALLSELECT_SET:[I

    invoke-static {v0, v1}, Lcom/coui/appcompat/widget/COUICheckBox;->mergeDrawableStates([I[I)[I

    .line 338
    :cond_1
    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 300
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatButton;->onDraw(Landroid/graphics/Canvas;)V

    .line 302
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUICheckBox;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    .line 303
    .local v0, "buttonDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_4

    .line 304
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUICheckBox;->getGravity()I

    move-result v1

    and-int/lit8 v1, v1, 0x70

    .line 305
    .local v1, "verticalGravity":I
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 306
    .local v2, "drawableHeight":I
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    .line 308
    .local v3, "drawableWidth":I
    const/4 v4, 0x0

    .line 309
    .local v4, "top":I
    const/16 v5, 0x10

    if-eq v1, v5, :cond_1

    const/16 v5, 0x50

    if-eq v1, v5, :cond_0

    goto :goto_0

    .line 311
    :cond_0
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUICheckBox;->getHeight()I

    move-result v5

    sub-int v4, v5, v2

    .line 312
    goto :goto_0

    .line 314
    :cond_1
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUICheckBox;->getHeight()I

    move-result v5

    sub-int/2addr v5, v2

    div-int/lit8 v4, v5, 0x2

    .line 317
    :goto_0
    add-int v5, v4, v2

    .line 318
    .local v5, "bottom":I
    invoke-static {p0}, Landroidx/appcompat/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUICheckBox;->getWidth()I

    move-result v6

    sub-int/2addr v6, v3

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    .line 319
    .local v6, "left":I
    :goto_1
    invoke-static {p0}, Landroidx/appcompat/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUICheckBox;->getWidth()I

    move-result v7

    goto :goto_2

    :cond_3
    move v7, v3

    .line 321
    .local v7, "right":I
    :goto_2
    invoke-virtual {v0, v6, v4, v7, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 322
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 324
    .end local v1    # "verticalGravity":I
    .end local v2    # "drawableHeight":I
    .end local v3    # "drawableWidth":I
    .end local v4    # "top":I
    .end local v5    # "bottom":I
    .end local v6    # "left":I
    .end local v7    # "right":I
    :cond_4
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 253
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatButton;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 254
    const-class v0, Lcom/coui/appcompat/widget/COUICheckBox;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 255
    iget v0, p0, Lcom/coui/appcompat/widget/COUICheckBox;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 256
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setChecked(Z)V

    goto :goto_0

    .line 258
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setChecked(Z)V

    .line 260
    :goto_0
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 3
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 264
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatButton;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 265
    const-class v0, Lcom/coui/appcompat/widget/COUICheckBox;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 266
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V

    .line 267
    iget v1, p0, Lcom/coui/appcompat/widget/COUICheckBox;->mState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 268
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setChecked(Z)V

    goto :goto_0

    .line 270
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setChecked(Z)V

    .line 272
    :goto_0
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .line 418
    move-object v0, p1

    check-cast v0, Lcom/coui/appcompat/widget/COUICheckBox$SavedState;

    .line 420
    .local v0, "ss":Lcom/coui/appcompat/widget/COUICheckBox$SavedState;
    invoke-virtual {v0}, Lcom/coui/appcompat/widget/COUICheckBox$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroidx/appcompat/widget/AppCompatButton;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 421
    iget v1, v0, Lcom/coui/appcompat/widget/COUICheckBox$SavedState;->state:I

    invoke-virtual {p0, v1}, Lcom/coui/appcompat/widget/COUICheckBox;->setState(I)V

    .line 422
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUICheckBox;->requestLayout()V

    .line 423
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .line 407
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/COUICheckBox;->setFreezesText(Z)V

    .line 408
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatButton;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 410
    .local v0, "superState":Landroid/os/Parcelable;
    new-instance v1, Lcom/coui/appcompat/widget/COUICheckBox$SavedState;

    invoke-direct {v1, v0}, Lcom/coui/appcompat/widget/COUICheckBox$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 412
    .local v1, "ss":Lcom/coui/appcompat/widget/COUICheckBox$SavedState;
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUICheckBox;->getState()I

    move-result v2

    iput v2, v1, Lcom/coui/appcompat/widget/COUICheckBox$SavedState;->state:I

    .line 413
    return-object v1
.end method

.method public performClick()Z
    .locals 1

    .line 149
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUICheckBox;->toggle()V

    .line 150
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatButton;->performClick()Z

    move-result v0

    return v0
.end method

.method public refresh()V
    .locals 7

    .line 429
    const/4 v0, 0x0

    .line 430
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUICheckBox;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/coui/appcompat/widget/COUICheckBox;->mStyle:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v1

    .line 431
    .local v1, "styleAttrType":Ljava/lang/String;
    const-string v2, "attr"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    .line 432
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUICheckBox;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v5, Lcoui/support/appcompat/R$styleable;->COUICheckBox:[I

    iget v6, p0, Lcom/coui/appcompat/widget/COUICheckBox;->mStyle:I

    invoke-virtual {v2, v4, v5, v6, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    goto :goto_0

    .line 433
    :cond_0
    const-string v2, "style"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 434
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUICheckBox;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v5, Lcoui/support/appcompat/R$styleable;->COUICheckBox:[I

    iget v6, p0, Lcom/coui/appcompat/widget/COUICheckBox;->mStyle:I

    invoke-virtual {v2, v4, v5, v3, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 436
    :cond_1
    :goto_0
    if-eqz v0, :cond_3

    .line 437
    sget v2, Lcoui/support/appcompat/R$styleable;->COUICheckBox_couiButton:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 438
    .local v2, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_2

    .line 439
    invoke-virtual {p0, v2}, Lcom/coui/appcompat/widget/COUICheckBox;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 441
    :cond_2
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 443
    .end local v2    # "d":Landroid/graphics/drawable/Drawable;
    :cond_3
    return-void
.end method

.method public setButtonDrawable(I)V
    .locals 3
    .param p1, "resid"    # I

    .line 217
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/coui/appcompat/widget/COUICheckBox;->mButtonResource:I

    if-ne p1, v0, :cond_0

    .line 218
    return-void

    .line 221
    :cond_0
    iput p1, p0, Lcom/coui/appcompat/widget/COUICheckBox;->mButtonResource:I

    .line 223
    const/4 v0, 0x0

    .line 224
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    iget v1, p0, Lcom/coui/appcompat/widget/COUICheckBox;->mButtonResource:I

    if-eqz v1, :cond_1

    .line 225
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUICheckBox;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/coui/appcompat/widget/COUICheckBox;->mButtonResource:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 227
    :cond_1
    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/COUICheckBox;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 228
    return-void
.end method

.method public setButtonDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .line 235
    if-eqz p1, :cond_2

    .line 236
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUICheckBox;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUICheckBox;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 238
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUICheckBox;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/COUICheckBox;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 240
    :cond_0
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 241
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUICheckBox;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 242
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUICheckBox;->getVisibility()I

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    invoke-virtual {p1, v0, v2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 243
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUICheckBox;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    .line 244
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUICheckBox;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 245
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUICheckBox;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/COUICheckBox;->setMinHeight(I)V

    .line 248
    :cond_2
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUICheckBox;->refreshDrawableState()V

    .line 249
    return-void
.end method

.method public setOnStateChangeListener(Lcom/coui/appcompat/widget/COUICheckBox$OnStateChangeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/coui/appcompat/widget/COUICheckBox$OnStateChangeListener;

    .line 194
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUICheckBox;->mOnStateChangeListener:Lcom/coui/appcompat/widget/COUICheckBox$OnStateChangeListener;

    .line 195
    return-void
.end method

.method public setState(I)V
    .locals 2
    .param p1, "state"    # I

    .line 169
    iget v0, p0, Lcom/coui/appcompat/widget/COUICheckBox;->mState:I

    if-eq v0, p1, :cond_2

    .line 170
    iput p1, p0, Lcom/coui/appcompat/widget/COUICheckBox;->mState:I

    .line 171
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUICheckBox;->refreshDrawableState()V

    .line 176
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/COUICheckBox;->mBroadcasting:Z

    if-eqz v0, :cond_0

    .line 177
    return-void

    .line 180
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coui/appcompat/widget/COUICheckBox;->mBroadcasting:Z

    .line 181
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUICheckBox;->mOnStateChangeListener:Lcom/coui/appcompat/widget/COUICheckBox$OnStateChangeListener;

    if-eqz v0, :cond_1

    .line 182
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUICheckBox;->mOnStateChangeListener:Lcom/coui/appcompat/widget/COUICheckBox$OnStateChangeListener;

    iget v1, p0, Lcom/coui/appcompat/widget/COUICheckBox;->mState:I

    invoke-interface {v0, p0, v1}, Lcom/coui/appcompat/widget/COUICheckBox$OnStateChangeListener;->onStateChanged(Lcom/coui/appcompat/widget/COUICheckBox;I)V

    .line 185
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coui/appcompat/widget/COUICheckBox;->mBroadcasting:Z

    .line 187
    :cond_2
    return-void
.end method

.method public toggle()V
    .locals 2

    .line 140
    iget v0, p0, Lcom/coui/appcompat/widget/COUICheckBox;->mState:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0, v1}, Lcom/coui/appcompat/widget/COUICheckBox;->setState(I)V

    .line 141
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .line 357
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatButton;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/coui/appcompat/widget/COUICheckBox;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

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
