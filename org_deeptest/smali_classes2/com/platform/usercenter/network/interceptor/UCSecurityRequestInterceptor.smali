.class public Lcom/platform/usercenter/network/interceptor/UCSecurityRequestInterceptor;
.super Ljava/lang/Object;
.source "UCSecurityRequestInterceptor.java"

# interfaces
.implements Lokhttp3/Interceptor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/platform/usercenter/network/interceptor/UCSecurityRequestInterceptor$LogQueue;
    }
.end annotation


# static fields
.field private static final DECRYPT_FAIL_CODE:I = 0x1466

.field private static final FORMAT_CONTENT_TYPE:Ljava/lang/String; = "%s; charset=%s"

.field public static final HEADER_PROTOCOL_VERSION:Ljava/lang/String; = "3.0"

.field private static final HEADER_SECURITY_CONTENT_TYPE:Ljava/lang/String; = "application/encrypted-json"

.field public static final HEADER_X_PROTOCOL_VERSION:Ljava/lang/String; = "X-Protocol-Version"

.field private static final HEADER_X_SESSION_TICKET:Ljava/lang/String; = "X-Session-Ticket"

.field public static final HEADER_X_SIGNTRUE:Ljava/lang/String; = "X-Signature"

.field private static final KEY_SECURITY_ACCEPT:Ljava/lang/String; = "application/encrypted-json"

.field public static final LOG_DOWNGRADE_REQUEST_END:Ljava/lang/String; = "=================downgrade request end"

.field public static final LOG_END_REQUEST:Ljava/lang/String; = "=================end request"

.field public static final LOG_FIRST_REQUEST_SUCCESS:Ljava/lang/String; = "=================first request success"

.field public static final LOG_HAS_A_AVAILABLE_SECURITYKEYS:Ljava/lang/String; = "has a Available securitykeys"

.field public static final LOG_REQUEST_DOWNGRADE_TIME:Ljava/lang/String; = "=================request downgrade time"

.field public static final LOG_REQUEST_FIRST_TIME:Ljava/lang/String; = "=================request first time"

.field public static final LOG_REQUEST_SECOND_TIME:Ljava/lang/String; = "=================request second time"

.field public static final LOG_SECOND_REQUEST_SUCCESS:Ljava/lang/String; = "=================second request success"

.field public static final LOG_SECURITY_KEYS_UN_AVAILABLE_AND_RESET_SECURITYKEYS:Ljava/lang/String; = "mSecurityKeys unAvailable and reset securitykeys"

.field private static final STATUS_CODE_DECRYPT_FAIL:I = 0xde

.field private static final TAG:Ljava/lang/String; = "SecurityRequest"

.field private static TAG_SUFFIX:Ljava/lang/String;


# instance fields
.field private mHeaderSigntrueV1:Ljava/lang/String;

.field private mHeaderSigntrueV2:Ljava/lang/String;

.field private final mLogs:Lcom/platform/usercenter/network/interceptor/UCSecurityRequestInterceptor$LogQueue;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 53
    const-string v0, "SecurityRequest"

    sput-object v0, Lcom/platform/usercenter/network/interceptor/UCSecurityRequestInterceptor;->TAG_SUFFIX:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 348
    new-instance v0, Lcom/platform/usercenter/network/interceptor/UCSecurityRequestInterceptor$LogQueue;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/platform/usercenter/network/interceptor/UCSecurityRequestInterceptor$LogQueue;-><init>(Lcom/platform/usercenter/network/interceptor/UCSecurityRequestInterceptor$1;)V

    iput-object v0, p0, Lcom/platform/usercenter/network/interceptor/UCSecurityRequestInterceptor;->mLogs:Lcom/platform/usercenter/network/interceptor/UCSecurityRequestInterceptor$LogQueue;

    .line 360
    return-void
.end method

.method private static bodyToString(Lokhttp3/RequestBody;)Ljava/lang/String;
    .locals 2
    .param p0, "src"    # Lokhttp3/RequestBody;

    .line 333
    :try_start_0
    new-instance v0, Lokio/Buffer;

    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    .line 334
    .local v0, "buffer":Lokio/Buffer;
    invoke-virtual {p0, v0}, Lokhttp3/RequestBody;->writeTo(Lokio/BufferedSink;)V

    .line 335
    invoke-virtual {v0}, Lokio/Buffer;->readUtf8()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 336
    .end local v0    # "buffer":Lokio/Buffer;
    :catch_0
    move-exception v0

    .line 337
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 339
    .end local v0    # "e":Ljava/io/IOException;
    const/4 v0, 0x0

    return-object v0
.end method

.method private checkAndSetProtocolV1(Lokhttp3/Headers$Builder;Ljava/lang/String;Lcom/platform/usercenter/network/safe/SecurityProtocolManager$SecurityKeys;)V
    .locals 2
    .param p1, "encryptHeader"    # Lokhttp3/Headers$Builder;
    .param p2, "encryptXSecurity"    # Ljava/lang/String;
    .param p3, "mSecurityKeys"    # Lcom/platform/usercenter/network/safe/SecurityProtocolManager$SecurityKeys;

    .line 245
    const-string v0, "X-Security"

    invoke-virtual {p0, v0, p2}, Lcom/platform/usercenter/network/interceptor/UCSecurityRequestInterceptor;->checkNameAndValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 246
    const-string v0, "X-Security"

    invoke-virtual {p1, v0, p2}, Lokhttp3/Headers$Builder;->set(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Headers$Builder;

    .line 249
    :cond_0
    sget-object v0, Lcom/platform/usercenter/network/header/UCHeaderHelperV1;->HEADER_X_KEY:Ljava/lang/String;

    iget-object v1, p3, Lcom/platform/usercenter/network/safe/SecurityProtocolManager$SecurityKeys;->mRSA:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/platform/usercenter/network/interceptor/UCSecurityRequestInterceptor;->checkNameAndValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 250
    sget-object v0, Lcom/platform/usercenter/network/header/UCHeaderHelperV1;->HEADER_X_KEY:Ljava/lang/String;

    iget-object v1, p3, Lcom/platform/usercenter/network/safe/SecurityProtocolManager$SecurityKeys;->mRSA:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lokhttp3/Headers$Builder;->set(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Headers$Builder;

    .line 251
    const-string v0, "X-I-V"

    iget-object v1, p3, Lcom/platform/usercenter/network/safe/SecurityProtocolManager$SecurityKeys;->mIVStr:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lokhttp3/Headers$Builder;->set(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Headers$Builder;

    .line 254
    :cond_1
    const-string v0, "X-Session-Ticket"

    iget-object v1, p3, Lcom/platform/usercenter/network/safe/SecurityProtocolManager$SecurityKeys;->mSecurityTicket:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/platform/usercenter/network/interceptor/UCSecurityRequestInterceptor;->checkNameAndValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 255
    const-string v0, "X-Session-Ticket"

    iget-object v1, p3, Lcom/platform/usercenter/network/safe/SecurityProtocolManager$SecurityKeys;->mSecurityTicket:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lokhttp3/Headers$Builder;->set(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Headers$Builder;

    .line 257
    :cond_2
    const-string v0, "X-Protocol-Version"

    const-string v1, "3.0"

    invoke-virtual {p1, v0, v1}, Lokhttp3/Headers$Builder;->set(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Headers$Builder;

    .line 258
    return-void
.end method

.method private checkAndSetProtocolV2(Lokhttp3/Headers$Builder;Ljava/lang/String;Lcom/platform/usercenter/network/safe/SecurityProtocolManager$SecurityKeys;)V
    .locals 4
    .param p1, "encryptHeader"    # Lokhttp3/Headers$Builder;
    .param p2, "encryptXSecurityV2"    # Ljava/lang/String;
    .param p3, "mSecurityKeys"    # Lcom/platform/usercenter/network/safe/SecurityProtocolManager$SecurityKeys;

    .line 231
    const-string v0, "X-Safety"

    invoke-virtual {p0, v0, p2}, Lcom/platform/usercenter/network/interceptor/UCSecurityRequestInterceptor;->checkNameAndValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 232
    const-string v0, "X-Safety"

    invoke-virtual {p1, v0, p2}, Lokhttp3/Headers$Builder;->set(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Headers$Builder;

    .line 234
    :cond_0
    sget-object v0, Lcom/platform/usercenter/BaseApp;->mContext:Landroid/content/Context;

    iget-object v1, p3, Lcom/platform/usercenter/network/safe/SecurityProtocolManager$SecurityKeys;->mRSA:Ljava/lang/String;

    iget-object v2, p3, Lcom/platform/usercenter/network/safe/SecurityProtocolManager$SecurityKeys;->mSecurityTicket:Ljava/lang/String;

    iget-object v3, p3, Lcom/platform/usercenter/network/safe/SecurityProtocolManager$SecurityKeys;->mIVStr:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/platform/usercenter/network/header/UCHeaderHelperV2$HeaderXProtocol;->buildHeader(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 236
    .local v0, "xprotocol":Ljava/lang/String;
    const-string v1, "X-Protocol"

    invoke-virtual {p0, v1, v0}, Lcom/platform/usercenter/network/interceptor/UCSecurityRequestInterceptor;->checkNameAndValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 237
    const-string v1, "X-Protocol"

    invoke-virtual {p1, v1, v0}, Lokhttp3/Headers$Builder;->set(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Headers$Builder;

    .line 239
    :cond_1
    const-string v1, "X-Protocol-Ver"

    const-string v2, "3.0"

    invoke-virtual {p1, v1, v2}, Lokhttp3/Headers$Builder;->set(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Headers$Builder;

    .line 240
    return-void
.end method

.method private decryptResponse(Lokhttp3/Response;Lcom/platform/usercenter/network/safe/SecurityProtocolManager$SecurityKeys;Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Response;
    .locals 9
    .param p1, "srcResponse"    # Lokhttp3/Response;
    .param p2, "securityKeys"    # Lcom/platform/usercenter/network/safe/SecurityProtocolManager$SecurityKeys;
    .param p3, "srcXSecurityHeader"    # Ljava/lang/String;
    .param p4, "srcXSecurityHeaderV2"    # Ljava/lang/String;

    .line 262
    invoke-virtual {p1}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v0

    .line 263
    .local v0, "respHeader":Lokhttp3/Headers;
    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v1

    .line 264
    .local v1, "responseBody":Lokhttp3/ResponseBody;
    invoke-direct {p0, p1}, Lcom/platform/usercenter/network/interceptor/UCSecurityRequestInterceptor;->success(Lokhttp3/Response;)Z

    move-result v2

    const/16 v3, 0x1466

    if-eqz v2, :cond_2

    .line 265
    const/4 v2, 0x0

    .line 267
    .local v2, "stringResp":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v4

    invoke-virtual {v4}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v4

    .line 271
    goto :goto_0

    .line 268
    :catch_0
    move-exception v4

    .line 269
    .local v4, "e":Ljava/io/IOException;
    iget-object v5, p0, Lcom/platform/usercenter/network/interceptor/UCSecurityRequestInterceptor;->mLogs:Lcom/platform/usercenter/network/interceptor/UCSecurityRequestInterceptor$LogQueue;

    const-string v6, "decryptResponse srcResponse.body().string() IOException = "

    invoke-virtual {v5, v6}, Lcom/platform/usercenter/network/interceptor/UCSecurityRequestInterceptor$LogQueue;->offer(Ljava/lang/String;)Z

    .line 270
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 273
    .end local v4    # "e":Ljava/io/IOException;
    :goto_0
    if-eqz v0, :cond_0

    const-string v4, "X-Session-Ticket"

    invoke-virtual {v0, v4}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 274
    iget-object v4, p0, Lcom/platform/usercenter/network/interceptor/UCSecurityRequestInterceptor;->mLogs:Lcom/platform/usercenter/network/interceptor/UCSecurityRequestInterceptor$LogQueue;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "decryptResponse parserSecurityTicketHeader = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "X-Session-Ticket"

    invoke-virtual {v0, v6}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/platform/usercenter/network/interceptor/UCSecurityRequestInterceptor$LogQueue;->offer(Ljava/lang/String;)Z

    .line 275
    const-string v4, "X-Session-Ticket"

    invoke-virtual {v0, v4}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p2, Lcom/platform/usercenter/network/safe/SecurityProtocolManager$SecurityKeys;->mSecurityTicket:Ljava/lang/String;

    .line 278
    :cond_0
    invoke-virtual {p2, v2}, Lcom/platform/usercenter/network/safe/SecurityProtocolManager$SecurityKeys;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 279
    .local v4, "decrypt":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 281
    iget-object v5, p0, Lcom/platform/usercenter/network/interceptor/UCSecurityRequestInterceptor;->mLogs:Lcom/platform/usercenter/network/interceptor/UCSecurityRequestInterceptor$LogQueue;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "decryptResponse decrypt fail and throw SecurityDecryptError ; the aeskey = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p2, Lcom/platform/usercenter/network/safe/SecurityProtocolManager$SecurityKeys;->mAES:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/platform/usercenter/network/interceptor/UCSecurityRequestInterceptor$LogQueue;->offer(Ljava/lang/String;)Z

    .line 282
    invoke-virtual {p1}, Lokhttp3/Response;->newBuilder()Lokhttp3/Response$Builder;

    move-result-object v5

    invoke-virtual {v5, v3}, Lokhttp3/Response$Builder;->code(I)Lokhttp3/Response$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    move-result-object p1

    goto :goto_1

    .line 285
    :cond_1
    invoke-static {}, Lcom/platform/usercenter/network/safe/SecurityProtocolManager;->getInstance()Lcom/platform/usercenter/network/safe/SecurityProtocolManager;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/platform/usercenter/network/safe/SecurityProtocolManager;->setSecurityKeys(Lcom/platform/usercenter/network/safe/SecurityProtocolManager$SecurityKeys;)V

    .line 286
    nop

    .line 287
    invoke-virtual {p1}, Lokhttp3/Response;->newBuilder()Lokhttp3/Response$Builder;

    move-result-object v3

    invoke-virtual {v1}, Lokhttp3/ResponseBody;->contentType()Lokhttp3/MediaType;

    move-result-object v5

    invoke-static {v5, v4}, Lokhttp3/ResponseBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/ResponseBody;

    move-result-object v5

    invoke-virtual {v3, v5}, Lokhttp3/Response$Builder;->body(Lokhttp3/ResponseBody;)Lokhttp3/Response$Builder;

    move-result-object v3

    .line 288
    invoke-virtual {v3}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    move-result-object p1

    .line 291
    .end local v2    # "stringResp":Ljava/lang/String;
    .end local v4    # "decrypt":Ljava/lang/String;
    :goto_1
    goto/16 :goto_4

    .line 293
    :cond_2
    invoke-virtual {p1}, Lokhttp3/Response;->code()I

    move-result v2

    const/16 v4, 0xde

    if-ne v2, v4, :cond_6

    .line 295
    if-eqz v0, :cond_6

    const-string v2, "X-Signature"

    invoke-virtual {v0, v2}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 296
    const-string v2, "X-Signature"

    invoke-virtual {v0, v2}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 297
    .local v2, "signture":Ljava/lang/String;
    iget-object v4, p0, Lcom/platform/usercenter/network/interceptor/UCSecurityRequestInterceptor;->mHeaderSigntrueV1:Ljava/lang/String;

    invoke-static {v4}, Lcom/platform/usercenter/tools/algorithm/MD5Util;->md5Hex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 298
    .local v4, "md5":Ljava/lang/String;
    iget-object v5, p0, Lcom/platform/usercenter/network/interceptor/UCSecurityRequestInterceptor;->mHeaderSigntrueV2:Ljava/lang/String;

    invoke-static {v5}, Lcom/platform/usercenter/tools/algorithm/MD5Util;->md5Hex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 299
    .local v5, "md5v2":Ljava/lang/String;
    sget-object v6, Lcom/platform/usercenter/tools/security/RsaCoder;->Key:Ljava/lang/String;

    .line 300
    invoke-static {v4, v2, v6}, Lcom/platform/usercenter/tools/security/RsaCoder;->doCheck(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    sget-object v6, Lcom/platform/usercenter/tools/security/RsaCoder;->Key:Ljava/lang/String;

    invoke-static {v5, v2, v6}, Lcom/platform/usercenter/tools/security/RsaCoder;->doCheck(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_2

    :cond_3
    const/4 v6, 0x0

    goto :goto_3

    :cond_4
    :goto_2
    const/4 v6, 0x1

    .line 302
    .local v6, "verify":Z
    :goto_3
    if-eqz v6, :cond_5

    .line 305
    iget-object v7, p0, Lcom/platform/usercenter/network/interceptor/UCSecurityRequestInterceptor;->mLogs:Lcom/platform/usercenter/network/interceptor/UCSecurityRequestInterceptor$LogQueue;

    const-string v8, "parseNetworkResponse receive statuscode 222 and verify signture success , throw SecurityDecryptError"

    invoke-virtual {v7, v8}, Lcom/platform/usercenter/network/interceptor/UCSecurityRequestInterceptor$LogQueue;->offer(Ljava/lang/String;)Z

    .line 308
    invoke-virtual {p1}, Lokhttp3/Response;->newBuilder()Lokhttp3/Response$Builder;

    move-result-object v7

    invoke-virtual {v7, v3}, Lokhttp3/Response$Builder;->code(I)Lokhttp3/Response$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    move-result-object p1

    goto :goto_4

    .line 311
    :cond_5
    iget-object v3, p0, Lcom/platform/usercenter/network/interceptor/UCSecurityRequestInterceptor;->mLogs:Lcom/platform/usercenter/network/interceptor/UCSecurityRequestInterceptor$LogQueue;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "decryptResponse receive statuscode 222 signture = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/platform/usercenter/network/interceptor/UCSecurityRequestInterceptor$LogQueue;->offer(Ljava/lang/String;)Z

    .line 312
    iget-object v3, p0, Lcom/platform/usercenter/network/interceptor/UCSecurityRequestInterceptor;->mLogs:Lcom/platform/usercenter/network/interceptor/UCSecurityRequestInterceptor$LogQueue;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "decryptResponse receive statuscode 222 mEncryptHeader  = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/platform/usercenter/network/interceptor/UCSecurityRequestInterceptor$LogQueue;->offer(Ljava/lang/String;)Z

    .line 313
    iget-object v3, p0, Lcom/platform/usercenter/network/interceptor/UCSecurityRequestInterceptor;->mLogs:Lcom/platform/usercenter/network/interceptor/UCSecurityRequestInterceptor$LogQueue;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "decryptResponse receive statuscode 222 mEncryptHeader md5  = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/platform/usercenter/network/interceptor/UCSecurityRequestInterceptor$LogQueue;->offer(Ljava/lang/String;)Z

    .line 314
    iget-object v3, p0, Lcom/platform/usercenter/network/interceptor/UCSecurityRequestInterceptor;->mLogs:Lcom/platform/usercenter/network/interceptor/UCSecurityRequestInterceptor$LogQueue;

    const-string v7, "decryptResponse receive statuscode 222 and verify signture fail"

    invoke-virtual {v3, v7}, Lcom/platform/usercenter/network/interceptor/UCSecurityRequestInterceptor$LogQueue;->offer(Ljava/lang/String;)Z

    .line 319
    .end local v2    # "signture":Ljava/lang/String;
    .end local v4    # "md5":Ljava/lang/String;
    .end local v5    # "md5v2":Ljava/lang/String;
    .end local v6    # "verify":Z
    :cond_6
    :goto_4
    return-object p1
.end method

.method private encryptRequest(Lokhttp3/Request;Lokhttp3/RequestBody;Lokhttp3/Headers;Ljava/lang/String;Ljava/lang/String;Lcom/platform/usercenter/network/safe/SecurityProtocolManager$SecurityKeys;)Lokhttp3/Request;
    .locals 6
    .param p1, "srcRequst"    # Lokhttp3/Request;
    .param p2, "srcBody"    # Lokhttp3/RequestBody;
    .param p3, "srcHeader"    # Lokhttp3/Headers;
    .param p4, "srcXSecurityHeader"    # Ljava/lang/String;
    .param p5, "srcXSecurityHeaderV2"    # Ljava/lang/String;
    .param p6, "mSecurityKeys"    # Lcom/platform/usercenter/network/safe/SecurityProtocolManager$SecurityKeys;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 195
    move-object v0, p1

    .line 196
    .local v0, "encryptRequest":Lokhttp3/Request;
    invoke-virtual {p3}, Lokhttp3/Headers;->newBuilder()Lokhttp3/Headers$Builder;

    move-result-object v1

    .line 199
    .local v1, "encryptHeader":Lokhttp3/Headers$Builder;
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 200
    invoke-virtual {p6, p4}, Lcom/platform/usercenter/network/safe/SecurityProtocolManager$SecurityKeys;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    .local v3, "encryptXSecurity":Ljava/lang/String;
    iput-object v2, p0, Lcom/platform/usercenter/network/interceptor/UCSecurityRequestInterceptor;->mHeaderSigntrueV1:Ljava/lang/String;

    .line 201
    nop

    .line 202
    invoke-virtual {p6, p5}, Lcom/platform/usercenter/network/safe/SecurityProtocolManager$SecurityKeys;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lcom/platform/usercenter/network/header/HeaderConstant;->FORMAT_UTF_8:Ljava/lang/String;

    invoke-static {v2, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v4, v2

    .local v4, "encryptXSecurityV2":Ljava/lang/String;
    iput-object v2, p0, Lcom/platform/usercenter/network/interceptor/UCSecurityRequestInterceptor;->mHeaderSigntrueV2:Ljava/lang/String;

    .line 205
    sget-object v2, Lcom/platform/usercenter/network/header/HeaderConstant;->HEAD_K_ACCEPT:Ljava/lang/String;

    const-string v5, "application/encrypted-json"

    invoke-virtual {v1, v2, v5}, Lokhttp3/Headers$Builder;->set(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Headers$Builder;

    .line 206
    invoke-direct {p0, v1, v3, p6}, Lcom/platform/usercenter/network/interceptor/UCSecurityRequestInterceptor;->checkAndSetProtocolV1(Lokhttp3/Headers$Builder;Ljava/lang/String;Lcom/platform/usercenter/network/safe/SecurityProtocolManager$SecurityKeys;)V

    .line 207
    invoke-direct {p0, v1, v4, p6}, Lcom/platform/usercenter/network/interceptor/UCSecurityRequestInterceptor;->checkAndSetProtocolV2(Lokhttp3/Headers$Builder;Ljava/lang/String;Lcom/platform/usercenter/network/safe/SecurityProtocolManager$SecurityKeys;)V

    .line 217
    invoke-virtual {v0}, Lokhttp3/Request;->newBuilder()Lokhttp3/Request$Builder;

    move-result-object v2

    invoke-virtual {v1}, Lokhttp3/Headers$Builder;->build()Lokhttp3/Headers;

    move-result-object v5

    invoke-virtual {v2, v5}, Lokhttp3/Request$Builder;->headers(Lokhttp3/Headers;)Lokhttp3/Request$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    .line 220
    .end local v3    # "encryptXSecurity":Ljava/lang/String;
    .end local v4    # "encryptXSecurityV2":Ljava/lang/String;
    :cond_0
    invoke-static {p2}, Lcom/platform/usercenter/network/interceptor/UCSecurityRequestInterceptor;->bodyToString(Lokhttp3/RequestBody;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p6, v2}, Lcom/platform/usercenter/network/safe/SecurityProtocolManager$SecurityKeys;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 222
    .local v2, "encyryptBodyStr":Ljava/lang/String;
    invoke-virtual {v0}, Lokhttp3/Request;->newBuilder()Lokhttp3/Request$Builder;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/platform/usercenter/network/interceptor/UCSecurityRequestInterceptor;->formatContentType(Z)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v4

    invoke-static {v4, v2}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v4

    invoke-virtual {v3, v4}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v3

    .line 223
    invoke-virtual {v3}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    .line 225
    return-object v0
.end method

.method private success(Lokhttp3/Response;)Z
    .locals 2
    .param p1, "response"    # Lokhttp3/Response;

    .line 323
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lokhttp3/Response;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lokhttp3/Response;->code()I

    move-result v0

    const/16 v1, 0xde

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public checkNameAndValue(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 327
    invoke-static {p1, p2}, Lcom/platform/usercenter/network/header/HeaderConstant;->checkNameAndValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public formatContentType(Z)Ljava/lang/String;
    .locals 4
    .param p1, "isEncrypt"    # Z

    .line 343
    const-string v0, "%s; charset=%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    if-eqz p1, :cond_0

    sget-object v2, Lcom/platform/usercenter/network/interceptor/UCSecurityRequestInterceptor;->HEADER_SECURITY_CONTENT_TYPE:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v2, "application/json"

    :goto_0
    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    sget-object v3, Lcom/platform/usercenter/network/header/HeaderConstant;->FORMAT_UTF_8:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 19
    .param p1, "chain"    # Lokhttp3/Interceptor$Chain;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 99
    move-object/from16 v8, p0

    move-object/from16 v9, p1

    invoke-interface/range {p1 .. p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v10

    .line 100
    .local v10, "srcRequest":Lokhttp3/Request;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SecurityRequest:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/HttpUrl;->encodedPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/platform/usercenter/network/interceptor/UCSecurityRequestInterceptor;->TAG_SUFFIX:Ljava/lang/String;

    .line 101
    invoke-static {}, Lcom/platform/usercenter/network/safe/SecurityProtocolManager;->getInstance()Lcom/platform/usercenter/network/safe/SecurityProtocolManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/platform/usercenter/network/safe/SecurityProtocolManager;->getSecurityKeys()Lcom/platform/usercenter/network/safe/SecurityProtocolManager$SecurityKeys;

    move-result-object v0

    .line 102
    .local v0, "mSecurityKeys":Lcom/platform/usercenter/network/safe/SecurityProtocolManager$SecurityKeys;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/platform/usercenter/network/safe/SecurityProtocolManager$SecurityKeys;->available()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 106
    :cond_0
    iget-object v1, v8, Lcom/platform/usercenter/network/interceptor/UCSecurityRequestInterceptor;->mLogs:Lcom/platform/usercenter/network/interceptor/UCSecurityRequestInterceptor$LogQueue;

    const-string v2, "has a Available securitykeys"

    invoke-virtual {v1, v2}, Lcom/platform/usercenter/network/interceptor/UCSecurityRequestInterceptor$LogQueue;->offer(Ljava/lang/String;)Z

    goto :goto_1

    .line 103
    :cond_1
    :goto_0
    iget-object v1, v8, Lcom/platform/usercenter/network/interceptor/UCSecurityRequestInterceptor;->mLogs:Lcom/platform/usercenter/network/interceptor/UCSecurityRequestInterceptor$LogQueue;

    const-string v2, "mSecurityKeys unAvailable and reset securitykeys"

    invoke-virtual {v1, v2}, Lcom/platform/usercenter/network/interceptor/UCSecurityRequestInterceptor$LogQueue;->offer(Ljava/lang/String;)Z

    .line 104
    new-instance v1, Lcom/platform/usercenter/network/safe/SecurityProtocolManager$SecurityKeys;

    invoke-direct {v1}, Lcom/platform/usercenter/network/safe/SecurityProtocolManager$SecurityKeys;-><init>()V

    move-object v0, v1

    .line 108
    :goto_1
    iget-object v1, v8, Lcom/platform/usercenter/network/interceptor/UCSecurityRequestInterceptor;->mLogs:Lcom/platform/usercenter/network/interceptor/UCSecurityRequestInterceptor$LogQueue;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " SECURITY Ticket =  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/platform/usercenter/network/safe/SecurityProtocolManager$SecurityKeys;->mSecurityTicket:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/platform/usercenter/network/interceptor/UCSecurityRequestInterceptor$LogQueue;->offer(Ljava/lang/String;)Z

    .line 109
    invoke-virtual {v10}, Lokhttp3/Request;->headers()Lokhttp3/Headers;

    move-result-object v11

    .line 110
    .local v11, "srcHeader":Lokhttp3/Headers;
    invoke-virtual {v10}, Lokhttp3/Request;->body()Lokhttp3/RequestBody;

    move-result-object v12

    .line 111
    .local v12, "srcBody":Lokhttp3/RequestBody;
    sget-object v13, Lcom/platform/usercenter/network/NetworkModule$Builder;->configProvider:Ljava/lang/ref/WeakReference;

    .line 112
    .local v13, "weakReference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/platform/usercenter/network/provider/INetConfigProvider;>;"
    const/4 v14, 0x0

    if-eqz v13, :cond_5

    invoke-virtual {v13}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 113
    invoke-virtual {v13}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/platform/usercenter/network/provider/INetConfigProvider;

    .line 114
    .local v1, "provider":Lcom/platform/usercenter/network/provider/INetConfigProvider;
    invoke-interface {v1}, Lcom/platform/usercenter/network/provider/INetConfigProvider;->isDebug()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Lcom/platform/usercenter/network/provider/INetConfigProvider;->isEncryption()Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x1

    goto :goto_2

    :cond_2
    move v2, v14

    .line 115
    .local v2, "isNeedDecrypt":Z
    :goto_2
    if-eqz v2, :cond_5

    .line 116
    invoke-static {}, Lcom/platform/usercenter/network/safe/SecurityProtocolManager;->getInstance()Lcom/platform/usercenter/network/safe/SecurityProtocolManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/platform/usercenter/network/safe/SecurityProtocolManager;->clearSecurityKeys()V

    .line 117
    sget-object v3, Lcom/platform/usercenter/BaseApp;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/platform/usercenter/tools/device/OpenIDHelper;->getOpenIdHeader(Landroid/content/Context;)Ljava/util/concurrent/ConcurrentHashMap;

    .line 118
    invoke-virtual {v10}, Lokhttp3/Request;->newBuilder()Lokhttp3/Request$Builder;

    move-result-object v3

    sget-object v4, Lcom/platform/usercenter/network/header/HeaderConstant;->HEAD_K_ACCEPT:Ljava/lang/String;

    const-string v5, "application/json"

    invoke-virtual {v3, v4, v5}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v3

    const-string v4, "X-Protocol-Version"

    const-string v5, "3.0"

    .line 120
    invoke-virtual {v3, v4, v5}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v3

    const-string v4, "X-Client-GUID"

    .line 121
    invoke-static {}, Lcom/platform/usercenter/tools/device/OpenIDHelper;->getGUID()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_3

    const-string v5, ""

    goto :goto_3

    :cond_3
    invoke-static {}, Lcom/platform/usercenter/tools/device/OpenIDHelper;->getGUID()Ljava/lang/String;

    move-result-object v5

    :goto_3
    invoke-virtual {v3, v4, v5}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v3

    const-string v4, "imei"

    sget-object v5, Lcom/platform/usercenter/BaseApp;->mContext:Landroid/content/Context;

    .line 122
    invoke-static {v5}, Lcom/platform/usercenter/tools/device/UCDeviceInfoUtil;->getOSIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_4

    const-string v5, ""

    goto :goto_4

    :cond_4
    sget-object v5, Lcom/platform/usercenter/BaseApp;->mContext:Landroid/content/Context;

    .line 123
    invoke-static {v5}, Lcom/platform/usercenter/tools/device/UCDeviceInfoUtil;->getOSIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 122
    :goto_4
    invoke-virtual {v3, v4, v5}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v3

    .line 125
    invoke-virtual {v8, v14}, Lcom/platform/usercenter/network/interceptor/UCSecurityRequestInterceptor;->formatContentType(Z)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v4

    .line 126
    invoke-static {v12}, Lcom/platform/usercenter/network/interceptor/UCSecurityRequestInterceptor;->bodyToString(Lokhttp3/RequestBody;)Ljava/lang/String;

    move-result-object v5

    .line 125
    invoke-static {v4, v5}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v4

    .line 124
    invoke-virtual {v3, v4}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v3

    .line 126
    invoke-virtual {v3}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v3

    .line 118
    invoke-interface {v9, v3}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object v3

    return-object v3

    .line 130
    .end local v1    # "provider":Lcom/platform/usercenter/network/provider/INetConfigProvider;
    .end local v2    # "isNeedDecrypt":Z
    :cond_5
    sget-object v1, Lcom/platform/usercenter/BaseApp;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/platform/usercenter/network/header/DeviceSecurityHeader;->getDeviceSecurityHeader(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v15

    .line 132
    .local v15, "securityHeader":Ljava/lang/String;
    move-object v7, v15

    .line 133
    .local v7, "srcXSecurityHeader":Ljava/lang/String;
    move-object v6, v15

    .line 136
    .local v6, "srcXSecurityHeaderV2":Ljava/lang/String;
    iget-object v1, v8, Lcom/platform/usercenter/network/interceptor/UCSecurityRequestInterceptor;->mLogs:Lcom/platform/usercenter/network/interceptor/UCSecurityRequestInterceptor$LogQueue;

    const-string v2, "=================request first time"

    invoke-virtual {v1, v2}, Lcom/platform/usercenter/network/interceptor/UCSecurityRequestInterceptor$LogQueue;->offer(Ljava/lang/String;)Z

    .line 137
    move-object/from16 v1, p0

    move-object v2, v10

    move-object v3, v12

    move-object v4, v11

    move-object v5, v7

    move-object/from16 v16, v6

    .end local v6    # "srcXSecurityHeaderV2":Ljava/lang/String;
    .local v16, "srcXSecurityHeaderV2":Ljava/lang/String;
    move-object v14, v7

    .end local v7    # "srcXSecurityHeader":Ljava/lang/String;
    .local v14, "srcXSecurityHeader":Ljava/lang/String;
    move-object v7, v0

    invoke-direct/range {v1 .. v7}, Lcom/platform/usercenter/network/interceptor/UCSecurityRequestInterceptor;->encryptRequest(Lokhttp3/Request;Lokhttp3/RequestBody;Lokhttp3/Headers;Ljava/lang/String;Ljava/lang/String;Lcom/platform/usercenter/network/safe/SecurityProtocolManager$SecurityKeys;)Lokhttp3/Request;

    move-result-object v1

    invoke-interface {v9, v1}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object v1

    .line 140
    .local v1, "firstResponse":Lokhttp3/Response;
    move-object/from16 v17, v1

    .line 141
    .local v17, "destResponse":Lokhttp3/Response;
    move-object/from16 v7, v16

    .end local v16    # "srcXSecurityHeaderV2":Ljava/lang/String;
    .local v7, "srcXSecurityHeaderV2":Ljava/lang/String;
    invoke-direct {v8, v1, v0, v14, v7}, Lcom/platform/usercenter/network/interceptor/UCSecurityRequestInterceptor;->decryptResponse(Lokhttp3/Response;Lcom/platform/usercenter/network/safe/SecurityProtocolManager$SecurityKeys;Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Response;

    move-result-object v6

    .line 142
    .end local v1    # "firstResponse":Lokhttp3/Response;
    .local v6, "firstResponse":Lokhttp3/Response;
    invoke-direct {v8, v6}, Lcom/platform/usercenter/network/interceptor/UCSecurityRequestInterceptor;->success(Lokhttp3/Response;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 143
    move-object/from16 v17, v6

    .line 144
    iget-object v1, v8, Lcom/platform/usercenter/network/interceptor/UCSecurityRequestInterceptor;->mLogs:Lcom/platform/usercenter/network/interceptor/UCSecurityRequestInterceptor$LogQueue;

    const-string v2, "=================first request success"

    invoke-virtual {v1, v2}, Lcom/platform/usercenter/network/interceptor/UCSecurityRequestInterceptor$LogQueue;->offer(Ljava/lang/String;)Z

    .line 172
    move-object v1, v0

    move-object/from16 v16, v6

    move-object/from16 v18, v11

    move-object v11, v7

    goto/16 :goto_6

    .line 145
    :cond_6
    invoke-virtual {v6}, Lokhttp3/Response;->code()I

    move-result v1

    const/16 v5, 0x1466

    if-ne v1, v5, :cond_9

    .line 147
    iget-object v1, v8, Lcom/platform/usercenter/network/interceptor/UCSecurityRequestInterceptor;->mLogs:Lcom/platform/usercenter/network/interceptor/UCSecurityRequestInterceptor$LogQueue;

    const-string v2, "=================request second time"

    invoke-virtual {v1, v2}, Lcom/platform/usercenter/network/interceptor/UCSecurityRequestInterceptor$LogQueue;->offer(Ljava/lang/String;)Z

    .line 148
    invoke-static {}, Lcom/platform/usercenter/network/safe/SecurityProtocolManager;->getInstance()Lcom/platform/usercenter/network/safe/SecurityProtocolManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/platform/usercenter/network/safe/SecurityProtocolManager;->clearSecurityKeys()V

    .line 149
    new-instance v1, Lcom/platform/usercenter/network/safe/SecurityProtocolManager$SecurityKeys;

    invoke-direct {v1}, Lcom/platform/usercenter/network/safe/SecurityProtocolManager$SecurityKeys;-><init>()V

    move-object v0, v1

    .line 154
    move-object/from16 v1, p0

    move-object v2, v10

    move-object v3, v12

    move-object v4, v11

    move-object/from16 v18, v11

    move v11, v5

    .end local v11    # "srcHeader":Lokhttp3/Headers;
    .local v18, "srcHeader":Lokhttp3/Headers;
    move-object v5, v14

    move-object/from16 v16, v6

    .end local v6    # "firstResponse":Lokhttp3/Response;
    .local v16, "firstResponse":Lokhttp3/Response;
    move-object v6, v7

    move-object v11, v7

    .end local v7    # "srcXSecurityHeaderV2":Ljava/lang/String;
    .local v11, "srcXSecurityHeaderV2":Ljava/lang/String;
    move-object v7, v0

    invoke-direct/range {v1 .. v7}, Lcom/platform/usercenter/network/interceptor/UCSecurityRequestInterceptor;->encryptRequest(Lokhttp3/Request;Lokhttp3/RequestBody;Lokhttp3/Headers;Ljava/lang/String;Ljava/lang/String;Lcom/platform/usercenter/network/safe/SecurityProtocolManager$SecurityKeys;)Lokhttp3/Request;

    move-result-object v1

    invoke-interface {v9, v1}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object v1

    .line 156
    .local v1, "secondResponse":Lokhttp3/Response;
    invoke-direct {v8, v1, v0, v14, v11}, Lcom/platform/usercenter/network/interceptor/UCSecurityRequestInterceptor;->decryptResponse(Lokhttp3/Response;Lcom/platform/usercenter/network/safe/SecurityProtocolManager$SecurityKeys;Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Response;

    move-result-object v1

    .line 157
    invoke-direct {v8, v1}, Lcom/platform/usercenter/network/interceptor/UCSecurityRequestInterceptor;->success(Lokhttp3/Response;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 158
    iget-object v2, v8, Lcom/platform/usercenter/network/interceptor/UCSecurityRequestInterceptor;->mLogs:Lcom/platform/usercenter/network/interceptor/UCSecurityRequestInterceptor$LogQueue;

    const-string v3, "=================second request success"

    invoke-virtual {v2, v3}, Lcom/platform/usercenter/network/interceptor/UCSecurityRequestInterceptor$LogQueue;->offer(Ljava/lang/String;)Z

    .line 159
    move-object/from16 v17, v1

    .line 172
    .end local v0    # "mSecurityKeys":Lcom/platform/usercenter/network/safe/SecurityProtocolManager$SecurityKeys;
    .local v1, "mSecurityKeys":Lcom/platform/usercenter/network/safe/SecurityProtocolManager$SecurityKeys;
    :cond_7
    :goto_5
    move-object v1, v0

    goto :goto_6

    .line 160
    .restart local v0    # "mSecurityKeys":Lcom/platform/usercenter/network/safe/SecurityProtocolManager$SecurityKeys;
    .local v1, "secondResponse":Lokhttp3/Response;
    :cond_8
    invoke-virtual {v1}, Lokhttp3/Response;->code()I

    move-result v2

    const/16 v3, 0x1466

    if-ne v2, v3, :cond_7

    .line 162
    iget-object v2, v8, Lcom/platform/usercenter/network/interceptor/UCSecurityRequestInterceptor;->mLogs:Lcom/platform/usercenter/network/interceptor/UCSecurityRequestInterceptor$LogQueue;

    const-string v3, "=================request downgrade time"

    invoke-virtual {v2, v3}, Lcom/platform/usercenter/network/interceptor/UCSecurityRequestInterceptor$LogQueue;->offer(Ljava/lang/String;)Z

    .line 163
    invoke-static {}, Lcom/platform/usercenter/network/safe/SecurityProtocolManager;->getInstance()Lcom/platform/usercenter/network/safe/SecurityProtocolManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/platform/usercenter/network/safe/SecurityProtocolManager;->clearSecurityKeys()V

    .line 164
    invoke-virtual {v10}, Lokhttp3/Request;->newBuilder()Lokhttp3/Request$Builder;

    move-result-object v2

    sget-object v3, Lcom/platform/usercenter/network/header/HeaderConstant;->HEAD_K_ACCEPT:Ljava/lang/String;

    const-string v4, "application/json"

    invoke-virtual {v2, v3, v4}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v2

    .line 166
    const/4 v3, 0x0

    invoke-virtual {v8, v3}, Lcom/platform/usercenter/network/interceptor/UCSecurityRequestInterceptor;->formatContentType(Z)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v3

    .line 167
    invoke-static {v12}, Lcom/platform/usercenter/network/interceptor/UCSecurityRequestInterceptor;->bodyToString(Lokhttp3/RequestBody;)Ljava/lang/String;

    move-result-object v4

    .line 166
    invoke-static {v3, v4}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v3

    .line 165
    invoke-virtual {v2, v3}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v2

    .line 167
    invoke-virtual {v2}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v2

    .line 164
    invoke-interface {v9, v2}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object v17

    .line 168
    iget-object v2, v8, Lcom/platform/usercenter/network/interceptor/UCSecurityRequestInterceptor;->mLogs:Lcom/platform/usercenter/network/interceptor/UCSecurityRequestInterceptor$LogQueue;

    const-string v3, "=================downgrade request end"

    invoke-virtual {v2, v3}, Lcom/platform/usercenter/network/interceptor/UCSecurityRequestInterceptor$LogQueue;->offer(Ljava/lang/String;)Z

    goto :goto_5

    .line 172
    .end local v1    # "secondResponse":Lokhttp3/Response;
    .end local v16    # "firstResponse":Lokhttp3/Response;
    .end local v18    # "srcHeader":Lokhttp3/Headers;
    .restart local v6    # "firstResponse":Lokhttp3/Response;
    .restart local v7    # "srcXSecurityHeaderV2":Ljava/lang/String;
    .local v11, "srcHeader":Lokhttp3/Headers;
    :cond_9
    move-object/from16 v16, v6

    move-object/from16 v18, v11

    move-object v11, v7

    move-object v1, v0

    .end local v0    # "mSecurityKeys":Lcom/platform/usercenter/network/safe/SecurityProtocolManager$SecurityKeys;
    .end local v6    # "firstResponse":Lokhttp3/Response;
    .end local v7    # "srcXSecurityHeaderV2":Ljava/lang/String;
    .local v1, "mSecurityKeys":Lcom/platform/usercenter/network/safe/SecurityProtocolManager$SecurityKeys;
    .local v11, "srcXSecurityHeaderV2":Ljava/lang/String;
    .restart local v16    # "firstResponse":Lokhttp3/Response;
    .restart local v18    # "srcHeader":Lokhttp3/Headers;
    :goto_6
    :try_start_0
    iget-object v0, v8, Lcom/platform/usercenter/network/interceptor/UCSecurityRequestInterceptor;->mLogs:Lcom/platform/usercenter/network/interceptor/UCSecurityRequestInterceptor$LogQueue;

    const-string v2, "=================end request"

    invoke-virtual {v0, v2}, Lcom/platform/usercenter/network/interceptor/UCSecurityRequestInterceptor$LogQueue;->offer(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 173
    nop

    .line 175
    invoke-virtual/range {p0 .. p0}, Lcom/platform/usercenter/network/interceptor/UCSecurityRequestInterceptor;->printLog()V

    return-object v17

    :catchall_0
    move-exception v0

    invoke-virtual/range {p0 .. p0}, Lcom/platform/usercenter/network/interceptor/UCSecurityRequestInterceptor;->printLog()V

    throw v0
.end method

.method protected printLog()V
    .locals 4

    .line 352
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/platform/usercenter/network/interceptor/UCSecurityRequestInterceptor;->mLogs:Lcom/platform/usercenter/network/interceptor/UCSecurityRequestInterceptor$LogQueue;

    invoke-virtual {v1}, Lcom/platform/usercenter/network/interceptor/UCSecurityRequestInterceptor$LogQueue;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    if-ge v0, v1, :cond_0

    .line 353
    sget-object v1, Lcom/platform/usercenter/network/interceptor/UCSecurityRequestInterceptor;->TAG_SUFFIX:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/platform/usercenter/network/interceptor/UCSecurityRequestInterceptor;->mLogs:Lcom/platform/usercenter/network/interceptor/UCSecurityRequestInterceptor$LogQueue;

    invoke-virtual {v3}, Lcom/platform/usercenter/network/interceptor/UCSecurityRequestInterceptor$LogQueue;->poll()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/platform/usercenter/tools/log/UCLogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 352
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 357
    .end local v0    # "i":I
    :cond_0
    goto :goto_1

    .line 355
    :catch_0
    move-exception v0

    .line 358
    :goto_1
    return-void
.end method
