.class public Lcom/example/deeptesting/service/RequestService$ReqList;
.super Ljava/lang/Object;
.source "RequestService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/example/deeptesting/service/RequestService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ReqList"
.end annotation


# instance fields
.field private mFlashLockState:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "clientLockStatus"
    .end annotation
.end field

.field private mImei:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "udid"
    .end annotation
.end field

.field private mModel:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "model"
    .end annotation
.end field

.field private mOperator:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "operator"
    .end annotation
.end field

.field private mOtaVersion:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "otaVersion"
    .end annotation
.end field

.field private mPcb:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "chipId"
    .end annotation
.end field

.field private mToken:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "token"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 221
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public showToast(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method


# virtual methods
.method public setRequestProperties(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 239
    # invoke-static {p1}, Lcom/example/deeptesting/utils/Utils;->getImei(Landroid/content/Context;)Ljava/lang/String;

    # move-result-object v0

    const-string v0, "replacemewithyourimei"

    iput-object v0, p0, Lcom/example/deeptesting/service/RequestService$ReqList;->mImei:Ljava/lang/String;

    .line 240
    # invoke-static {}, Lcom/example/deeptesting/utils/Utils;->getProductName()Ljava/lang/String;

    # move-result-object v0

    const-string v0, "RMX3611"

    iput-object v0, p0, Lcom/example/deeptesting/service/RequestService$ReqList;->mModel:Ljava/lang/String;

    .line 241
    # invoke-static {}, Lcom/example/deeptesting/utils/Utils;->getOtaVersion()Ljava/lang/String;

    # move-result-object v0

    const-string v0, "RMX3611_11.A.36_0360_2025010615328"

    iput-object v0, p0, Lcom/example/deeptesting/service/RequestService$ReqList;->mOtaVersion:Ljava/lang/String;

    .line 242
    invoke-static {}, Lcom/example/deeptesting/service/RequestService;->access$500()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/example/deeptesting/utils/Utils;->getToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    # const-string v0, "TOKEN_eyJhbGciOiJFQORTQSIsInYiOilxIn0.eyJleHAiOjE3NTAxMzYwMTE2MTQsImlkljoiMTlyNzkwMTg3OCIslmlkYyI6InNpbmdhcG9yZSIsInRpZCI6IjBZVWlpMEZoak1uMy9ZWGhzUW13VC9iczQ0dkp4Q2ZzY0p3bUozSWhlQkFhS05CcCtobXJ2Y3BlbjNLT2dXUGtHNS8yOHI0ekJESnMxSFR2d1MwSGxQMnBMWTNtU0JmZTd1R3FKU3J2ak80PSJ9.MEUCIQDmosxqrqUefBEcSiLOdNlnbMFYhf1jrQ261LIMjF-TGAlgUrkWsM3yCHg80J-kX_5cxKsMlvc3kkCFCwttjouoVa4"

    invoke-virtual {p0, p1, v0}, Lcom/example/deeptesting/service/RequestService$ReqList;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/example/deeptesting/service/RequestService$ReqList;->mToken:Ljava/lang/String;

    .line 243
    # invoke-static {}, Lcom/example/deeptesting/utils/Utils;->getSerialID()Ljava/lang/String;

    # move-result-object v0

    const-string v0, "replacemewithyourserialid"

    iput-object v0, p0, Lcom/example/deeptesting/service/RequestService$ReqList;->mPcb:Ljava/lang/String;

    .line 244

    const/4 v0, 0x0

    iput v0, p0, Lcom/example/deeptesting/service/RequestService$ReqList;->mFlashLockState:I

    .line 245
    const-string v0, "ro.oppo.operator"

    # invoke-static {v0}, Lcom/example/deeptesting/utils/Utils;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    # move-result-object v0

    const-string v0, ""

    iput-object v0, p0, Lcom/example/deeptesting/service/RequestService$ReqList;->mOperator:Ljava/lang/String;

    .line 246
    return-void
.end method
