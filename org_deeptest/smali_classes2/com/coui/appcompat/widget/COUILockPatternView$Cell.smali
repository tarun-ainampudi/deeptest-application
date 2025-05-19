.class public final Lcom/coui/appcompat/widget/COUILockPatternView$Cell;
.super Ljava/lang/Object;
.source "COUILockPatternView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/widget/COUILockPatternView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Cell"
.end annotation


# static fields
.field private static final sCells:[[Lcom/coui/appcompat/widget/COUILockPatternView$Cell;


# instance fields
.field private final column:I

.field private final row:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 197
    invoke-static {}, Lcom/coui/appcompat/widget/COUILockPatternView$Cell;->createCells()[[Lcom/coui/appcompat/widget/COUILockPatternView$Cell;

    move-result-object v0

    sput-object v0, Lcom/coui/appcompat/widget/COUILockPatternView$Cell;->sCells:[[Lcom/coui/appcompat/widget/COUILockPatternView$Cell;

    return-void
.end method

.method private constructor <init>(II)V
    .locals 0
    .param p1, "row"    # I
    .param p2, "column"    # I

    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 217
    invoke-static {p1, p2}, Lcom/coui/appcompat/widget/COUILockPatternView$Cell;->checkRange(II)V

    .line 218
    iput p1, p0, Lcom/coui/appcompat/widget/COUILockPatternView$Cell;->row:I

    .line 219
    iput p2, p0, Lcom/coui/appcompat/widget/COUILockPatternView$Cell;->column:I

    .line 220
    return-void
.end method

.method static synthetic access$300(Lcom/coui/appcompat/widget/COUILockPatternView$Cell;)I
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUILockPatternView$Cell;

    .line 195
    iget v0, p0, Lcom/coui/appcompat/widget/COUILockPatternView$Cell;->row:I

    return v0
.end method

.method static synthetic access$400(Lcom/coui/appcompat/widget/COUILockPatternView$Cell;)I
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUILockPatternView$Cell;

    .line 195
    iget v0, p0, Lcom/coui/appcompat/widget/COUILockPatternView$Cell;->column:I

    return v0
.end method

.method private static checkRange(II)V
    .locals 2
    .param p0, "row"    # I
    .param p1, "column"    # I

    .line 250
    if-ltz p0, :cond_1

    const/4 v0, 0x2

    if-gt p0, v0, :cond_1

    .line 253
    if-ltz p1, :cond_0

    if-gt p1, v0, :cond_0

    .line 256
    return-void

    .line 254
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "column must be in range 0-2"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 251
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "row must be in range 0-2"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static createCells()[[Lcom/coui/appcompat/widget/COUILockPatternView$Cell;
    .locals 7

    .line 202
    const/4 v0, 0x3

    filled-new-array {v0, v0}, [I

    move-result-object v1

    const-class v2, Lcom/coui/appcompat/widget/COUILockPatternView$Cell;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[Lcom/coui/appcompat/widget/COUILockPatternView$Cell;

    .line 203
    .local v1, "res":[[Lcom/coui/appcompat/widget/COUILockPatternView$Cell;
    const/4 v2, 0x0

    move v3, v2

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 204
    move v4, v2

    .local v4, "j":I
    :goto_1
    if-ge v4, v0, :cond_0

    .line 205
    aget-object v5, v1, v3

    new-instance v6, Lcom/coui/appcompat/widget/COUILockPatternView$Cell;

    invoke-direct {v6, v3, v4}, Lcom/coui/appcompat/widget/COUILockPatternView$Cell;-><init>(II)V

    aput-object v6, v5, v4

    .line 204
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 203
    .end local v4    # "j":I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 208
    .end local v3    # "i":I
    :cond_1
    return-object v1
.end method

.method public static of(II)Lcom/coui/appcompat/widget/COUILockPatternView$Cell;
    .locals 1
    .param p0, "row"    # I
    .param p1, "column"    # I

    .line 245
    invoke-static {p0, p1}, Lcom/coui/appcompat/widget/COUILockPatternView$Cell;->checkRange(II)V

    .line 246
    sget-object v0, Lcom/coui/appcompat/widget/COUILockPatternView$Cell;->sCells:[[Lcom/coui/appcompat/widget/COUILockPatternView$Cell;

    aget-object v0, v0, p0

    aget-object v0, v0, p1

    return-object v0
.end method


# virtual methods
.method public getColumn()I
    .locals 1

    .line 235
    iget v0, p0, Lcom/coui/appcompat/widget/COUILockPatternView$Cell;->column:I

    return v0
.end method

.method public getRow()I
    .locals 1

    .line 227
    iget v0, p0, Lcom/coui/appcompat/widget/COUILockPatternView$Cell;->row:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 260
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(row="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/coui/appcompat/widget/COUILockPatternView$Cell;->row:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",clmn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/coui/appcompat/widget/COUILockPatternView$Cell;->column:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
