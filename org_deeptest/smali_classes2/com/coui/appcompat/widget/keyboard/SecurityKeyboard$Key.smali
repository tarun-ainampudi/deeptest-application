.class public Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;
.super Ljava/lang/Object;
.source "SecurityKeyboard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Key"
.end annotation


# static fields
.field private static final KEY_STATE_NORMAL:[I

.field private static final KEY_STATE_NORMAL_OFF:[I

.field private static final KEY_STATE_NORMAL_ON:[I

.field private static final KEY_STATE_PRESSED:[I

.field private static final KEY_STATE_PRESSED_OFF:[I

.field private static final KEY_STATE_PRESSED_ON:[I


# instance fields
.field public announceText:Ljava/lang/CharSequence;

.field public codes:[I

.field public edgeFlags:I

.field public gap:I

.field public height:I

.field public icon:Landroid/graphics/drawable/Drawable;

.field public iconPreview:Landroid/graphics/drawable/Drawable;

.field private keyboard:Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;

.field public label:Ljava/lang/CharSequence;

.field public modifier:Z

.field public on:Z

.field public popupCharacters:Ljava/lang/CharSequence;

.field public popupResId:I

.field public pressed:Z

.field public repeatable:Z

.field public sticky:Z

.field public text:Ljava/lang/CharSequence;

.field public width:I

.field public x:I

.field public y:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 378
    const/4 v0, 0x2

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;->KEY_STATE_NORMAL_ON:[I

    .line 383
    const/4 v1, 0x3

    new-array v1, v1, [I

    fill-array-data v1, :array_1

    sput-object v1, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;->KEY_STATE_PRESSED_ON:[I

    .line 389
    const/4 v1, 0x1

    new-array v2, v1, [I

    const/4 v3, 0x0

    const v4, 0x101009f

    aput v4, v2, v3

    sput-object v2, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;->KEY_STATE_NORMAL_OFF:[I

    .line 393
    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;->KEY_STATE_PRESSED_OFF:[I

    .line 398
    new-array v0, v3, [I

    sput-object v0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;->KEY_STATE_NORMAL:[I

    .line 401
    new-array v0, v1, [I

    const v1, 0x10100a7

    aput v1, v0, v3

    sput-object v0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;->KEY_STATE_PRESSED:[I

    return-void

    :array_0
    .array-data 4
        0x101009f
        0x10100a0
    .end array-data

    :array_1
    .array-data 4
        0x10100a7
        0x101009f
        0x10100a0
    .end array-data

    :array_2
    .array-data 4
        0x10100a7
        0x101009f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/res/Resources;Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Row;IILandroid/content/res/XmlResourceParser;)V
    .locals 7
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "parent"    # Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Row;
    .param p3, "x"    # I
    .param p4, "y"    # I
    .param p5, "parser"    # Landroid/content/res/XmlResourceParser;

    .line 428
    invoke-direct {p0, p2}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;-><init>(Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Row;)V

    .line 430
    iput p3, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;->x:I

    .line 431
    iput p4, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;->y:I

    .line 433
    invoke-static {p5}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    sget-object v1, Lcoui/support/appcompat/R$styleable;->SecurityKeyboard:[I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 436
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Lcoui/support/appcompat/R$styleable;->SecurityKeyboard_couiKeyWidth:I

    iget-object v2, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;->keyboard:Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;

    .line 438
    invoke-static {v2}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;->access$000(Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;)I

    move-result v2

    iget v3, p2, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Row;->defaultWidth:I

    .line 436
    invoke-static {v0, v1, v2, v3}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;->getDimensionOrFraction(Landroid/content/res/TypedArray;III)I

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;->width:I

    .line 439
    sget v1, Lcoui/support/appcompat/R$styleable;->SecurityKeyboard_couiKeyHeight:I

    iget-object v2, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;->keyboard:Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;

    .line 441
    invoke-static {v2}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;->access$200(Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;)I

    move-result v2

    iget v3, p2, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Row;->defaultHeight:I

    .line 439
    invoke-static {v0, v1, v2, v3}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;->getDimensionOrFraction(Landroid/content/res/TypedArray;III)I

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;->height:I

    .line 442
    sget v1, Lcoui/support/appcompat/R$styleable;->SecurityKeyboard_couiHorizontalGap:I

    iget-object v2, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;->keyboard:Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;

    .line 444
    invoke-static {v2}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;->access$000(Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;)I

    move-result v2

    iget v3, p2, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Row;->defaultHorizontalGap:I

    .line 442
    invoke-static {v0, v1, v2, v3}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;->getDimensionOrFraction(Landroid/content/res/TypedArray;III)I

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;->gap:I

    .line 445
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 446
    invoke-static {p5}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v1

    sget-object v2, Lcoui/support/appcompat/R$styleable;->SecurityKeyboard_Key:[I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 449
    iget v1, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;->x:I

    iget v2, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;->gap:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;->x:I

    .line 451
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 452
    .local v1, "codesValue":Landroid/util/TypedValue;
    sget v2, Lcoui/support/appcompat/R$styleable;->SecurityKeyboard_Key_couiCodes:I

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 454
    iget v2, v1, Landroid/util/TypedValue;->type:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/16 v5, 0x10

    if-eq v2, v5, :cond_1

    iget v2, v1, Landroid/util/TypedValue;->type:I

    const/16 v5, 0x11

    if-ne v2, v5, :cond_0

    goto :goto_0

    .line 457
    :cond_0
    iget v2, v1, Landroid/util/TypedValue;->type:I

    const/4 v5, 0x3

    if-ne v2, v5, :cond_2

    .line 458
    iget-object v2, v1, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;->parseCSV(Ljava/lang/String;)[I

    move-result-object v2

    iput-object v2, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;->codes:[I

    goto :goto_1

    .line 456
    :cond_1
    :goto_0
    new-array v2, v3, [I

    iget v5, v1, Landroid/util/TypedValue;->data:I

    aput v5, v2, v4

    iput-object v2, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;->codes:[I

    .line 461
    :cond_2
    :goto_1
    sget v2, Lcoui/support/appcompat/R$styleable;->SecurityKeyboard_Key_couiIconPreview:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    .line 462
    iget-object v2, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_3

    .line 463
    iget-object v2, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    iget-object v5, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    iget-object v6, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    .line 464
    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    .line 463
    invoke-virtual {v2, v4, v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 466
    :cond_3
    sget v2, Lcoui/support/appcompat/R$styleable;->SecurityKeyboard_Key_couiPopupCharacters:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;->popupCharacters:Ljava/lang/CharSequence;

    .line 468
    sget v2, Lcoui/support/appcompat/R$styleable;->SecurityKeyboard_Key_couiPopupKeyboard:I

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;->popupResId:I

    .line 470
    sget v2, Lcoui/support/appcompat/R$styleable;->SecurityKeyboard_Key_couiIsRepeatable:I

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;->repeatable:Z

    .line 472
    sget v2, Lcoui/support/appcompat/R$styleable;->SecurityKeyboard_Key_couiIsModifier:I

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;->modifier:Z

    .line 474
    sget v2, Lcoui/support/appcompat/R$styleable;->SecurityKeyboard_Key_couiIsSticky:I

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;->sticky:Z

    .line 476
    sget v2, Lcoui/support/appcompat/R$styleable;->SecurityKeyboard_Key_couiKeyEdgeFlags:I

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;->edgeFlags:I

    .line 477
    iget v2, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;->edgeFlags:I

    iget v5, p2, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Row;->rowEdgeFlags:I

    or-int/2addr v2, v5

    iput v2, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;->edgeFlags:I

    .line 479
    sget v2, Lcoui/support/appcompat/R$styleable;->SecurityKeyboard_Key_couiKeyIcon:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    .line 481
    iget-object v2, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_4

    .line 482
    iget-object v2, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    iget-object v5, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    iget-object v6, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    invoke-virtual {v2, v4, v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 484
    :cond_4
    sget v2, Lcoui/support/appcompat/R$styleable;->SecurityKeyboard_Key_couiKeyLabel:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;->label:Ljava/lang/CharSequence;

    .line 485
    sget v2, Lcoui/support/appcompat/R$styleable;->SecurityKeyboard_Key_couiKeyOutputText:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;->text:Ljava/lang/CharSequence;

    .line 486
    sget v2, Lcoui/support/appcompat/R$styleable;->SecurityKeyboard_Key_couiKeyAnnounce:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;->announceText:Ljava/lang/CharSequence;

    .line 488
    iget-object v2, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;->codes:[I

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;->label:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 489
    new-array v2, v3, [I

    iget-object v3, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;->label:Ljava/lang/CharSequence;

    invoke-interface {v3, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    aput v3, v2, v4

    iput-object v2, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;->codes:[I

    .line 491
    :cond_5
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 492
    return-void
.end method

.method public constructor <init>(Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Row;)V
    .locals 1
    .param p1, "parent"    # Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Row;

    .line 408
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 350
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;->announceText:Ljava/lang/CharSequence;

    .line 409
    invoke-static {p1}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Row;->access$600(Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Row;)Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;->keyboard:Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;

    .line 410
    iget v0, p1, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Row;->defaultHeight:I

    iput v0, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;->height:I

    .line 411
    iget v0, p1, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Row;->defaultWidth:I

    iput v0, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;->width:I

    .line 412
    iget v0, p1, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Row;->defaultHorizontalGap:I

    iput v0, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;->gap:I

    .line 413
    iget v0, p1, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Row;->rowEdgeFlags:I

    iput v0, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;->edgeFlags:I

    .line 414
    return-void
.end method


# virtual methods
.method public getCurrentDrawableState()[I
    .locals 2

    .line 600
    sget-object v0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;->KEY_STATE_NORMAL:[I

    .line 602
    .local v0, "states":[I
    iget-boolean v1, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;->on:Z

    if-eqz v1, :cond_1

    .line 603
    iget-boolean v1, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;->pressed:Z

    if-eqz v1, :cond_0

    .line 604
    sget-object v0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;->KEY_STATE_PRESSED_ON:[I

    goto :goto_0

    .line 606
    :cond_0
    sget-object v0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;->KEY_STATE_NORMAL_ON:[I

    goto :goto_0

    .line 609
    :cond_1
    iget-boolean v1, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;->sticky:Z

    if-eqz v1, :cond_3

    .line 610
    iget-boolean v1, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;->pressed:Z

    if-eqz v1, :cond_2

    .line 611
    sget-object v0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;->KEY_STATE_PRESSED_OFF:[I

    goto :goto_0

    .line 613
    :cond_2
    sget-object v0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;->KEY_STATE_NORMAL_OFF:[I

    goto :goto_0

    .line 616
    :cond_3
    iget-boolean v1, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;->pressed:Z

    if-eqz v1, :cond_4

    .line 617
    sget-object v0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;->KEY_STATE_PRESSED:[I

    .line 621
    :cond_4
    :goto_0
    return-object v0
.end method

.method public isInside(II)Z
    .locals 8
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 566
    iget v0, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;->edgeFlags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-lez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 567
    .local v0, "leftEdge":Z
    :goto_0
    iget v3, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;->edgeFlags:I

    and-int/lit8 v3, v3, 0x2

    if-lez v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v2

    .line 568
    .local v3, "rightEdge":Z
    :goto_1
    iget v4, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;->edgeFlags:I

    and-int/lit8 v4, v4, 0x4

    if-lez v4, :cond_2

    move v4, v1

    goto :goto_2

    :cond_2
    move v4, v2

    .line 569
    .local v4, "topEdge":Z
    :goto_2
    iget v5, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;->edgeFlags:I

    and-int/lit8 v5, v5, 0x8

    if-lez v5, :cond_3

    move v5, v1

    goto :goto_3

    :cond_3
    move v5, v2

    .line 570
    .local v5, "bottomEdge":Z
    :goto_3
    iget v6, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;->x:I

    if-ge p1, v6, :cond_4

    if-eqz v0, :cond_7

    iget v6, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;->x:I

    iget v7, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;->width:I

    add-int/2addr v6, v7

    if-gt p1, v6, :cond_7

    :cond_4
    iget v6, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;->x:I

    iget v7, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;->width:I

    add-int/2addr v6, v7

    if-lt p1, v6, :cond_5

    if-eqz v3, :cond_7

    iget v6, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;->x:I

    if-lt p1, v6, :cond_7

    :cond_5
    iget v6, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;->y:I

    if-ge p2, v6, :cond_6

    if-eqz v4, :cond_7

    iget v6, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;->y:I

    iget v7, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;->height:I

    add-int/2addr v6, v7

    if-gt p2, v6, :cond_7

    :cond_6
    iget v6, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;->y:I

    iget v7, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;->height:I

    add-int/2addr v6, v7

    if-lt p2, v6, :cond_8

    if-eqz v5, :cond_7

    iget v6, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;->y:I

    if-lt p2, v6, :cond_7

    goto :goto_4

    .line 576
    :cond_7
    return v2

    .line 574
    :cond_8
    :goto_4
    return v1
.end method

.method public onPressed()V
    .locals 2

    .line 501
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;->pressed:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;->pressed:Z

    .line 502
    iget-object v0, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 503
    iget-object v0, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;->getCurrentDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 505
    :cond_0
    return-void
.end method

.method public onReleased(Z)V
    .locals 2
    .param p1, "inside"    # Z

    .line 525
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;->pressed:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;->pressed:Z

    .line 526
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;->sticky:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 527
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;->on:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;->on:Z

    .line 529
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 530
    iget-object v0, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;->getCurrentDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 532
    :cond_1
    return-void
.end method

.method parseCSV(Ljava/lang/String;)[I
    .locals 8
    .param p1, "value"    # Ljava/lang/String;

    .line 535
    const/4 v0, 0x0

    .line 536
    .local v0, "count":I
    const/4 v1, 0x0

    .line 537
    .local v1, "lastIndex":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 538
    add-int/lit8 v0, v0, 0x1

    .line 539
    :goto_0
    const-string v2, ","

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    move v1, v2

    if-lez v2, :cond_0

    .line 540
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 543
    :cond_0
    new-array v2, v0, [I

    .line 544
    .local v2, "values":[I
    const/4 v0, 0x0

    .line 545
    new-instance v3, Ljava/util/StringTokenizer;

    const-string v4, ","

    invoke-direct {v3, p1, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    .local v3, "st":Ljava/util/StringTokenizer;
    :goto_1
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 548
    add-int/lit8 v4, v0, 0x1

    .local v4, "count":I
    :try_start_0
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    aput v5, v2, v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 549
    .end local v0    # "count":I
    :catch_0
    move-exception v0

    .line 550
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    const-string v5, "SecurityKeyboard"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error parsing keycodes "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    .end local v0    # "nfe":Ljava/lang/NumberFormatException;
    :goto_2
    nop

    .line 545
    move v0, v4

    goto :goto_1

    .line 553
    .end local v4    # "count":I
    .local v0, "count":I
    :cond_1
    return-object v2
.end method

.method public squaredDistanceFrom(II)I
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 588
    iget v0, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;->x:I

    iget v1, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;->width:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    sub-int/2addr v0, p1

    .line 589
    .local v0, "xDist":I
    iget v1, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;->y:I

    iget v2, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;->height:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    sub-int/2addr v1, p2

    .line 590
    .local v1, "yDist":I
    mul-int v2, v0, v0

    mul-int v3, v1, v1

    add-int/2addr v2, v3

    return v2
.end method
