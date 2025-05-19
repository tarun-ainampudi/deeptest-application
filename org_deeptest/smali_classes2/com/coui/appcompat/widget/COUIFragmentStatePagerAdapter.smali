.class public abstract Lcom/coui/appcompat/widget/COUIFragmentStatePagerAdapter;
.super Landroidx/fragment/app/FragmentStatePagerAdapter;
.source "COUIFragmentStatePagerAdapter.java"


# direct methods
.method public constructor <init>(Landroidx/fragment/app/FragmentManager;)V
    .locals 0
    .param p1, "fm"    # Landroidx/fragment/app/FragmentManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 38
    invoke-direct {p0, p1}, Landroidx/fragment/app/FragmentStatePagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 39
    return-void
.end method


# virtual methods
.method public getPageIcon(I)I
    .locals 1
    .param p1, "position"    # I

    .line 48
    const/4 v0, 0x0

    return v0
.end method
