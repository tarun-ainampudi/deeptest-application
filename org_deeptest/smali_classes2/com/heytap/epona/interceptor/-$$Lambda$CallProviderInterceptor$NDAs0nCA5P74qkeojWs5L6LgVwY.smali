.class public final synthetic Lcom/heytap/epona/interceptor/-$$Lambda$CallProviderInterceptor$NDAs0nCA5P74qkeojWs5L6LgVwY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/heytap/epona/Call$Callback;


# instance fields
.field private final synthetic f$0:Lcom/heytap/epona/Request;

.field private final synthetic f$1:Lcom/heytap/epona/Call$Callback;


# direct methods
.method public synthetic constructor <init>(Lcom/heytap/epona/Request;Lcom/heytap/epona/Call$Callback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/heytap/epona/interceptor/-$$Lambda$CallProviderInterceptor$NDAs0nCA5P74qkeojWs5L6LgVwY;->f$0:Lcom/heytap/epona/Request;

    iput-object p2, p0, Lcom/heytap/epona/interceptor/-$$Lambda$CallProviderInterceptor$NDAs0nCA5P74qkeojWs5L6LgVwY;->f$1:Lcom/heytap/epona/Call$Callback;

    return-void
.end method


# virtual methods
.method public final onReceive(Lcom/heytap/epona/Response;)V
    .locals 2

    iget-object v0, p0, Lcom/heytap/epona/interceptor/-$$Lambda$CallProviderInterceptor$NDAs0nCA5P74qkeojWs5L6LgVwY;->f$0:Lcom/heytap/epona/Request;

    iget-object v1, p0, Lcom/heytap/epona/interceptor/-$$Lambda$CallProviderInterceptor$NDAs0nCA5P74qkeojWs5L6LgVwY;->f$1:Lcom/heytap/epona/Call$Callback;

    invoke-static {v0, v1, p1}, Lcom/heytap/epona/interceptor/CallProviderInterceptor;->lambda$intercept$0(Lcom/heytap/epona/Request;Lcom/heytap/epona/Call$Callback;Lcom/heytap/epona/Response;)V

    return-void
.end method
