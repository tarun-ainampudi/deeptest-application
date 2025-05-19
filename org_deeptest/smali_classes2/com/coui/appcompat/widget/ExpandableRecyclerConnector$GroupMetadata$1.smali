.class final Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$GroupMetadata$1;
.super Ljava/lang/Object;
.source "ExpandableRecyclerConnector.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$GroupMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$GroupMetadata;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1286
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$GroupMetadata;
    .locals 5
    .param p1, "in"    # Landroid/os/Parcel;

    .line 1289
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    invoke-static {v0, v1, v2, v3, v4}, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$GroupMetadata;->obtain(IIIJ)Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$GroupMetadata;

    move-result-object v0

    .line 1290
    .local v0, "gm":Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$GroupMetadata;
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1286
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$GroupMetadata$1;->createFromParcel(Landroid/os/Parcel;)Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$GroupMetadata;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$GroupMetadata;
    .locals 1
    .param p1, "size"    # I

    .line 1294
    new-array v0, p1, [Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$GroupMetadata;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1286
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$GroupMetadata$1;->newArray(I)[Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$GroupMetadata;

    move-result-object p1

    return-object p1
.end method
