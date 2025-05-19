.class Lcom/heytap/compat/internal/widget/LockPatternUtilsNative$LazyHolder;
.super Ljava/lang/Object;
.source "LockPatternUtilsNative.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heytap/compat/internal/widget/LockPatternUtilsNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LazyHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/heytap/compat/internal/widget/LockPatternUtilsNative;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 393
    new-instance v0, Lcom/heytap/compat/internal/widget/LockPatternUtilsNative;

    invoke-static {}, Lcom/heytap/epona/Epona;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/heytap/compat/internal/widget/LockPatternUtilsNative;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/heytap/compat/internal/widget/LockPatternUtilsNative$LazyHolder;->INSTANCE:Lcom/heytap/compat/internal/widget/LockPatternUtilsNative;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 392
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/heytap/compat/internal/widget/LockPatternUtilsNative;
    .locals 1

    .line 392
    sget-object v0, Lcom/heytap/compat/internal/widget/LockPatternUtilsNative$LazyHolder;->INSTANCE:Lcom/heytap/compat/internal/widget/LockPatternUtilsNative;

    return-object v0
.end method
