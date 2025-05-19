.class Lcom/coui/appcompat/widget/COUIViewBoundsCheck;
.super Ljava/lang/Object;
.source "COUIViewBoundsCheck.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/widget/COUIViewBoundsCheck$Callback;,
        Lcom/coui/appcompat/widget/COUIViewBoundsCheck$BoundFlags;,
        Lcom/coui/appcompat/widget/COUIViewBoundsCheck$ViewBounds;
    }
.end annotation


# static fields
.field static final CVE_PVE_POS:I = 0xc

.field static final CVE_PVS_POS:I = 0x8

.field static final CVS_PVE_POS:I = 0x4

.field static final CVS_PVS_POS:I = 0x0

.field static final EQ:I = 0x2

.field static final FLAG_CVE_EQ_PVE:I = 0x2000

.field static final FLAG_CVE_EQ_PVS:I = 0x200

.field static final FLAG_CVE_GT_PVE:I = 0x1000

.field static final FLAG_CVE_GT_PVS:I = 0x100

.field static final FLAG_CVE_LT_PVE:I = 0x4000

.field static final FLAG_CVE_LT_PVS:I = 0x400

.field static final FLAG_CVS_EQ_PVE:I = 0x20

.field static final FLAG_CVS_EQ_PVS:I = 0x2

.field static final FLAG_CVS_GT_PVE:I = 0x10

.field static final FLAG_CVS_GT_PVS:I = 0x1

.field static final FLAG_CVS_LT_PVE:I = 0x40

.field static final FLAG_CVS_LT_PVS:I = 0x4

.field static final GT:I = 0x1

.field static final LT:I = 0x4

.field static final MASK:I = 0x7


# instance fields
.field mBoundFlags:Lcom/coui/appcompat/widget/COUIViewBoundsCheck$BoundFlags;

.field final mCallback:Lcom/coui/appcompat/widget/COUIViewBoundsCheck$Callback;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/widget/COUIViewBoundsCheck$Callback;)V
    .locals 1
    .param p1, "callback"    # Lcom/coui/appcompat/widget/COUIViewBoundsCheck$Callback;

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUIViewBoundsCheck;->mCallback:Lcom/coui/appcompat/widget/COUIViewBoundsCheck$Callback;

    .line 125
    new-instance v0, Lcom/coui/appcompat/widget/COUIViewBoundsCheck$BoundFlags;

    invoke-direct {v0}, Lcom/coui/appcompat/widget/COUIViewBoundsCheck$BoundFlags;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUIViewBoundsCheck;->mBoundFlags:Lcom/coui/appcompat/widget/COUIViewBoundsCheck$BoundFlags;

    .line 126
    return-void
.end method


# virtual methods
.method findOneViewWithinBoundFlags(IIII)Landroid/view/View;
    .locals 9
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "preferredBoundFlags"    # I
    .param p4, "acceptableBoundFlags"    # I

    .line 209
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIViewBoundsCheck;->mCallback:Lcom/coui/appcompat/widget/COUIViewBoundsCheck$Callback;

    invoke-interface {v0}, Lcom/coui/appcompat/widget/COUIViewBoundsCheck$Callback;->getParentStart()I

    move-result v0

    .line 210
    .local v0, "start":I
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIViewBoundsCheck;->mCallback:Lcom/coui/appcompat/widget/COUIViewBoundsCheck$Callback;

    invoke-interface {v1}, Lcom/coui/appcompat/widget/COUIViewBoundsCheck$Callback;->getParentEnd()I

    move-result v1

    .line 211
    .local v1, "end":I
    if-le p2, p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, -0x1

    .line 212
    .local v2, "next":I
    :goto_0
    const/4 v3, 0x0

    .line 213
    .local v3, "acceptableMatch":Landroid/view/View;
    move-object v4, v3

    move v3, p1

    .local v3, "i":I
    .local v4, "acceptableMatch":Landroid/view/View;
    :goto_1
    if-eq v3, p2, :cond_3

    .line 214
    iget-object v5, p0, Lcom/coui/appcompat/widget/COUIViewBoundsCheck;->mCallback:Lcom/coui/appcompat/widget/COUIViewBoundsCheck$Callback;

    invoke-interface {v5, v3}, Lcom/coui/appcompat/widget/COUIViewBoundsCheck$Callback;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 215
    .local v5, "child":Landroid/view/View;
    iget-object v6, p0, Lcom/coui/appcompat/widget/COUIViewBoundsCheck;->mCallback:Lcom/coui/appcompat/widget/COUIViewBoundsCheck$Callback;

    invoke-interface {v6, v5}, Lcom/coui/appcompat/widget/COUIViewBoundsCheck$Callback;->getChildStart(Landroid/view/View;)I

    move-result v6

    .line 216
    .local v6, "childStart":I
    iget-object v7, p0, Lcom/coui/appcompat/widget/COUIViewBoundsCheck;->mCallback:Lcom/coui/appcompat/widget/COUIViewBoundsCheck$Callback;

    invoke-interface {v7, v5}, Lcom/coui/appcompat/widget/COUIViewBoundsCheck$Callback;->getChildEnd(Landroid/view/View;)I

    move-result v7

    .line 217
    .local v7, "childEnd":I
    iget-object v8, p0, Lcom/coui/appcompat/widget/COUIViewBoundsCheck;->mBoundFlags:Lcom/coui/appcompat/widget/COUIViewBoundsCheck$BoundFlags;

    invoke-virtual {v8, v0, v1, v6, v7}, Lcom/coui/appcompat/widget/COUIViewBoundsCheck$BoundFlags;->setBounds(IIII)V

    .line 218
    if-eqz p3, :cond_1

    .line 219
    iget-object v8, p0, Lcom/coui/appcompat/widget/COUIViewBoundsCheck;->mBoundFlags:Lcom/coui/appcompat/widget/COUIViewBoundsCheck$BoundFlags;

    invoke-virtual {v8}, Lcom/coui/appcompat/widget/COUIViewBoundsCheck$BoundFlags;->resetFlags()V

    .line 220
    iget-object v8, p0, Lcom/coui/appcompat/widget/COUIViewBoundsCheck;->mBoundFlags:Lcom/coui/appcompat/widget/COUIViewBoundsCheck$BoundFlags;

    invoke-virtual {v8, p3}, Lcom/coui/appcompat/widget/COUIViewBoundsCheck$BoundFlags;->addFlags(I)V

    .line 221
    iget-object v8, p0, Lcom/coui/appcompat/widget/COUIViewBoundsCheck;->mBoundFlags:Lcom/coui/appcompat/widget/COUIViewBoundsCheck$BoundFlags;

    invoke-virtual {v8}, Lcom/coui/appcompat/widget/COUIViewBoundsCheck$BoundFlags;->boundsMatch()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 223
    return-object v5

    .line 226
    :cond_1
    if-eqz p4, :cond_2

    .line 227
    iget-object v8, p0, Lcom/coui/appcompat/widget/COUIViewBoundsCheck;->mBoundFlags:Lcom/coui/appcompat/widget/COUIViewBoundsCheck$BoundFlags;

    invoke-virtual {v8}, Lcom/coui/appcompat/widget/COUIViewBoundsCheck$BoundFlags;->resetFlags()V

    .line 228
    iget-object v8, p0, Lcom/coui/appcompat/widget/COUIViewBoundsCheck;->mBoundFlags:Lcom/coui/appcompat/widget/COUIViewBoundsCheck$BoundFlags;

    invoke-virtual {v8, p4}, Lcom/coui/appcompat/widget/COUIViewBoundsCheck$BoundFlags;->addFlags(I)V

    .line 229
    iget-object v8, p0, Lcom/coui/appcompat/widget/COUIViewBoundsCheck;->mBoundFlags:Lcom/coui/appcompat/widget/COUIViewBoundsCheck$BoundFlags;

    invoke-virtual {v8}, Lcom/coui/appcompat/widget/COUIViewBoundsCheck$BoundFlags;->boundsMatch()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 230
    move-object v4, v5

    .line 213
    .end local v5    # "child":Landroid/view/View;
    .end local v6    # "childStart":I
    .end local v7    # "childEnd":I
    :cond_2
    add-int/2addr v3, v2

    goto :goto_1

    .line 234
    .end local v3    # "i":I
    :cond_3
    return-object v4
.end method

.method isViewWithinBoundFlags(Landroid/view/View;I)Z
    .locals 5
    .param p1, "child"    # Landroid/view/View;
    .param p2, "boundsFlags"    # I

    .line 244
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIViewBoundsCheck;->mBoundFlags:Lcom/coui/appcompat/widget/COUIViewBoundsCheck$BoundFlags;

    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIViewBoundsCheck;->mCallback:Lcom/coui/appcompat/widget/COUIViewBoundsCheck$Callback;

    invoke-interface {v1}, Lcom/coui/appcompat/widget/COUIViewBoundsCheck$Callback;->getParentStart()I

    move-result v1

    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIViewBoundsCheck;->mCallback:Lcom/coui/appcompat/widget/COUIViewBoundsCheck$Callback;

    invoke-interface {v2}, Lcom/coui/appcompat/widget/COUIViewBoundsCheck$Callback;->getParentEnd()I

    move-result v2

    iget-object v3, p0, Lcom/coui/appcompat/widget/COUIViewBoundsCheck;->mCallback:Lcom/coui/appcompat/widget/COUIViewBoundsCheck$Callback;

    .line 245
    invoke-interface {v3, p1}, Lcom/coui/appcompat/widget/COUIViewBoundsCheck$Callback;->getChildStart(Landroid/view/View;)I

    move-result v3

    iget-object v4, p0, Lcom/coui/appcompat/widget/COUIViewBoundsCheck;->mCallback:Lcom/coui/appcompat/widget/COUIViewBoundsCheck$Callback;

    invoke-interface {v4, p1}, Lcom/coui/appcompat/widget/COUIViewBoundsCheck$Callback;->getChildEnd(Landroid/view/View;)I

    move-result v4

    .line 244
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/coui/appcompat/widget/COUIViewBoundsCheck$BoundFlags;->setBounds(IIII)V

    .line 246
    if-eqz p2, :cond_0

    .line 247
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIViewBoundsCheck;->mBoundFlags:Lcom/coui/appcompat/widget/COUIViewBoundsCheck$BoundFlags;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/COUIViewBoundsCheck$BoundFlags;->resetFlags()V

    .line 248
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIViewBoundsCheck;->mBoundFlags:Lcom/coui/appcompat/widget/COUIViewBoundsCheck$BoundFlags;

    invoke-virtual {v0, p2}, Lcom/coui/appcompat/widget/COUIViewBoundsCheck$BoundFlags;->addFlags(I)V

    .line 249
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIViewBoundsCheck;->mBoundFlags:Lcom/coui/appcompat/widget/COUIViewBoundsCheck$BoundFlags;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/COUIViewBoundsCheck$BoundFlags;->boundsMatch()Z

    move-result v0

    return v0

    .line 251
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
