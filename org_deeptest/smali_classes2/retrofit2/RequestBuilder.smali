.class final Lretrofit2/RequestBuilder;
.super Ljava/lang/Object;
.source "RequestBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lretrofit2/RequestBuilder$ContentTypeOverridingRequestBody;
    }
.end annotation


# static fields
.field private static final HEX_DIGITS:[C

.field private static final PATH_SEGMENT_ALWAYS_ENCODE_SET:Ljava/lang/String; = " \"<>^`{}|\\?#"


# instance fields
.field private final baseUrl:Lokhttp3/HttpUrl;

.field private body:Lokhttp3/RequestBody;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private contentType:Lokhttp3/MediaType;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private formBuilder:Lokhttp3/FormBody$Builder;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final hasBody:Z

.field private final method:Ljava/lang/String;

.field private multipartBuilder:Lokhttp3/MultipartBody$Builder;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private relativeUrl:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final requestBuilder:Lokhttp3/Request$Builder;

.field private urlBuilder:Lokhttp3/HttpUrl$Builder;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lretrofit2/RequestBuilder;->HEX_DIGITS:[C

    return-void

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method constructor <init>(Ljava/lang/String;Lokhttp3/HttpUrl;Ljava/lang/String;Lokhttp3/Headers;Lokhttp3/MediaType;ZZZ)V
    .locals 2
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "baseUrl"    # Lokhttp3/HttpUrl;
    .param p3, "relativeUrl"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "headers"    # Lokhttp3/Headers;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p5, "contentType"    # Lokhttp3/MediaType;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p6, "hasBody"    # Z
    .param p7, "isFormEncoded"    # Z
    .param p8, "isMultipart"    # Z

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lretrofit2/RequestBuilder;->method:Ljava/lang/String;

    .line 53
    iput-object p2, p0, Lretrofit2/RequestBuilder;->baseUrl:Lokhttp3/HttpUrl;

    .line 54
    iput-object p3, p0, Lretrofit2/RequestBuilder;->relativeUrl:Ljava/lang/String;

    .line 55
    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    iput-object v0, p0, Lretrofit2/RequestBuilder;->requestBuilder:Lokhttp3/Request$Builder;

    .line 56
    iput-object p5, p0, Lretrofit2/RequestBuilder;->contentType:Lokhttp3/MediaType;

    .line 57
    iput-boolean p6, p0, Lretrofit2/RequestBuilder;->hasBody:Z

    .line 59
    if-eqz p4, :cond_0

    .line 60
    iget-object v0, p0, Lretrofit2/RequestBuilder;->requestBuilder:Lokhttp3/Request$Builder;

    invoke-virtual {v0, p4}, Lokhttp3/Request$Builder;->headers(Lokhttp3/Headers;)Lokhttp3/Request$Builder;

    .line 63
    :cond_0
    if-eqz p7, :cond_1

    .line 65
    new-instance v0, Lokhttp3/FormBody$Builder;

    invoke-direct {v0}, Lokhttp3/FormBody$Builder;-><init>()V

    iput-object v0, p0, Lretrofit2/RequestBuilder;->formBuilder:Lokhttp3/FormBody$Builder;

    goto :goto_0

    .line 66
    :cond_1
    if-eqz p8, :cond_2

    .line 68
    new-instance v0, Lokhttp3/MultipartBody$Builder;

    invoke-direct {v0}, Lokhttp3/MultipartBody$Builder;-><init>()V

    iput-object v0, p0, Lretrofit2/RequestBuilder;->multipartBuilder:Lokhttp3/MultipartBody$Builder;

    .line 69
    iget-object v0, p0, Lretrofit2/RequestBuilder;->multipartBuilder:Lokhttp3/MultipartBody$Builder;

    sget-object v1, Lokhttp3/MultipartBody;->FORM:Lokhttp3/MediaType;

    invoke-virtual {v0, v1}, Lokhttp3/MultipartBody$Builder;->setType(Lokhttp3/MediaType;)Lokhttp3/MultipartBody$Builder;

    .line 71
    :cond_2
    :goto_0
    return-void
.end method

.method private static canonicalizeForPath(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 5
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "alreadyEncoded"    # Z

    .line 99
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .local v1, "limit":I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 100
    invoke-virtual {p0, v0}, Ljava/lang/String;->codePointAt(I)I

    move-result v2

    .line 101
    .local v2, "codePoint":I
    const/16 v3, 0x20

    if-lt v2, v3, :cond_1

    const/16 v3, 0x7f

    if-ge v2, v3, :cond_1

    const-string v3, " \"<>^`{}|\\?#"

    .line 102
    invoke-virtual {v3, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    if-nez p1, :cond_0

    const/16 v3, 0x2f

    if-eq v2, v3, :cond_1

    const/16 v3, 0x25

    if-ne v2, v3, :cond_0

    goto :goto_1

    .line 99
    :cond_0
    invoke-static {v2}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    add-int/2addr v0, v3

    goto :goto_0

    .line 105
    :cond_1
    :goto_1
    new-instance v3, Lokio/Buffer;

    invoke-direct {v3}, Lokio/Buffer;-><init>()V

    .line 106
    .local v3, "out":Lokio/Buffer;
    const/4 v4, 0x0

    invoke-virtual {v3, p0, v4, v0}, Lokio/Buffer;->writeUtf8(Ljava/lang/String;II)Lokio/Buffer;

    .line 107
    invoke-static {v3, p0, v0, v1, p1}, Lretrofit2/RequestBuilder;->canonicalizeForPath(Lokio/Buffer;Ljava/lang/String;IIZ)V

    .line 108
    invoke-virtual {v3}, Lokio/Buffer;->readUtf8()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 113
    .end local v0    # "i":I
    .end local v1    # "limit":I
    .end local v2    # "codePoint":I
    .end local v3    # "out":Lokio/Buffer;
    :cond_2
    return-object p0
.end method

.method private static canonicalizeForPath(Lokio/Buffer;Ljava/lang/String;IIZ)V
    .locals 7
    .param p0, "out"    # Lokio/Buffer;
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "pos"    # I
    .param p3, "limit"    # I
    .param p4, "alreadyEncoded"    # Z

    .line 118
    const/4 v0, 0x0

    .line 120
    .local v0, "utf8Buffer":Lokio/Buffer;
    move-object v1, v0

    move v0, p2

    .local v0, "i":I
    .local v1, "utf8Buffer":Lokio/Buffer;
    :goto_0
    if-ge v0, p3, :cond_5

    .line 121
    invoke-virtual {p1, v0}, Ljava/lang/String;->codePointAt(I)I

    move-result v2

    .line 122
    .local v2, "codePoint":I
    if-eqz p4, :cond_0

    const/16 v3, 0x9

    if-eq v2, v3, :cond_4

    const/16 v3, 0xa

    if-eq v2, v3, :cond_4

    const/16 v3, 0xc

    if-eq v2, v3, :cond_4

    const/16 v3, 0xd

    if-ne v2, v3, :cond_0

    goto :goto_3

    .line 125
    :cond_0
    const/16 v3, 0x20

    const/16 v4, 0x25

    if-lt v2, v3, :cond_2

    const/16 v3, 0x7f

    if-ge v2, v3, :cond_2

    const-string v3, " \"<>^`{}|\\?#"

    .line 126
    invoke-virtual {v3, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v5, -0x1

    if-ne v3, v5, :cond_2

    if-nez p4, :cond_1

    const/16 v3, 0x2f

    if-eq v2, v3, :cond_2

    if-ne v2, v4, :cond_1

    goto :goto_1

    .line 141
    :cond_1
    invoke-virtual {p0, v2}, Lokio/Buffer;->writeUtf8CodePoint(I)Lokio/Buffer;

    goto :goto_3

    .line 129
    :cond_2
    :goto_1
    if-nez v1, :cond_3

    .line 130
    new-instance v3, Lokio/Buffer;

    invoke-direct {v3}, Lokio/Buffer;-><init>()V

    move-object v1, v3

    .line 132
    :cond_3
    invoke-virtual {v1, v2}, Lokio/Buffer;->writeUtf8CodePoint(I)Lokio/Buffer;

    .line 133
    :goto_2
    invoke-virtual {v1}, Lokio/Buffer;->exhausted()Z

    move-result v3

    if-nez v3, :cond_4

    .line 134
    invoke-virtual {v1}, Lokio/Buffer;->readByte()B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    .line 135
    .local v3, "b":I
    invoke-virtual {p0, v4}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 136
    sget-object v5, Lretrofit2/RequestBuilder;->HEX_DIGITS:[C

    shr-int/lit8 v6, v3, 0x4

    and-int/lit8 v6, v6, 0xf

    aget-char v5, v5, v6

    invoke-virtual {p0, v5}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 137
    sget-object v5, Lretrofit2/RequestBuilder;->HEX_DIGITS:[C

    and-int/lit8 v6, v3, 0xf

    aget-char v5, v5, v6

    invoke-virtual {p0, v5}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 138
    .end local v3    # "b":I
    goto :goto_2

    .line 120
    :cond_4
    :goto_3
    invoke-static {v2}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    add-int/2addr v0, v3

    goto :goto_0

    .line 144
    .end local v0    # "i":I
    .end local v2    # "codePoint":I
    :cond_5
    return-void
.end method


# virtual methods
.method addFormField(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "encoded"    # Z

    .line 168
    if-eqz p3, :cond_0

    .line 169
    iget-object v0, p0, Lretrofit2/RequestBuilder;->formBuilder:Lokhttp3/FormBody$Builder;

    invoke-virtual {v0, p1, p2}, Lokhttp3/FormBody$Builder;->addEncoded(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    goto :goto_0

    .line 171
    :cond_0
    iget-object v0, p0, Lretrofit2/RequestBuilder;->formBuilder:Lokhttp3/FormBody$Builder;

    invoke-virtual {v0, p1, p2}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    .line 173
    :goto_0
    return-void
.end method

.method addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 78
    const-string v0, "Content-Type"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 79
    invoke-static {p2}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    .line 80
    .local v0, "type":Lokhttp3/MediaType;
    if-eqz v0, :cond_0

    .line 83
    iput-object v0, p0, Lretrofit2/RequestBuilder;->contentType:Lokhttp3/MediaType;

    .line 84
    .end local v0    # "type":Lokhttp3/MediaType;
    goto :goto_0

    .line 81
    .restart local v0    # "type":Lokhttp3/MediaType;
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Malformed content type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 85
    .end local v0    # "type":Lokhttp3/MediaType;
    :cond_1
    iget-object v0, p0, Lretrofit2/RequestBuilder;->requestBuilder:Lokhttp3/Request$Builder;

    invoke-virtual {v0, p1, p2}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 87
    :goto_0
    return-void
.end method

.method addPart(Lokhttp3/Headers;Lokhttp3/RequestBody;)V
    .locals 1
    .param p1, "headers"    # Lokhttp3/Headers;
    .param p2, "body"    # Lokhttp3/RequestBody;

    .line 177
    iget-object v0, p0, Lretrofit2/RequestBuilder;->multipartBuilder:Lokhttp3/MultipartBody$Builder;

    invoke-virtual {v0, p1, p2}, Lokhttp3/MultipartBody$Builder;->addPart(Lokhttp3/Headers;Lokhttp3/RequestBody;)Lokhttp3/MultipartBody$Builder;

    .line 178
    return-void
.end method

.method addPart(Lokhttp3/MultipartBody$Part;)V
    .locals 1
    .param p1, "part"    # Lokhttp3/MultipartBody$Part;

    .line 182
    iget-object v0, p0, Lretrofit2/RequestBuilder;->multipartBuilder:Lokhttp3/MultipartBody$Builder;

    invoke-virtual {v0, p1}, Lokhttp3/MultipartBody$Builder;->addPart(Lokhttp3/MultipartBody$Part;)Lokhttp3/MultipartBody$Builder;

    .line 183
    return-void
.end method

.method addPathParam(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "encoded"    # Z

    .line 90
    iget-object v0, p0, Lretrofit2/RequestBuilder;->relativeUrl:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lretrofit2/RequestBuilder;->relativeUrl:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, p3}, Lretrofit2/RequestBuilder;->canonicalizeForPath(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lretrofit2/RequestBuilder;->relativeUrl:Ljava/lang/String;

    .line 95
    return-void

    .line 92
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method addQueryParam(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "encoded"    # Z

    .line 147
    iget-object v0, p0, Lretrofit2/RequestBuilder;->relativeUrl:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 149
    iget-object v0, p0, Lretrofit2/RequestBuilder;->baseUrl:Lokhttp3/HttpUrl;

    iget-object v1, p0, Lretrofit2/RequestBuilder;->relativeUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lokhttp3/HttpUrl;->newBuilder(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    move-result-object v0

    iput-object v0, p0, Lretrofit2/RequestBuilder;->urlBuilder:Lokhttp3/HttpUrl$Builder;

    .line 150
    iget-object v0, p0, Lretrofit2/RequestBuilder;->urlBuilder:Lokhttp3/HttpUrl$Builder;

    if-eqz v0, :cond_0

    .line 154
    const/4 v0, 0x0

    iput-object v0, p0, Lretrofit2/RequestBuilder;->relativeUrl:Ljava/lang/String;

    goto :goto_0

    .line 151
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Malformed URL. Base: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lretrofit2/RequestBuilder;->baseUrl:Lokhttp3/HttpUrl;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", Relative: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lretrofit2/RequestBuilder;->relativeUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 157
    :cond_1
    :goto_0
    if-eqz p3, :cond_2

    .line 159
    iget-object v0, p0, Lretrofit2/RequestBuilder;->urlBuilder:Lokhttp3/HttpUrl$Builder;

    invoke-virtual {v0, p1, p2}, Lokhttp3/HttpUrl$Builder;->addEncodedQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    goto :goto_1

    .line 162
    :cond_2
    iget-object v0, p0, Lretrofit2/RequestBuilder;->urlBuilder:Lokhttp3/HttpUrl$Builder;

    invoke-virtual {v0, p1, p2}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    .line 164
    :goto_1
    return-void
.end method

.method build()Lokhttp3/Request;
    .locals 7

    .line 191
    iget-object v0, p0, Lretrofit2/RequestBuilder;->urlBuilder:Lokhttp3/HttpUrl$Builder;

    .line 192
    .local v0, "urlBuilder":Lokhttp3/HttpUrl$Builder;
    if-eqz v0, :cond_0

    .line 193
    invoke-virtual {v0}, Lokhttp3/HttpUrl$Builder;->build()Lokhttp3/HttpUrl;

    move-result-object v1

    goto :goto_0

    .line 197
    :cond_0
    iget-object v1, p0, Lretrofit2/RequestBuilder;->baseUrl:Lokhttp3/HttpUrl;

    iget-object v2, p0, Lretrofit2/RequestBuilder;->relativeUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lokhttp3/HttpUrl;->resolve(Ljava/lang/String;)Lokhttp3/HttpUrl;

    move-result-object v1

    .line 198
    .local v1, "url":Lokhttp3/HttpUrl;
    if-eqz v1, :cond_6

    .line 204
    :goto_0
    iget-object v2, p0, Lretrofit2/RequestBuilder;->body:Lokhttp3/RequestBody;

    .line 205
    .local v2, "body":Lokhttp3/RequestBody;
    if-nez v2, :cond_3

    .line 207
    iget-object v3, p0, Lretrofit2/RequestBuilder;->formBuilder:Lokhttp3/FormBody$Builder;

    if-eqz v3, :cond_1

    .line 208
    iget-object v3, p0, Lretrofit2/RequestBuilder;->formBuilder:Lokhttp3/FormBody$Builder;

    invoke-virtual {v3}, Lokhttp3/FormBody$Builder;->build()Lokhttp3/FormBody;

    move-result-object v2

    goto :goto_1

    .line 209
    :cond_1
    iget-object v3, p0, Lretrofit2/RequestBuilder;->multipartBuilder:Lokhttp3/MultipartBody$Builder;

    if-eqz v3, :cond_2

    .line 210
    iget-object v3, p0, Lretrofit2/RequestBuilder;->multipartBuilder:Lokhttp3/MultipartBody$Builder;

    invoke-virtual {v3}, Lokhttp3/MultipartBody$Builder;->build()Lokhttp3/MultipartBody;

    move-result-object v2

    goto :goto_1

    .line 211
    :cond_2
    iget-boolean v3, p0, Lretrofit2/RequestBuilder;->hasBody:Z

    if-eqz v3, :cond_3

    .line 213
    const/4 v3, 0x0

    const/4 v4, 0x0

    new-array v4, v4, [B

    invoke-static {v3, v4}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;[B)Lokhttp3/RequestBody;

    move-result-object v2

    .line 217
    :cond_3
    :goto_1
    iget-object v3, p0, Lretrofit2/RequestBuilder;->contentType:Lokhttp3/MediaType;

    .line 218
    .local v3, "contentType":Lokhttp3/MediaType;
    if-eqz v3, :cond_5

    .line 219
    if-eqz v2, :cond_4

    .line 220
    new-instance v4, Lretrofit2/RequestBuilder$ContentTypeOverridingRequestBody;

    invoke-direct {v4, v2, v3}, Lretrofit2/RequestBuilder$ContentTypeOverridingRequestBody;-><init>(Lokhttp3/RequestBody;Lokhttp3/MediaType;)V

    move-object v2, v4

    goto :goto_2

    .line 222
    :cond_4
    iget-object v4, p0, Lretrofit2/RequestBuilder;->requestBuilder:Lokhttp3/Request$Builder;

    const-string v5, "Content-Type"

    invoke-virtual {v3}, Lokhttp3/MediaType;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 226
    :cond_5
    :goto_2
    iget-object v4, p0, Lretrofit2/RequestBuilder;->requestBuilder:Lokhttp3/Request$Builder;

    .line 227
    invoke-virtual {v4, v1}, Lokhttp3/Request$Builder;->url(Lokhttp3/HttpUrl;)Lokhttp3/Request$Builder;

    move-result-object v4

    iget-object v5, p0, Lretrofit2/RequestBuilder;->method:Ljava/lang/String;

    .line 228
    invoke-virtual {v4, v5, v2}, Lokhttp3/Request$Builder;->method(Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v4

    .line 229
    invoke-virtual {v4}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v4

    .line 226
    return-object v4

    .line 199
    .end local v2    # "body":Lokhttp3/RequestBody;
    .end local v3    # "contentType":Lokhttp3/MediaType;
    :cond_6
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Malformed URL. Base: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lretrofit2/RequestBuilder;->baseUrl:Lokhttp3/HttpUrl;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", Relative: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lretrofit2/RequestBuilder;->relativeUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method setBody(Lokhttp3/RequestBody;)V
    .locals 0
    .param p1, "body"    # Lokhttp3/RequestBody;

    .line 186
    iput-object p1, p0, Lretrofit2/RequestBuilder;->body:Lokhttp3/RequestBody;

    .line 187
    return-void
.end method

.method setRelativeUrl(Ljava/lang/Object;)V
    .locals 1
    .param p1, "relativeUrl"    # Ljava/lang/Object;

    .line 74
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lretrofit2/RequestBuilder;->relativeUrl:Ljava/lang/String;

    .line 75
    return-void
.end method
