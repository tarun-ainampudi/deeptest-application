.class public Lcom/example/deeptesting/service/RequestService$Response$Unlock;
.super Ljava/lang/Object;
.source "RequestService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/example/deeptesting/service/RequestService$Response;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Unlock"
.end annotation


# instance fields
.field private mApplyStatus:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "applyStatus"
    .end annotation
.end field

.field private mClientStatus:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "clientStatus"
    .end annotation
.end field

.field private mExceptPassTime:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "exceptPassTime"
    .end annotation
.end field

.field private mUnlock:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "unlockCode"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 258
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/example/deeptesting/service/RequestService$Response$Unlock;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/example/deeptesting/service/RequestService$Response$Unlock;

    .line 258
    iget-object v0, p0, Lcom/example/deeptesting/service/RequestService$Response$Unlock;->mUnlock:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/example/deeptesting/service/RequestService$Response$Unlock;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/example/deeptesting/service/RequestService$Response$Unlock;

    .line 258
    iget-object v0, p0, Lcom/example/deeptesting/service/RequestService$Response$Unlock;->mExceptPassTime:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/example/deeptesting/service/RequestService$Response$Unlock;)I
    .locals 1
    .param p0, "x0"    # Lcom/example/deeptesting/service/RequestService$Response$Unlock;

    .line 258
    iget v0, p0, Lcom/example/deeptesting/service/RequestService$Response$Unlock;->mClientStatus:I

    return v0
.end method

.method static synthetic access$300(Lcom/example/deeptesting/service/RequestService$Response$Unlock;)I
    .locals 1
    .param p0, "x0"    # Lcom/example/deeptesting/service/RequestService$Response$Unlock;

    .line 258
    iget v0, p0, Lcom/example/deeptesting/service/RequestService$Response$Unlock;->mApplyStatus:I

    return v0
.end method
