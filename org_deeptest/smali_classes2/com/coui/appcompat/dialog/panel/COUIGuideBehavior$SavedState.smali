.class public Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior$SavedState;
.super Landroidx/customview/view/AbsSavedState;
.source "COUIGuideBehavior.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior;
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
            "Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field fitToContents:Z

.field hideable:Z

.field peekHeight:I

.field skipCollapsed:Z

.field final state:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1693
    new-instance v0, Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior$SavedState$1;

    invoke-direct {v0}, Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior$SavedState$1;-><init>()V

    sput-object v0, Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1647
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior$SavedState;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    .line 1648
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V
    .locals 3
    .param p1, "source"    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "loader"    # Ljava/lang/ClassLoader;

    .line 1651
    invoke-direct {p0, p1, p2}, Landroidx/customview/view/AbsSavedState;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    .line 1653
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior$SavedState;->state:I

    .line 1654
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior$SavedState;->peekHeight:I

    .line 1655
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior$SavedState;->fitToContents:Z

    .line 1656
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior$SavedState;->hideable:Z

    .line 1657
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_2

    move v1, v2

    nop

    :cond_2
    iput-boolean v1, p0, Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior$SavedState;->skipCollapsed:Z

    .line 1658
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;I)V
    .locals 0
    .param p1, "superstate"    # Landroid/os/Parcelable;
    .param p2, "state"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1679
    invoke-direct {p0, p1}, Landroidx/customview/view/AbsSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1680
    iput p2, p0, Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior$SavedState;->state:I

    .line 1681
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior;)V
    .locals 1
    .param p1, "superState"    # Landroid/os/Parcelable;
    .param p2    # Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcelable;",
            "Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior<",
            "*>;)V"
        }
    .end annotation

    .line 1661
    .local p2, "behavior":Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior;, "Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior<*>;"
    invoke-direct {p0, p1}, Landroidx/customview/view/AbsSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1662
    iget v0, p2, Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior;->state:I

    iput v0, p0, Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior$SavedState;->state:I

    .line 1663
    invoke-static {p2}, Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior;->access$700(Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior;)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior$SavedState;->peekHeight:I

    .line 1664
    invoke-static {p2}, Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior;->access$400(Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior$SavedState;->fitToContents:Z

    .line 1665
    iget-boolean v0, p2, Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior;->hideable:Z

    iput-boolean v0, p0, Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior$SavedState;->hideable:Z

    .line 1666
    invoke-static {p2}, Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior;->access$800(Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior$SavedState;->skipCollapsed:Z

    .line 1667
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "flags"    # I

    .line 1685
    invoke-super {p0, p1, p2}, Landroidx/customview/view/AbsSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1686
    iget v0, p0, Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior$SavedState;->state:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1687
    iget v0, p0, Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior$SavedState;->peekHeight:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1688
    iget-boolean v0, p0, Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior$SavedState;->fitToContents:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1689
    iget-boolean v0, p0, Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior$SavedState;->hideable:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1690
    iget-boolean v0, p0, Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior$SavedState;->skipCollapsed:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1691
    return-void
.end method
