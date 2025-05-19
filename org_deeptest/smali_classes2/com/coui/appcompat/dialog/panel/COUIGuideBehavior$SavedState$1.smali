.class final Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior$SavedState$1;
.super Ljava/lang/Object;
.source "COUIGuideBehavior.java"

# interfaces
.implements Landroid/os/Parcelable$ClassLoaderCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior$SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$ClassLoaderCreator<",
        "Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1694
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior$SavedState;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1704
    new-instance v0, Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior$SavedState;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior$SavedState;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object v0
.end method

.method public createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior$SavedState;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "loader"    # Ljava/lang/ClassLoader;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1698
    new-instance v0, Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior$SavedState;

    invoke-direct {v0, p1, p2}, Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior$SavedState;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0
    .param p1    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1694
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior$SavedState$1;->createFromParcel(Landroid/os/Parcel;)Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior$SavedState;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .locals 0
    .param p1    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1694
    invoke-virtual {p0, p1, p2}, Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior$SavedState$1;->createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior$SavedState;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior$SavedState;
    .locals 1
    .param p1, "size"    # I
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1710
    new-array v0, p1, [Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior$SavedState;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1694
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior$SavedState$1;->newArray(I)[Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior$SavedState;

    move-result-object p1

    return-object p1
.end method
