.class public Lcom/heytap/shield/authcode/info/PublicKeyInfo;
.super Ljava/lang/Object;
.source "PublicKeyInfo.java"


# instance fields
.field private mPublicKey:Ljava/lang/String;

.field private mStatus:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "publicKey"    # Ljava/lang/String;
    .param p2, "status"    # Ljava/lang/String;

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/heytap/shield/authcode/info/PublicKeyInfo;->mPublicKey:Ljava/lang/String;

    .line 19
    iput-object p2, p0, Lcom/heytap/shield/authcode/info/PublicKeyInfo;->mStatus:Ljava/lang/String;

    .line 20
    return-void
.end method


# virtual methods
.method public getPublicKey()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/heytap/shield/authcode/info/PublicKeyInfo;->mPublicKey:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/heytap/shield/authcode/info/PublicKeyInfo;->mStatus:Ljava/lang/String;

    return-object v0
.end method

.method public setPublicKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "publicKey"    # Ljava/lang/String;

    .line 27
    iput-object p1, p0, Lcom/heytap/shield/authcode/info/PublicKeyInfo;->mPublicKey:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0
    .param p1, "status"    # Ljava/lang/String;

    .line 35
    iput-object p1, p0, Lcom/heytap/shield/authcode/info/PublicKeyInfo;->mStatus:Ljava/lang/String;

    .line 36
    return-void
.end method
