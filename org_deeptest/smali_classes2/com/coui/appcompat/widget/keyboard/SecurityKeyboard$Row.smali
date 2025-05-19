.class public Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Row;
.super Ljava/lang/Object;
.source "SecurityKeyboard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Row"
.end annotation


# instance fields
.field public defaultHeight:I

.field public defaultHorizontalGap:I

.field public defaultWidth:I

.field mKeys:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;",
            ">;"
        }
    .end annotation
.end field

.field public mode:I

.field private parent:Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;

.field public rowEdgeFlags:I

.field public verticalGap:I


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;Landroid/content/res/XmlResourceParser;)V
    .locals 4
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "parent"    # Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;
    .param p3, "parser"    # Landroid/content/res/XmlResourceParser;

    .line 246
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 227
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Row;->mKeys:Ljava/util/ArrayList;

    .line 247
    iput-object p2, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Row;->parent:Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;

    .line 248
    invoke-static {p3}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    sget-object v1, Lcoui/support/appcompat/R$styleable;->SecurityKeyboard:[I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 250
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Lcoui/support/appcompat/R$styleable;->SecurityKeyboard_couiKeyWidth:I

    .line 252
    invoke-static {p2}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;->access$000(Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;)I

    move-result v2

    invoke-static {p2}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;->access$100(Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;)I

    move-result v3

    .line 250
    invoke-static {v0, v1, v2, v3}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;->getDimensionOrFraction(Landroid/content/res/TypedArray;III)I

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Row;->defaultWidth:I

    .line 253
    sget v1, Lcoui/support/appcompat/R$styleable;->SecurityKeyboard_couiKeyHeight:I

    .line 255
    invoke-static {p2}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;->access$200(Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;)I

    move-result v2

    invoke-static {p2}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;->access$300(Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;)I

    move-result v3

    .line 253
    invoke-static {v0, v1, v2, v3}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;->getDimensionOrFraction(Landroid/content/res/TypedArray;III)I

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Row;->defaultHeight:I

    .line 256
    sget v1, Lcoui/support/appcompat/R$styleable;->SecurityKeyboard_couiHorizontalGap:I

    .line 258
    invoke-static {p2}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;->access$000(Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;)I

    move-result v2

    invoke-static {p2}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;->access$400(Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;)I

    move-result v3

    .line 256
    invoke-static {v0, v1, v2, v3}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;->getDimensionOrFraction(Landroid/content/res/TypedArray;III)I

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Row;->defaultHorizontalGap:I

    .line 259
    sget v1, Lcoui/support/appcompat/R$styleable;->SecurityKeyboard_couiVerticalGap:I

    .line 261
    invoke-static {p2}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;->access$200(Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;)I

    move-result v2

    invoke-static {p2}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;->access$500(Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;)I

    move-result v3

    .line 259
    invoke-static {v0, v1, v2, v3}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;->getDimensionOrFraction(Landroid/content/res/TypedArray;III)I

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Row;->verticalGap:I

    .line 262
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 263
    invoke-static {p3}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v1

    sget-object v2, Lcoui/support/appcompat/R$styleable;->SecurityKeyboard_Row:[I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 265
    sget v1, Lcoui/support/appcompat/R$styleable;->SecurityKeyboard_Row_couiRowEdgeFlags:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Row;->rowEdgeFlags:I

    .line 266
    sget v1, Lcoui/support/appcompat/R$styleable;->SecurityKeyboard_Row_couiKeyboardMode:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Row;->mode:I

    .line 268
    return-void
.end method

.method public constructor <init>(Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;)V
    .locals 1
    .param p1, "parent"    # Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;

    .line 242
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 227
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Row;->mKeys:Ljava/util/ArrayList;

    .line 243
    iput-object p1, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Row;->parent:Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;

    .line 244
    return-void
.end method

.method static synthetic access$600(Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Row;)Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Row;

    .line 209
    iget-object v0, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Row;->parent:Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;

    return-object v0
.end method
