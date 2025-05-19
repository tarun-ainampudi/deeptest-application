.class public Lcom/platform/usercenter/network/safe/SecurityProtocolManager$SecurityKeys;
.super Ljava/lang/Object;
.source "SecurityProtocolManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/platform/usercenter/network/safe/SecurityProtocolManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SecurityKeys"
.end annotation


# instance fields
.field public mAES:Ljava/lang/String;

.field public mIV:[B

.field public mIVStr:Ljava/lang/String;

.field public mRSA:Ljava/lang/String;

.field public mSecurityTicket:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    invoke-direct {p0}, Lcom/platform/usercenter/network/safe/SecurityProtocolManager$SecurityKeys;->generateRandom16byte()[B

    move-result-object v0

    iput-object v0, p0, Lcom/platform/usercenter/network/safe/SecurityProtocolManager$SecurityKeys;->mIV:[B

    .line 67
    iget-object v0, p0, Lcom/platform/usercenter/network/safe/SecurityProtocolManager$SecurityKeys;->mIV:[B

    invoke-static {v0}, Lcom/platform/usercenter/tools/security/AESUtilTest;->base64EncodeSafe([B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/platform/usercenter/network/safe/SecurityProtocolManager$SecurityKeys;->mIVStr:Ljava/lang/String;

    .line 68
    invoke-direct {p0}, Lcom/platform/usercenter/network/safe/SecurityProtocolManager$SecurityKeys;->generateRandom16byte()[B

    move-result-object v0

    invoke-static {v0}, Lcom/platform/usercenter/tools/security/AESUtilTest;->base64EncodeSafe([B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/platform/usercenter/network/safe/SecurityProtocolManager$SecurityKeys;->mAES:Ljava/lang/String;

    .line 70
    iget-object v0, p0, Lcom/platform/usercenter/network/safe/SecurityProtocolManager$SecurityKeys;->mAES:Ljava/lang/String;

    sget-object v1, Lcom/platform/usercenter/tools/security/RsaCoder;->Key:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/platform/usercenter/tools/security/RsaCoder;->encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/platform/usercenter/network/safe/SecurityProtocolManager$SecurityKeys;->mRSA:Ljava/lang/String;

    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/platform/usercenter/network/safe/SecurityProtocolManager$SecurityKeys;->mSecurityTicket:Ljava/lang/String;

    .line 72
    return-void
.end method

.method private generateRandom16byte()[B
    .locals 2

    .line 75
    const/16 v0, 0x10

    new-array v0, v0, [B

    .line 76
    .local v0, "aesKey":[B
    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    .line 77
    .local v1, "secureRandom":Ljava/security/SecureRandom;
    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 78
    return-object v0
.end method


# virtual methods
.method public available()Z
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/platform/usercenter/network/safe/SecurityProtocolManager$SecurityKeys;->mAES:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/platform/usercenter/network/safe/SecurityProtocolManager$SecurityKeys;->mIV:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/platform/usercenter/network/safe/SecurityProtocolManager$SecurityKeys;->mRSA:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/platform/usercenter/network/safe/SecurityProtocolManager$SecurityKeys;->mSecurityTicket:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public decrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "content"    # Ljava/lang/String;

    .line 95
    iget-object v0, p0, Lcom/platform/usercenter/network/safe/SecurityProtocolManager$SecurityKeys;->mAES:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 96
    const-string v0, "SecurityProtocolManager"

    const-string v2, "decrypt fail aes is null"

    invoke-static {v0, v2}, Lcom/platform/usercenter/tools/log/UCLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    return-object v1

    .line 100
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/platform/usercenter/network/safe/SecurityProtocolManager$SecurityKeys;->mAES:Ljava/lang/String;

    iget-object v2, p0, Lcom/platform/usercenter/network/safe/SecurityProtocolManager$SecurityKeys;->mIV:[B

    invoke-static {p1, v0, v2}, Lcom/platform/usercenter/tools/security/AESUtilTest;->aesDecryptWithPassKey(Ljava/lang/String;Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 101
    :catch_0
    move-exception v0

    .line 102
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/platform/usercenter/tools/log/UCLogUtil;->e(Ljava/lang/Exception;)V

    .line 104
    .end local v0    # "e":Ljava/lang/Exception;
    return-object v1
.end method

.method public encrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "content"    # Ljava/lang/String;

    .line 82
    iget-object v0, p0, Lcom/platform/usercenter/network/safe/SecurityProtocolManager$SecurityKeys;->mAES:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 83
    const-string v0, "SecurityProtocolManager"

    const-string v2, "encrypt fail aes is null"

    invoke-static {v0, v2}, Lcom/platform/usercenter/tools/log/UCLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    return-object v1

    .line 87
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/platform/usercenter/network/safe/SecurityProtocolManager$SecurityKeys;->mAES:Ljava/lang/String;

    iget-object v2, p0, Lcom/platform/usercenter/network/safe/SecurityProtocolManager$SecurityKeys;->mIV:[B

    invoke-static {p1, v0, v2}, Lcom/platform/usercenter/tools/security/AESUtilTest;->aesEncryptWithPassKey(Ljava/lang/String;Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 88
    :catch_0
    move-exception v0

    .line 89
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/platform/usercenter/tools/log/UCLogUtil;->e(Ljava/lang/Exception;)V

    .line 91
    .end local v0    # "e":Ljava/lang/Exception;
    return-object v1
.end method
