.class public Lcom/heytap/shield/authcode/AuthCache;
.super Ljava/lang/Object;
.source "AuthCache.java"


# static fields
.field private static final ANDROID_PACKAGE:Ljava/lang/String; = "android"


# instance fields
.field private mCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/String;",
            "Lcom/heytap/shield/authcode/info/AuthResult;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mPlatformSignature:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Landroid/util/LruCache;

    sget v1, Lcom/heytap/shield/Constants;->MAX_CACHE:I

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lcom/heytap/shield/authcode/AuthCache;->mCache:Landroid/util/LruCache;

    .line 30
    iput-object p1, p0, Lcom/heytap/shield/authcode/AuthCache;->mContext:Landroid/content/Context;

    .line 31
    iget-object v0, p0, Lcom/heytap/shield/authcode/AuthCache;->mContext:Landroid/content/Context;

    const-string v1, "android"

    invoke-static {v0, v1}, Lcom/heytap/shield/utils/CertUtils;->getCertificateSHA256(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/heytap/shield/authcode/AuthCache;->mPlatformSignature:Ljava/lang/String;

    .line 32
    return-void
.end method


# virtual methods
.method public hasCache(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p1, "callerPackage"    # Ljava/lang/String;
    .param p2, "sig265"    # Ljava/lang/String;

    .line 39
    iget-object v0, p0, Lcom/heytap/shield/authcode/AuthCache;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/heytap/shield/utils/PackageUtils;->getAppPlatformData(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 40
    .local v0, "authCode":Ljava/lang/String;
    iget-object v1, p0, Lcom/heytap/shield/authcode/AuthCache;->mContext:Landroid/content/Context;

    invoke-static {v1, p1, v0}, Lcom/heytap/shield/authcode/Authentication;->checkAndGetDb(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/heytap/shield/authcode/info/AuthResult;

    move-result-object v1

    .line 41
    .local v1, "authResult":Lcom/heytap/shield/authcode/info/AuthResult;
    iget-object v2, p0, Lcom/heytap/shield/authcode/AuthCache;->mCache:Landroid/util/LruCache;

    invoke-virtual {v2, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/heytap/shield/authcode/info/AuthResult;

    .line 42
    .local v2, "cache":Lcom/heytap/shield/authcode/info/AuthResult;
    const/4 v3, 0x0

    if-eqz v1, :cond_3

    if-nez v2, :cond_0

    goto :goto_0

    .line 45
    :cond_0
    invoke-virtual {v2}, Lcom/heytap/shield/authcode/info/AuthResult;->isExpired()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 46
    return v3

    .line 48
    :cond_1
    invoke-virtual {v2}, Lcom/heytap/shield/authcode/info/AuthResult;->getSigSHA256()Ljava/lang/String;

    move-result-object v4

    invoke-static {p2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 49
    return v3

    .line 51
    :cond_2
    invoke-virtual {v1}, Lcom/heytap/shield/authcode/info/AuthResult;->getPermitBits()[B

    move-result-object v3

    invoke-virtual {v2}, Lcom/heytap/shield/authcode/info/AuthResult;->getPermitBits()[B

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    return v3

    .line 43
    :cond_3
    :goto_0
    return v3
.end method

.method public isPlatformSignature(Ljava/lang/String;)Z
    .locals 1
    .param p1, "sig265"    # Ljava/lang/String;

    .line 35
    iget-object v0, p0, Lcom/heytap/shield/authcode/AuthCache;->mPlatformSignature:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public putCache(Ljava/lang/String;Lcom/heytap/shield/authcode/info/AuthResult;Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "authResult"    # Lcom/heytap/shield/authcode/info/AuthResult;
    .param p3, "sig265"    # Ljava/lang/String;

    .line 55
    invoke-virtual {p2}, Lcom/heytap/shield/authcode/info/AuthResult;->initPermissionTable()V

    .line 56
    invoke-virtual {p2}, Lcom/heytap/shield/authcode/info/AuthResult;->setUpdateTime()V

    .line 57
    invoke-virtual {p2, p3}, Lcom/heytap/shield/authcode/info/AuthResult;->setSigSHA256(Ljava/lang/String;)V

    .line 58
    iget-object v0, p0, Lcom/heytap/shield/authcode/AuthCache;->mCache:Landroid/util/LruCache;

    invoke-virtual {v0, p1, p2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    return-void
.end method

.method public verifyEponaPermission(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p1, "callerPackage"    # Ljava/lang/String;
    .param p2, "component"    # Ljava/lang/String;
    .param p3, "actionName"    # Ljava/lang/String;

    .line 70
    iget-object v0, p0, Lcom/heytap/shield/authcode/AuthCache;->mCache:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heytap/shield/authcode/info/AuthResult;

    .line 71
    .local v0, "result":Lcom/heytap/shield/authcode/info/AuthResult;
    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 74
    const-string v2, "."

    invoke-static {p2, v2}, Lcom/heytap/shield/utils/SystemUtils;->getSplitString(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-le v2, v3, :cond_0

    .line 75
    const-string v2, "."

    invoke-virtual {p2, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/2addr v2, v4

    invoke-virtual {p2, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    .line 77
    :cond_0
    const-string v2, "epona"

    invoke-virtual {v0, v2, p2}, Lcom/heytap/shield/authcode/info/AuthResult;->checkPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "epona"

    .line 78
    invoke-virtual {v0, v2, p3}, Lcom/heytap/shield/authcode/info/AuthResult;->checkPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    move v2, v1

    goto :goto_1

    :cond_2
    :goto_0
    move v2, v4

    .line 81
    .local v2, "isInEponaPermission":Z
    :goto_1
    const-string v3, "tingle"

    invoke-virtual {v0, v3, p2}, Lcom/heytap/shield/authcode/info/AuthResult;->checkPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "tingle"

    .line 82
    invoke-virtual {v0, v3, p3}, Lcom/heytap/shield/authcode/info/AuthResult;->checkPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_3
    move v3, v1

    goto :goto_3

    :cond_4
    :goto_2
    move v3, v4

    .line 83
    .local v3, "isInTinglePermission":Z
    :goto_3
    if-nez v2, :cond_5

    if-eqz v3, :cond_5

    .line 84
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Action : ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "] is re-wrapped form Tingle, Caller : ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/heytap/shield/utils/PLog;->d(Ljava/lang/String;)V

    .line 88
    :cond_5
    if-nez v2, :cond_7

    if-eqz v3, :cond_6

    goto :goto_4

    :cond_6
    goto :goto_5

    :cond_7
    :goto_4
    move v1, v4

    :goto_5
    return v1

    .line 90
    .end local v2    # "isInEponaPermission":Z
    .end local v3    # "isInTinglePermission":Z
    :cond_8
    return v1
.end method

.method public verifyTinglePermission(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 62
    iget-object v0, p0, Lcom/heytap/shield/authcode/AuthCache;->mCache:Landroid/util/LruCache;

    invoke-virtual {v0, p2}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heytap/shield/authcode/info/AuthResult;

    .line 63
    .local v0, "result":Lcom/heytap/shield/authcode/info/AuthResult;
    if-eqz v0, :cond_0

    .line 64
    const-string v1, "tingle"

    invoke-virtual {v0, v1, p1}, Lcom/heytap/shield/authcode/info/AuthResult;->checkPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    return v1

    .line 66
    :cond_0
    const/4 v1, 0x0

    return v1
.end method
