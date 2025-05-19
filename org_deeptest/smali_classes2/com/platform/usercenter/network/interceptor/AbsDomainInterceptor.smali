.class public abstract Lcom/platform/usercenter/network/interceptor/AbsDomainInterceptor;
.super Ljava/lang/Object;
.source "AbsDomainInterceptor.java"

# interfaces
.implements Lokhttp3/Interceptor;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract createHttpUrlBuilder(Lokhttp3/HttpUrl;)Lokhttp3/HttpUrl$Builder;
.end method

.method protected abstract getNewHost(Lokhttp3/Request;)Ljava/lang/String;
.end method

.method public intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 8
    .param p1, "chain"    # Lokhttp3/Interceptor$Chain;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 31
    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v0

    .line 32
    .local v0, "request":Lokhttp3/Request;
    invoke-virtual {v0}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v1

    .line 33
    .local v1, "url":Lokhttp3/HttpUrl;
    invoke-virtual {p0, v0}, Lcom/platform/usercenter/network/interceptor/AbsDomainInterceptor;->getNewHost(Lokhttp3/Request;)Ljava/lang/String;

    move-result-object v2

    .line 35
    .local v2, "newHost":Ljava/lang/String;
    const/4 v3, 0x0

    .line 36
    .local v3, "httpUrl":Lokhttp3/HttpUrl;
    invoke-virtual {p0, v1}, Lcom/platform/usercenter/network/interceptor/AbsDomainInterceptor;->createHttpUrlBuilder(Lokhttp3/HttpUrl;)Lokhttp3/HttpUrl$Builder;

    move-result-object v4

    .line 37
    .local v4, "builder":Lokhttp3/HttpUrl$Builder;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 38
    invoke-virtual {v1}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lokhttp3/HttpUrl$Builder;->host(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lokhttp3/HttpUrl$Builder;->build()Lokhttp3/HttpUrl;

    move-result-object v3

    goto :goto_0

    .line 40
    :cond_0
    invoke-virtual {v4, v2}, Lokhttp3/HttpUrl$Builder;->host(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lokhttp3/HttpUrl$Builder;->build()Lokhttp3/HttpUrl;

    move-result-object v3

    .line 42
    :goto_0
    invoke-virtual {v0}, Lokhttp3/Request;->newBuilder()Lokhttp3/Request$Builder;

    move-result-object v5

    .line 43
    invoke-virtual {v5, v3}, Lokhttp3/Request$Builder;->url(Lokhttp3/HttpUrl;)Lokhttp3/Request$Builder;

    move-result-object v5

    .line 44
    invoke-virtual {v5}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v5

    .line 46
    .local v5, "newRequest":Lokhttp3/Request;
    const-string v6, "Final URL-----"

    invoke-virtual {v5}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v7

    invoke-virtual {v7}, Lokhttp3/HttpUrl;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/platform/usercenter/tools/log/UCLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    invoke-interface {p1, v5}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object v6

    .line 48
    .local v6, "response":Lokhttp3/Response;
    return-object v6
.end method

.method protected abstract isWhiteDomain(Lokhttp3/HttpUrl;)Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method protected abstract shouldUpdateDomainConfig()Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method
