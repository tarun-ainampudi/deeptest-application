.class public Lcom/example/deeptesting/service/RequestService;
.super Landroid/app/Service;
.source "RequestService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/example/deeptesting/service/RequestService$Response;,
        Lcom/example/deeptesting/service/RequestService$ReqList;
    }
.end annotation


# static fields
.field public static final EMPTY_MESSAGE:I = 0x0

.field public static final MESSENGER_FLAG_APPLY:I = 0x3e8

.field public static final MESSENGER_FLAG_CLOSEAPPLY:I = 0x3ec

.field public static final MESSENGER_FLAG_LOCKSTATE:I = 0x3eb

.field public static final MESSENGER_FLAG_MAIN:I = 0x3e9

.field public static final MESSENGER_FLAG_STATUS:I = 0x3ea

.field public static final STATUS_NETWORK_TIMEOUT:I = 0x64

.field public static final TAG:Ljava/lang/String; = "RequestService"

.field public static final URL_PREFIX_FORMAL:Ljava/lang/String; = "https://lk.realmemobile.com/"

.field public static final URL_PREFIX_FORMAL_EX:Ljava/lang/String; = "https://lkf.realmemobile.com/"

.field public static final URL_PREFIX_TEST:Ljava/lang/String; = "http://i.lkrealme.romtest.wanyol.com/realme/"

.field public static final URL_VERSION:Ljava/lang/String; = "api/v2/"

.field private static sApplicationContext:Landroid/content/Context;

.field private static sContext:Landroid/content/Context;


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mMessenger:Landroid/os/Messenger;

.field private mRequestThread:Landroid/os/HandlerThread;

.field private mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method static synthetic access$400(Lcom/example/deeptesting/service/RequestService;)Landroid/os/Messenger;
    .locals 1
    .param p0, "x0"    # Lcom/example/deeptesting/service/RequestService;

    .line 26
    iget-object v0, p0, Lcom/example/deeptesting/service/RequestService;->mMessenger:Landroid/os/Messenger;

    return-object v0
.end method

.method static synthetic access$500()Landroid/content/Context;
    .locals 1

    .line 26
    sget-object v0, Lcom/example/deeptesting/service/RequestService;->sApplicationContext:Landroid/content/Context;

    return-object v0
.end method

.method private postServer(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "requestString"    # Ljava/lang/String;

    .line 170
    const/4 v0, 0x0

    .line 171
    .local v0, "str":Ljava/lang/String;
    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 172
    const-string v2, "RequestService"

    const-string v3, "request url is null"

    invoke-static {v2, v3}, Lcom/example/deeptesting/utils/OppoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    return-object v1

    .line 175
    :cond_0
    if-nez p2, :cond_1

    .line 176
    const-string v2, "RequestService"

    const-string v3, "request string is null"

    invoke-static {v2, v3}, Lcom/example/deeptesting/utils/OppoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    return-object v1

    .line 180
    :cond_1
    const-string v2, ""

    .line 181
    .local v2, "jsonString":Ljava/lang/String;
    invoke-static {p2}, Lcom/example/deeptesting/utils/AesEncryptUtils;->encryptJsonForServer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 182
    if-nez v2, :cond_2

    .line 183
    const-string v3, "RequestService"

    const-string v4, " json request is null after encrypt"

    invoke-static {v3, v4}, Lcom/example/deeptesting/utils/OppoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    return-object v1

    .line 187
    :cond_2
    const-string v3, "RequestService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " json request is null after encrypt: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/example/deeptesting/utils/OppoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    move-object v3, v1

    .line 191
    .local v3, "response":Lokhttp3/Response;
    :try_start_0
    invoke-static {p0, p1, v2}, Lcom/example/deeptesting/utils/Utils;->netonPostRequest(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Response;

    move-result-object v4

    move-object v3, v4

    .line 192
    if-nez v3, :cond_4

    .line 193
    const-string v4, "RequestService"

    const-string v5, "neton response is null"

    invoke-static {v4, v5}, Lcom/example/deeptesting/utils/OppoLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 194
    nop

    .line 210
    if-eqz v3, :cond_3

    .line 212
    :try_start_1
    invoke-virtual {v3}, Lokhttp3/Response;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 215
    goto :goto_0

    .line 213
    :catch_0
    move-exception v4

    .line 214
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 194
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_3
    :goto_0
    return-object v1

    .line 196
    :cond_4
    :try_start_2
    invoke-virtual {v3}, Lokhttp3/Response;->code()I

    move-result v4

    .line 197
    .local v4, "responseCode":I
    invoke-virtual {v3}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v5

    invoke-virtual {v5}, Lokhttp3/ResponseBody;->bytes()[B

    move-result-object v5

    .line 198
    .local v5, "buf":[B
    invoke-static {v5}, Lcom/example/deeptesting/utils/Utils;->isNullOrEmpty([B)Z

    move-result v6

    if-nez v6, :cond_5

    .line 199
    new-instance v6, Ljava/lang/String;

    const-string v7, "UTF-8"

    invoke-direct {v6, v5, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    move-object v0, v6

    .line 200
    invoke-static {v0}, Lcom/example/deeptesting/utils/AesEncryptUtils;->decryptJsonFromServer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v0, v6

    .line 201
    if-nez v0, :cond_5

    .line 202
    const-string v6, "RequestService"

    const-string v7, "decryptJsonFromServer reslut is null"

    invoke-static {v6, v7}, Lcom/example/deeptesting/utils/OppoLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 210
    .end local v4    # "responseCode":I
    .end local v5    # "buf":[B
    :cond_5
    if-eqz v3, :cond_6

    .line 212
    :try_start_3
    invoke-virtual {v3}, Lokhttp3/Response;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 215
    :goto_1
    goto :goto_2

    .line 213
    :catch_1
    move-exception v1

    .line 214
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .end local v1    # "e":Ljava/lang/Exception;
    goto :goto_1

    .line 218
    :cond_6
    :goto_2
    return-object v0

    .line 210
    :catchall_0
    move-exception v1

    goto :goto_4

    .line 205
    :catch_2
    move-exception v4

    .line 206
    .local v4, "e":Ljava/lang/Exception;
    :try_start_4
    const-string v5, "RequestService"

    const-string v6, "post to server occur"

    invoke-static {v5, v6}, Lcom/example/deeptesting/utils/OppoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 208
    nop

    .line 210
    if-eqz v3, :cond_7

    .line 212
    :try_start_5
    invoke-virtual {v3}, Lokhttp3/Response;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 215
    goto :goto_3

    .line 213
    :catch_3
    move-exception v5

    .line 214
    .local v5, "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 208
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_7
    :goto_3
    return-object v1

    .line 210
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_4
    if-eqz v3, :cond_8

    .line 212
    :try_start_6
    invoke-virtual {v3}, Lokhttp3/Response;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    .line 215
    goto :goto_5

    .line 213
    :catch_4
    move-exception v4

    .line 214
    .restart local v4    # "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 217
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_8
    :goto_5
    throw v1
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .line 58
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .line 63
    sput-object p0, Lcom/example/deeptesting/service/RequestService;->sContext:Landroid/content/Context;

    .line 64
    invoke-virtual {p0}, Lcom/example/deeptesting/service/RequestService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/example/deeptesting/service/RequestService;->sApplicationContext:Landroid/content/Context;

    .line 65
    invoke-static {}, Lcom/example/deeptesting/utils/AesEncryptUtils;->generateKey()V

    .line 66
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "Request"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/example/deeptesting/service/RequestService;->mRequestThread:Landroid/os/HandlerThread;

    .line 67
    iget-object v0, p0, Lcom/example/deeptesting/service/RequestService;->mRequestThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 69
    iget-object v0, p0, Lcom/example/deeptesting/service/RequestService;->mRequestThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 70
    new-instance v0, Lcom/example/deeptesting/service/RequestService$1;

    iget-object v1, p0, Lcom/example/deeptesting/service/RequestService;->mRequestThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/example/deeptesting/service/RequestService$1;-><init>(Lcom/example/deeptesting/service/RequestService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/example/deeptesting/service/RequestService;->mHandler:Landroid/os/Handler;

    goto :goto_0

    .line 101
    :cond_0
    invoke-virtual {p0}, Lcom/example/deeptesting/service/RequestService;->stopSelf()V

    .line 103
    :goto_0
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 104
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 143
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 144
    iget-object v0, p0, Lcom/example/deeptesting/service/RequestService;->mRequestThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 145
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .line 108
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 109
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "Messenger"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Messenger;

    iput-object v0, p0, Lcom/example/deeptesting/service/RequestService;->mMessenger:Landroid/os/Messenger;

    .line 111
    invoke-virtual {p0}, Lcom/example/deeptesting/service/RequestService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "oppo.version.exp"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    const-string v0, "https://lkf.realmemobile.com/api/v2/"

    iput-object v0, p0, Lcom/example/deeptesting/service/RequestService;->mUrl:Ljava/lang/String;

    goto :goto_0

    .line 114
    :cond_0
    const-string v0, "https://lk.realmemobile.com/api/v2/"

    iput-object v0, p0, Lcom/example/deeptesting/service/RequestService;->mUrl:Ljava/lang/String;

    .line 116
    :goto_0
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "MessengerFlag"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 131
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/example/deeptesting/service/RequestService;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "lock-client"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/example/deeptesting/service/RequestService;->mUrl:Ljava/lang/String;

    goto :goto_1

    .line 128
    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/example/deeptesting/service/RequestService;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "get-all-status"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/example/deeptesting/service/RequestService;->mUrl:Ljava/lang/String;

    .line 129
    goto :goto_1

    .line 125
    :pswitch_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/example/deeptesting/service/RequestService;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "update-client-lock-status"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/example/deeptesting/service/RequestService;->mUrl:Ljava/lang/String;

    .line 126
    goto :goto_1

    .line 121
    :pswitch_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/example/deeptesting/service/RequestService;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "check-approve-result"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/example/deeptesting/service/RequestService;->mUrl:Ljava/lang/String;

    .line 122
    goto :goto_1

    .line 118
    :pswitch_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/example/deeptesting/service/RequestService;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "apply-unlock"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/example/deeptesting/service/RequestService;->mUrl:Ljava/lang/String;

    .line 119
    nop

    .line 132
    :goto_1
    nop

    .line 137
    iget-object v0, p0, Lcom/example/deeptesting/service/RequestService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 138
    const/4 v0, 0x2

    return v0

    .line 135
    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public request()Lcom/example/deeptesting/service/RequestService$Response;
    .locals 8

    .line 148
    const/4 v0, 0x0

    .line 149
    .local v0, "str":Ljava/lang/String;
    new-instance v1, Lcom/example/deeptesting/service/RequestService$ReqList;

    invoke-direct {v1}, Lcom/example/deeptesting/service/RequestService$ReqList;-><init>()V

    .line 150
    .local v1, "request":Lcom/example/deeptesting/service/RequestService$ReqList;
    sget-object v2, Lcom/example/deeptesting/service/RequestService;->sContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/example/deeptesting/service/RequestService$ReqList;->setRequestProperties(Landroid/content/Context;)V

    .line 151
    invoke-static {v1}, Lcom/example/deeptesting/utils/Utils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 153
    .local v2, "requestString":Ljava/lang/String;
    const-string v3, "RequestService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "url:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/example/deeptesting/service/RequestService;->mUrl:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/example/deeptesting/utils/OppoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    const-string v3, "RequestService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "requestString:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/example/deeptesting/utils/OppoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    iget-object v3, p0, Lcom/example/deeptesting/service/RequestService;->mUrl:Ljava/lang/String;

    invoke-direct {p0, v3, v2}, Lcom/example/deeptesting/service/RequestService;->postServer(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 156
    const-string v3, "RequestService"

    invoke-static {v3, v0}, Lcom/example/deeptesting/utils/OppoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    const/4 v3, 0x0

    move-object v4, v3

    .line 160
    .local v4, "re":Lcom/example/deeptesting/service/RequestService$Response;
    :try_start_0
    new-instance v5, Lcom/google/gson/Gson;

    invoke-direct {v5}, Lcom/google/gson/Gson;-><init>()V

    const-class v6, Lcom/example/deeptesting/service/RequestService$Response;

    invoke-virtual {v5, v0, v6}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/example/deeptesting/service/RequestService$Response;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v5

    .line 165
    .end local v4    # "re":Lcom/example/deeptesting/service/RequestService$Response;
    .local v3, "re":Lcom/example/deeptesting/service/RequestService$Response;
    nop

    .line 166
    return-object v3

    .line 161
    .end local v3    # "re":Lcom/example/deeptesting/service/RequestService$Response;
    .restart local v4    # "re":Lcom/example/deeptesting/service/RequestService$Response;
    :catch_0
    move-exception v5

    .line 162
    .local v5, "e":Ljava/lang/Exception;
    const-string v6, "RequestService"

    const-string v7, "parser error gson when parsing update query response from server"

    invoke-static {v6, v7}, Lcom/example/deeptesting/utils/OppoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 164
    return-object v3
.end method
