.class public Landroidx/widget/COUIDrawerLayout$SavedState;
.super Landroidx/customview/view/AbsSavedState;
.source "COUIDrawerLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/widget/COUIDrawerLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroidx/widget/COUIDrawerLayout$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field lockModeBottom:I

.field lockModeEnd:I

.field lockModeLeft:I

.field lockModeRight:I

.field lockModeStart:I

.field onScreen:F

.field openDrawerGravity:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 2355
    new-instance v0, Landroidx/widget/COUIDrawerLayout$SavedState$1;

    invoke-direct {v0}, Landroidx/widget/COUIDrawerLayout$SavedState$1;-><init>()V

    sput-object v0, Landroidx/widget/COUIDrawerLayout$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "loader"    # Ljava/lang/ClassLoader;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2329
    invoke-direct {p0, p1, p2}, Landroidx/customview/view/AbsSavedState;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    .line 2315
    const/4 v0, 0x0

    iput v0, p0, Landroidx/widget/COUIDrawerLayout$SavedState;->openDrawerGravity:I

    .line 2330
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroidx/widget/COUIDrawerLayout$SavedState;->openDrawerGravity:I

    .line 2331
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroidx/widget/COUIDrawerLayout$SavedState;->lockModeLeft:I

    .line 2332
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroidx/widget/COUIDrawerLayout$SavedState;->lockModeRight:I

    .line 2333
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroidx/widget/COUIDrawerLayout$SavedState;->lockModeStart:I

    .line 2334
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroidx/widget/COUIDrawerLayout$SavedState;->lockModeEnd:I

    .line 2335
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroidx/widget/COUIDrawerLayout$SavedState;->lockModeBottom:I

    .line 2336
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroidx/widget/COUIDrawerLayout$SavedState;->onScreen:F

    .line 2337
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .locals 1
    .param p1, "superState"    # Landroid/os/Parcelable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2340
    invoke-direct {p0, p1}, Landroidx/customview/view/AbsSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 2315
    const/4 v0, 0x0

    iput v0, p0, Landroidx/widget/COUIDrawerLayout$SavedState;->openDrawerGravity:I

    .line 2341
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 2345
    invoke-super {p0, p1, p2}, Landroidx/customview/view/AbsSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2346
    iget v0, p0, Landroidx/widget/COUIDrawerLayout$SavedState;->openDrawerGravity:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2347
    iget v0, p0, Landroidx/widget/COUIDrawerLayout$SavedState;->lockModeLeft:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2348
    iget v0, p0, Landroidx/widget/COUIDrawerLayout$SavedState;->lockModeRight:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2349
    iget v0, p0, Landroidx/widget/COUIDrawerLayout$SavedState;->lockModeStart:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2350
    iget v0, p0, Landroidx/widget/COUIDrawerLayout$SavedState;->lockModeEnd:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2351
    iget v0, p0, Landroidx/widget/COUIDrawerLayout$SavedState;->lockModeBottom:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2352
    iget v0, p0, Landroidx/widget/COUIDrawerLayout$SavedState;->onScreen:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 2353
    return-void
.end method
