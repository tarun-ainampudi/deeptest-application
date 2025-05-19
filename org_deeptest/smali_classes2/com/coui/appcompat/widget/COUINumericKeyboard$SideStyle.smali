.class public Lcom/coui/appcompat/widget/COUINumericKeyboard$SideStyle;
.super Ljava/lang/Object;
.source "COUINumericKeyboard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/widget/COUINumericKeyboard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SideStyle"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/widget/COUINumericKeyboard$SideStyle$Builder;
    }
.end annotation


# instance fields
.field private mDescription:Ljava/lang/String;

.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field private mText:Ljava/lang/String;

.field private mTextColor:I

.field private mTextSize:F


# direct methods
.method private constructor <init>(Lcom/coui/appcompat/widget/COUINumericKeyboard$SideStyle$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcom/coui/appcompat/widget/COUINumericKeyboard$SideStyle$Builder;

    .line 1218
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1219
    invoke-static {p1}, Lcom/coui/appcompat/widget/COUINumericKeyboard$SideStyle$Builder;->access$1700(Lcom/coui/appcompat/widget/COUINumericKeyboard$SideStyle$Builder;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard$SideStyle;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 1220
    invoke-static {p1}, Lcom/coui/appcompat/widget/COUINumericKeyboard$SideStyle$Builder;->access$1800(Lcom/coui/appcompat/widget/COUINumericKeyboard$SideStyle$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard$SideStyle;->mText:Ljava/lang/String;

    .line 1221
    invoke-static {p1}, Lcom/coui/appcompat/widget/COUINumericKeyboard$SideStyle$Builder;->access$1900(Lcom/coui/appcompat/widget/COUINumericKeyboard$SideStyle$Builder;)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard$SideStyle;->mTextColor:I

    .line 1222
    invoke-static {p1}, Lcom/coui/appcompat/widget/COUINumericKeyboard$SideStyle$Builder;->access$2000(Lcom/coui/appcompat/widget/COUINumericKeyboard$SideStyle$Builder;)F

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard$SideStyle;->mTextSize:F

    .line 1223
    invoke-static {p1}, Lcom/coui/appcompat/widget/COUINumericKeyboard$SideStyle$Builder;->access$2100(Lcom/coui/appcompat/widget/COUINumericKeyboard$SideStyle$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard$SideStyle;->mDescription:Ljava/lang/String;

    .line 1224
    return-void
.end method

.method synthetic constructor <init>(Lcom/coui/appcompat/widget/COUINumericKeyboard$SideStyle$Builder;Lcom/coui/appcompat/widget/COUINumericKeyboard$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/coui/appcompat/widget/COUINumericKeyboard$SideStyle$Builder;
    .param p2, "x1"    # Lcom/coui/appcompat/widget/COUINumericKeyboard$1;

    .line 1211
    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/COUINumericKeyboard$SideStyle;-><init>(Lcom/coui/appcompat/widget/COUINumericKeyboard$SideStyle$Builder;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/coui/appcompat/widget/COUINumericKeyboard$SideStyle;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUINumericKeyboard$SideStyle;

    .line 1211
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard$SideStyle;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/coui/appcompat/widget/COUINumericKeyboard$SideStyle;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUINumericKeyboard$SideStyle;

    .line 1211
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard$SideStyle;->mDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$400(Lcom/coui/appcompat/widget/COUINumericKeyboard$SideStyle;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUINumericKeyboard$SideStyle;

    .line 1211
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard$SideStyle;->mText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/coui/appcompat/widget/COUINumericKeyboard$SideStyle;)F
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUINumericKeyboard$SideStyle;

    .line 1211
    iget v0, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard$SideStyle;->mTextSize:F

    return v0
.end method

.method static synthetic access$600(Lcom/coui/appcompat/widget/COUINumericKeyboard$SideStyle;)I
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUINumericKeyboard$SideStyle;

    .line 1211
    iget v0, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard$SideStyle;->mTextColor:I

    return v0
.end method

.method static synthetic access$602(Lcom/coui/appcompat/widget/COUINumericKeyboard$SideStyle;I)I
    .locals 0
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUINumericKeyboard$SideStyle;
    .param p1, "x1"    # I

    .line 1211
    iput p1, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard$SideStyle;->mTextColor:I

    return p1
.end method
