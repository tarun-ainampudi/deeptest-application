.class public Lcom/coui/appcompat/util/COUILockPatternUtils;
.super Ljava/lang/Object;
.source "COUILockPatternUtils.java"


# static fields
.field private static final COLUMNS:I = 0x3

.field private static final DEBUG:Z = false

.field private static final ROWS:I = 0x3

.field private static final TAG:Ljava/lang/String; = "COUILockPatternUtils"


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/coui/appcompat/util/COUILockPatternUtils;->mContext:Landroid/content/Context;

    .line 48
    return-void
.end method

.method public static patternToString(Ljava/util/List;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/coui/appcompat/widget/COUILockPatternView$Cell;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 76
    .local p0, "pattern":Ljava/util/List;, "Ljava/util/List<Lcom/coui/appcompat/widget/COUILockPatternView$Cell;>;"
    if-nez p0, :cond_0

    .line 77
    const-string v0, ""

    return-object v0

    .line 79
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 81
    .local v0, "patternSize":I
    new-array v1, v0, [B

    .line 82
    .local v1, "res":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 83
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/coui/appcompat/widget/COUILockPatternView$Cell;

    .line 84
    .local v3, "cell":Lcom/coui/appcompat/widget/COUILockPatternView$Cell;
    invoke-virtual {v3}, Lcom/coui/appcompat/widget/COUILockPatternView$Cell;->getRow()I

    move-result v4

    mul-int/lit8 v4, v4, 0x3

    invoke-virtual {v3}, Lcom/coui/appcompat/widget/COUILockPatternView$Cell;->getColumn()I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x31

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    .line 82
    .end local v3    # "cell":Lcom/coui/appcompat/widget/COUILockPatternView$Cell;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 86
    .end local v2    # "i":I
    :cond_1
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V

    return-object v2
.end method

.method public static stringToPattern(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .param p0, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/coui/appcompat/widget/COUILockPatternView$Cell;",
            ">;"
        }
    .end annotation

    .line 56
    if-nez p0, :cond_0

    .line 57
    const/4 v0, 0x0

    return-object v0

    .line 60
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 62
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Lcom/coui/appcompat/widget/COUILockPatternView$Cell;>;"
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 63
    .local v1, "bytes":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_1

    .line 64
    aget-byte v3, v1, v2

    add-int/lit8 v3, v3, -0x31

    int-to-byte v3, v3

    .line 65
    .local v3, "b":B
    div-int/lit8 v4, v3, 0x3

    rem-int/lit8 v5, v3, 0x3

    invoke-static {v4, v5}, Lcom/coui/appcompat/widget/COUILockPatternView$Cell;->of(II)Lcom/coui/appcompat/widget/COUILockPatternView$Cell;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    .end local v3    # "b":B
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 67
    .end local v2    # "i":I
    :cond_1
    return-object v0
.end method
