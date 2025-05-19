.class final Lcom/heytap/epona/Response$1;
.super Ljava/lang/Object;
.source "Response.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heytap/epona/Response;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/heytap/epona/Response;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/heytap/epona/Response;
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .line 17
    new-instance v0, Lcom/heytap/epona/Response;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/heytap/epona/Response;-><init>(Landroid/os/Parcel;Lcom/heytap/epona/Response$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 14
    invoke-virtual {p0, p1}, Lcom/heytap/epona/Response$1;->createFromParcel(Landroid/os/Parcel;)Lcom/heytap/epona/Response;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/heytap/epona/Response;
    .locals 1
    .param p1, "size"    # I

    .line 22
    new-array v0, p1, [Lcom/heytap/epona/Response;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 14
    invoke-virtual {p0, p1}, Lcom/heytap/epona/Response$1;->newArray(I)[Lcom/heytap/epona/Response;

    move-result-object p1

    return-object p1
.end method
