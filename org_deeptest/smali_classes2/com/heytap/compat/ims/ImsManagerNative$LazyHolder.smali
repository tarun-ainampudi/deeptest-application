.class Lcom/heytap/compat/ims/ImsManagerNative$LazyHolder;
.super Ljava/lang/Object;
.source "ImsManagerNative.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heytap/compat/ims/ImsManagerNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LazyHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/heytap/compat/ims/ImsManagerNative;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 29
    new-instance v0, Lcom/heytap/compat/ims/ImsManagerNative;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/heytap/compat/ims/ImsManagerNative;-><init>(Lcom/heytap/compat/ims/ImsManagerNative$1;)V

    sput-object v0, Lcom/heytap/compat/ims/ImsManagerNative$LazyHolder;->INSTANCE:Lcom/heytap/compat/ims/ImsManagerNative;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/heytap/compat/ims/ImsManagerNative;
    .locals 1

    .line 28
    sget-object v0, Lcom/heytap/compat/ims/ImsManagerNative$LazyHolder;->INSTANCE:Lcom/heytap/compat/ims/ImsManagerNative;

    return-object v0
.end method
