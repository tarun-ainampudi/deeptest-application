.class public Lcom/coui/appcompat/widget/toolbar/COUIToolbar$LayoutParams;
.super Landroidx/appcompat/widget/Toolbar$LayoutParams;
.source "COUIToolbar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/widget/toolbar/COUIToolbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# static fields
.field static final CUSTOM:I = 0x0

.field static final EXPANDED:I = 0x2

.field static final SYSTEM:I = 0x1


# instance fields
.field mTypeSearch:Z

.field mViewType:I


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "gravity"    # I

    .line 2251
    const/4 v0, -0x2

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1, p1}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$LayoutParams;-><init>(III)V

    .line 2252
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 2239
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/Toolbar$LayoutParams;-><init>(II)V

    .line 2223
    const/4 v0, 0x0

    iput v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$LayoutParams;->mViewType:I

    .line 2227
    iput-boolean v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$LayoutParams;->mTypeSearch:Z

    .line 2240
    const v0, 0x800013

    iput v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$LayoutParams;->gravity:I

    .line 2241
    return-void
.end method

.method public constructor <init>(III)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "gravity"    # I

    .line 2246
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/Toolbar$LayoutParams;-><init>(II)V

    .line 2223
    const/4 v0, 0x0

    iput v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$LayoutParams;->mViewType:I

    .line 2227
    iput-boolean v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$LayoutParams;->mTypeSearch:Z

    .line 2247
    iput p3, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$LayoutParams;->gravity:I

    .line 2248
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 2233
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/Toolbar$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2223
    const/4 v0, 0x0

    iput v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$LayoutParams;->mViewType:I

    .line 2227
    iput-boolean v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$LayoutParams;->mTypeSearch:Z

    .line 2234
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "source"    # Landroid/view/ViewGroup$LayoutParams;

    .line 2284
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/Toolbar$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2223
    const/4 v0, 0x0

    iput v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$LayoutParams;->mViewType:I

    .line 2227
    iput-boolean v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$LayoutParams;->mTypeSearch:Z

    .line 2285
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 1
    .param p1, "source"    # Landroid/view/ViewGroup$MarginLayoutParams;

    .line 2275
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/Toolbar$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 2223
    const/4 v0, 0x0

    iput v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$LayoutParams;->mViewType:I

    .line 2227
    iput-boolean v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$LayoutParams;->mTypeSearch:Z

    .line 2278
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$LayoutParams;->copyMarginsFromCompat(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 2279
    return-void
.end method

.method public constructor <init>(Landroidx/appcompat/app/ActionBar$LayoutParams;)V
    .locals 1
    .param p1, "source"    # Landroidx/appcompat/app/ActionBar$LayoutParams;

    .line 2267
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/Toolbar$LayoutParams;-><init>(Landroidx/appcompat/app/ActionBar$LayoutParams;)V

    .line 2223
    const/4 v0, 0x0

    iput v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$LayoutParams;->mViewType:I

    .line 2227
    iput-boolean v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$LayoutParams;->mTypeSearch:Z

    .line 2268
    return-void
.end method

.method public constructor <init>(Lcom/coui/appcompat/widget/toolbar/COUIToolbar$LayoutParams;)V
    .locals 1
    .param p1, "source"    # Lcom/coui/appcompat/widget/toolbar/COUIToolbar$LayoutParams;

    .line 2259
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/Toolbar$LayoutParams;-><init>(Landroidx/appcompat/widget/Toolbar$LayoutParams;)V

    .line 2223
    const/4 v0, 0x0

    iput v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$LayoutParams;->mViewType:I

    .line 2227
    iput-boolean v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$LayoutParams;->mTypeSearch:Z

    .line 2261
    iget v0, p1, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$LayoutParams;->mViewType:I

    iput v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$LayoutParams;->mViewType:I

    .line 2262
    return-void
.end method


# virtual methods
.method copyMarginsFromCompat(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 1
    .param p1, "source"    # Landroid/view/ViewGroup$MarginLayoutParams;

    .line 2288
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$LayoutParams;->leftMargin:I

    .line 2289
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$LayoutParams;->topMargin:I

    .line 2290
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iput v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$LayoutParams;->rightMargin:I

    .line 2291
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iput v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$LayoutParams;->bottomMargin:I

    .line 2292
    return-void
.end method
