.class public Lcom/heytap/epona/Response;
.super Ljava/lang/Object;
.source "Response.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field private static final CODE_FAILED:I = -0x1

.field private static final CODE_SUCCESS:I = 0x1

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/heytap/epona/Response;",
            ">;"
        }
    .end annotation
.end field

.field private static final EXCEPTION_INFO:Ljava/lang/String; = "epona_exception_info"


# instance fields
.field private mBundle:Landroid/os/Bundle;

.field private final mCode:I

.field private final mMessage:Ljava/lang/String;

.field private mParcelableException:Lcom/heytap/epona/ParcelableException;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    new-instance v0, Lcom/heytap/epona/Response$1;

    invoke-direct {v0}, Lcom/heytap/epona/Response$1;-><init>()V

    sput-object v0, Lcom/heytap/epona/Response;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(ILjava/lang/String;)V
    .locals 1
    .param p1, "code"    # I
    .param p2, "message"    # Ljava/lang/String;

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput p1, p0, Lcom/heytap/epona/Response;->mCode:I

    .line 33
    iput-object p2, p0, Lcom/heytap/epona/Response;->mMessage:Ljava/lang/String;

    .line 34
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/heytap/epona/Response;->mBundle:Landroid/os/Bundle;

    .line 35
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/heytap/epona/Response;->mCode:I

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/heytap/epona/Response;->mMessage:Ljava/lang/String;

    .line 40
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/heytap/epona/Response;->mBundle:Landroid/os/Bundle;

    .line 41
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/heytap/epona/Response$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/heytap/epona/Response$1;

    .line 9
    invoke-direct {p0, p1}, Lcom/heytap/epona/Response;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static defaultErrorResponse()Lcom/heytap/epona/Response;
    .locals 3

    .line 85
    new-instance v0, Lcom/heytap/epona/Response;

    const-string v1, "somethings not yet..."

    const/4 v2, -0x1

    invoke-direct {v0, v2, v1}, Lcom/heytap/epona/Response;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method public static errorResponse(Ljava/lang/Exception;)Lcom/heytap/epona/Response;
    .locals 4
    .param p0, "e"    # Ljava/lang/Exception;

    .line 93
    new-instance v0, Lcom/heytap/epona/Response;

    const-string v1, "response has exception"

    const/4 v2, -0x1

    invoke-direct {v0, v2, v1}, Lcom/heytap/epona/Response;-><init>(ILjava/lang/String;)V

    .line 94
    .local v0, "response":Lcom/heytap/epona/Response;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 95
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v2, "epona_exception_info"

    new-instance v3, Lcom/heytap/epona/ExceptionInfo;

    invoke-direct {v3, p0}, Lcom/heytap/epona/ExceptionInfo;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 96
    invoke-direct {v0, v1}, Lcom/heytap/epona/Response;->setBundle(Landroid/os/Bundle;)V

    .line 97
    return-object v0
.end method

.method public static errorResponse(Ljava/lang/String;)Lcom/heytap/epona/Response;
    .locals 2
    .param p0, "message"    # Ljava/lang/String;

    .line 89
    new-instance v0, Lcom/heytap/epona/Response;

    const/4 v1, -0x1

    invoke-direct {v0, v1, p0}, Lcom/heytap/epona/Response;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method public static newResponse(Landroid/os/Bundle;)Lcom/heytap/epona/Response;
    .locals 3
    .param p0, "bundle"    # Landroid/os/Bundle;

    .line 79
    new-instance v0, Lcom/heytap/epona/Response;

    const-string v1, ""

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Lcom/heytap/epona/Response;-><init>(ILjava/lang/String;)V

    .line 80
    .local v0, "response":Lcom/heytap/epona/Response;
    invoke-direct {v0, p0}, Lcom/heytap/epona/Response;->setBundle(Landroid/os/Bundle;)V

    .line 81
    return-object v0
.end method

.method private setBundle(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 48
    iput-object p1, p0, Lcom/heytap/epona/Response;->mBundle:Landroid/os/Bundle;

    .line 49
    return-void
.end method


# virtual methods
.method public checkThrowable(Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Throwable;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)V^TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 101
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v0, p0, Lcom/heytap/epona/Response;->mBundle:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 102
    return-void

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/heytap/epona/Response;->mParcelableException:Lcom/heytap/epona/ParcelableException;

    if-nez v0, :cond_2

    .line 106
    iget-object v0, p0, Lcom/heytap/epona/Response;->mBundle:Landroid/os/Bundle;

    const-string v1, "epona_exception_info"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/heytap/epona/ExceptionInfo;

    .line 107
    .local v0, "exceptionInfo":Lcom/heytap/epona/ExceptionInfo;
    if-nez v0, :cond_1

    .line 108
    return-void

    .line 111
    :cond_1
    invoke-static {v0}, Lcom/heytap/epona/ParcelableException;->create(Lcom/heytap/epona/ExceptionInfo;)Lcom/heytap/epona/ParcelableException;

    move-result-object v1

    iput-object v1, p0, Lcom/heytap/epona/Response;->mParcelableException:Lcom/heytap/epona/ParcelableException;

    .line 114
    .end local v0    # "exceptionInfo":Lcom/heytap/epona/ExceptionInfo;
    :cond_2
    iget-object v0, p0, Lcom/heytap/epona/Response;->mParcelableException:Lcom/heytap/epona/ParcelableException;

    invoke-virtual {v0, p1}, Lcom/heytap/epona/ParcelableException;->maybeRethrow(Ljava/lang/Class;)V

    .line 115
    return-void
.end method

.method public describeContents()I
    .locals 1

    .line 68
    const/4 v0, 0x0

    return v0
.end method

.method public getBundle()Landroid/os/Bundle;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/heytap/epona/Response;->mBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method public getCode()I
    .locals 1

    .line 52
    iget v0, p0, Lcom/heytap/epona/Response;->mCode:I

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/heytap/epona/Response;->mMessage:Ljava/lang/String;

    return-object v0
.end method

.method public isSuccessful()Z
    .locals 2

    .line 118
    iget v0, p0, Lcom/heytap/epona/Response;->mCode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Successful="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/heytap/epona/Response;->isSuccessful()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", Message="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/heytap/epona/Response;->mMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 73
    iget v0, p0, Lcom/heytap/epona/Response;->mCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 74
    iget-object v0, p0, Lcom/heytap/epona/Response;->mMessage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lcom/heytap/epona/Response;->mBundle:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 76
    return-void
.end method
