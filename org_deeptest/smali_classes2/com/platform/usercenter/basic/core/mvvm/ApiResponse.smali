.class public Lcom/platform/usercenter/basic/core/mvvm/ApiResponse;
.super Ljava/lang/Object;
.source "ApiResponse.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final LINK_PATTERN:Ljava/util/regex/Pattern;

.field private static final NEXT_LINK:Ljava/lang/String; = "next"

.field private static final PAGE_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field private final body:Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final code:I

.field private final errorMessage:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final links:Ljava/util/Map;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    const-string v0, "<([^>]*)>[\\s]*;[\\s]*rel=\"([a-zA-Z0-9]+)\""

    .line 35
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/platform/usercenter/basic/core/mvvm/ApiResponse;->LINK_PATTERN:Ljava/util/regex/Pattern;

    .line 36
    const-string v0, "\\bpage=(\\d+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/platform/usercenter/basic/core/mvvm/ApiResponse;->PAGE_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Lretrofit2/Call;Ljava/lang/Throwable;)V
    .locals 1
    .param p2, "error"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "TT;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 49
    .local p0, "this":Lcom/platform/usercenter/basic/core/mvvm/ApiResponse;, "Lcom/platform/usercenter/basic/core/mvvm/ApiResponse<TT;>;"
    .local p1, "call":Lretrofit2/Call;, "Lretrofit2/Call<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    instance-of v0, p2, Lcom/google/gson/JsonSyntaxException;

    if-eqz v0, :cond_1

    .line 51
    invoke-virtual {p2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/NumberFormatException;

    if-eqz v0, :cond_0

    .line 53
    const/16 v0, -0x3e8

    iput v0, p0, Lcom/platform/usercenter/basic/core/mvvm/ApiResponse;->code:I

    goto :goto_0

    .line 55
    :cond_0
    const/16 v0, -0x3ec

    iput v0, p0, Lcom/platform/usercenter/basic/core/mvvm/ApiResponse;->code:I

    goto :goto_0

    .line 57
    :cond_1
    instance-of v0, p2, Lretrofit2/HttpException;

    if-eqz v0, :cond_2

    .line 58
    move-object v0, p2

    check-cast v0, Lretrofit2/HttpException;

    invoke-virtual {v0}, Lretrofit2/HttpException;->code()I

    move-result v0

    iput v0, p0, Lcom/platform/usercenter/basic/core/mvvm/ApiResponse;->code:I

    goto :goto_0

    .line 59
    :cond_2
    instance-of v0, p2, Ljava/net/SocketTimeoutException;

    if-eqz v0, :cond_3

    .line 60
    const/16 v0, -0x3ea

    iput v0, p0, Lcom/platform/usercenter/basic/core/mvvm/ApiResponse;->code:I

    goto :goto_0

    .line 61
    :cond_3
    instance-of v0, p2, Ljava/net/ConnectException;

    if-eqz v0, :cond_4

    .line 62
    const/16 v0, -0x3eb

    iput v0, p0, Lcom/platform/usercenter/basic/core/mvvm/ApiResponse;->code:I

    goto :goto_0

    .line 64
    :cond_4
    const/16 v0, -0x3e9

    iput v0, p0, Lcom/platform/usercenter/basic/core/mvvm/ApiResponse;->code:I

    .line 67
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/platform/usercenter/basic/core/mvvm/ApiResponse;->body:Ljava/lang/Object;

    .line 68
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/platform/usercenter/basic/core/mvvm/ApiResponse;->errorMessage:Ljava/lang/String;

    .line 69
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/platform/usercenter/basic/core/mvvm/ApiResponse;->links:Ljava/util/Map;

    .line 70
    return-void
.end method

.method public constructor <init>(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "TT;>;",
            "Lretrofit2/Response<",
            "TT;>;)V"
        }
    .end annotation

    .line 72
    .local p0, "this":Lcom/platform/usercenter/basic/core/mvvm/ApiResponse;, "Lcom/platform/usercenter/basic/core/mvvm/ApiResponse<TT;>;"
    .local p1, "call":Lretrofit2/Call;, "Lretrofit2/Call<TT;>;"
    .local p2, "response":Lretrofit2/Response;, "Lretrofit2/Response<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    invoke-virtual {p2}, Lretrofit2/Response;->code()I

    move-result v0

    iput v0, p0, Lcom/platform/usercenter/basic/core/mvvm/ApiResponse;->code:I

    .line 74
    invoke-virtual {p2}, Lretrofit2/Response;->isSuccessful()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 75
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/platform/usercenter/basic/core/mvvm/ApiResponse;->body:Ljava/lang/Object;

    .line 76
    iput-object v1, p0, Lcom/platform/usercenter/basic/core/mvvm/ApiResponse;->errorMessage:Ljava/lang/String;

    goto :goto_1

    .line 78
    :cond_0
    const/4 v0, 0x0

    .line 79
    .local v0, "message":Ljava/lang/String;
    invoke-virtual {p2}, Lretrofit2/Response;->errorBody()Lokhttp3/ResponseBody;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 81
    :try_start_0
    invoke-virtual {p2}, Lretrofit2/Response;->errorBody()Lokhttp3/ResponseBody;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 84
    goto :goto_0

    .line 82
    :catch_0
    move-exception v2

    .line 83
    .local v2, "ignored":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    const-string v4, " error while parsing response"

    invoke-static {v3, v4}, Lcom/platform/usercenter/tools/log/UCLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    .end local v2    # "ignored":Ljava/io/IOException;
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_3

    .line 87
    :cond_2
    invoke-virtual {p2}, Lretrofit2/Response;->message()Ljava/lang/String;

    move-result-object v0

    .line 89
    :cond_3
    iput-object v0, p0, Lcom/platform/usercenter/basic/core/mvvm/ApiResponse;->errorMessage:Ljava/lang/String;

    .line 90
    iput-object v1, p0, Lcom/platform/usercenter/basic/core/mvvm/ApiResponse;->body:Ljava/lang/Object;

    .line 93
    .end local v0    # "message":Ljava/lang/String;
    :goto_1
    invoke-virtual {p2}, Lretrofit2/Response;->headers()Lokhttp3/Headers;

    move-result-object v0

    const-string v1, "link"

    invoke-virtual {v0, v1}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 94
    .local v0, "linkHeader":Ljava/lang/String;
    if-nez v0, :cond_4

    .line 95
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lcom/platform/usercenter/basic/core/mvvm/ApiResponse;->links:Ljava/util/Map;

    goto :goto_3

    .line 97
    :cond_4
    new-instance v1, Landroidx/collection/ArrayMap;

    invoke-direct {v1}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/platform/usercenter/basic/core/mvvm/ApiResponse;->links:Ljava/util/Map;

    .line 98
    sget-object v1, Lcom/platform/usercenter/basic/core/mvvm/ApiResponse;->LINK_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 100
    .local v1, "matcher":Ljava/util/regex/Matcher;
    :goto_2
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 101
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v2

    .line 102
    .local v2, "count":I
    const/4 v3, 0x2

    if-ne v2, v3, :cond_5

    .line 103
    iget-object v4, p0, Lcom/platform/usercenter/basic/core/mvvm/ApiResponse;->links:Ljava/util/Map;

    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    .end local v2    # "count":I
    :cond_5
    goto :goto_2

    .line 107
    .end local v1    # "matcher":Ljava/util/regex/Matcher;
    :cond_6
    :goto_3
    return-void
.end method


# virtual methods
.method public getBody()Ljava/lang/Object;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 111
    .local p0, "this":Lcom/platform/usercenter/basic/core/mvvm/ApiResponse;, "Lcom/platform/usercenter/basic/core/mvvm/ApiResponse<TT;>;"
    iget-object v0, p0, Lcom/platform/usercenter/basic/core/mvvm/ApiResponse;->body:Ljava/lang/Object;

    return-object v0
.end method

.method public getCode()I
    .locals 1

    .line 120
    .local p0, "this":Lcom/platform/usercenter/basic/core/mvvm/ApiResponse;, "Lcom/platform/usercenter/basic/core/mvvm/ApiResponse<TT;>;"
    iget v0, p0, Lcom/platform/usercenter/basic/core/mvvm/ApiResponse;->code:I

    return v0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 116
    .local p0, "this":Lcom/platform/usercenter/basic/core/mvvm/ApiResponse;, "Lcom/platform/usercenter/basic/core/mvvm/ApiResponse<TT;>;"
    iget-object v0, p0, Lcom/platform/usercenter/basic/core/mvvm/ApiResponse;->errorMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getNextPage()Ljava/lang/Integer;
    .locals 5

    .line 128
    .local p0, "this":Lcom/platform/usercenter/basic/core/mvvm/ApiResponse;, "Lcom/platform/usercenter/basic/core/mvvm/ApiResponse<TT;>;"
    iget-object v0, p0, Lcom/platform/usercenter/basic/core/mvvm/ApiResponse;->links:Ljava/util/Map;

    const-string v1, "next"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 129
    .local v0, "next":Ljava/lang/String;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 130
    return-object v1

    .line 132
    :cond_0
    sget-object v2, Lcom/platform/usercenter/basic/core/mvvm/ApiResponse;->PAGE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 133
    .local v2, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    goto :goto_0

    .line 137
    :cond_1
    :try_start_0
    invoke-virtual {v2, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 138
    :catch_0
    move-exception v3

    .line 139
    .local v3, "ex":Ljava/lang/NumberFormatException;
    const-string v4, "cannot parse next page from %s"

    invoke-static {v4, v0}, Lcom/platform/usercenter/tools/log/UCLogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    return-object v1

    .line 134
    .end local v3    # "ex":Ljava/lang/NumberFormatException;
    :cond_2
    :goto_0
    return-object v1
.end method

.method public isSuccessful()Z
    .locals 2

    .line 124
    .local p0, "this":Lcom/platform/usercenter/basic/core/mvvm/ApiResponse;, "Lcom/platform/usercenter/basic/core/mvvm/ApiResponse<TT;>;"
    iget v0, p0, Lcom/platform/usercenter/basic/core/mvvm/ApiResponse;->code:I

    const/16 v1, 0xc8

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/platform/usercenter/basic/core/mvvm/ApiResponse;->code:I

    const/16 v1, 0x12c

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
