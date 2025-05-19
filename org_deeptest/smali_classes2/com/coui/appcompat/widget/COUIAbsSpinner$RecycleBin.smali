.class Lcom/coui/appcompat/widget/COUIAbsSpinner$RecycleBin;
.super Ljava/lang/Object;
.source "COUIAbsSpinner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/widget/COUIAbsSpinner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RecycleBin"
.end annotation


# instance fields
.field private final mScrapHeap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/coui/appcompat/widget/COUIAbsSpinner;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/widget/COUIAbsSpinner;)V
    .locals 1
    .param p1, "this$0"    # Lcom/coui/appcompat/widget/COUIAbsSpinner;

    .line 425
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUIAbsSpinner$RecycleBin;->this$0:Lcom/coui/appcompat/widget/COUIAbsSpinner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 426
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUIAbsSpinner$RecycleBin;->mScrapHeap:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method clear()V
    .locals 6

    .line 445
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIAbsSpinner$RecycleBin;->mScrapHeap:Landroid/util/SparseArray;

    .line 446
    .local v0, "scrapHeap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/View;>;"
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 447
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 448
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 449
    .local v3, "view":Landroid/view/View;
    if-eqz v3, :cond_0

    .line 450
    iget-object v4, p0, Lcom/coui/appcompat/widget/COUIAbsSpinner$RecycleBin;->this$0:Lcom/coui/appcompat/widget/COUIAbsSpinner;

    const/4 v5, 0x1

    invoke-static {v4, v3, v5}, Lcom/coui/appcompat/widget/COUIAbsSpinner;->access$000(Lcom/coui/appcompat/widget/COUIAbsSpinner;Landroid/view/View;Z)V

    .line 447
    .end local v3    # "view":Landroid/view/View;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 453
    .end local v2    # "i":I
    :cond_1
    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 454
    return-void
.end method

.method get(I)Landroid/view/View;
    .locals 2
    .param p1, "position"    # I

    .line 434
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIAbsSpinner$RecycleBin;->mScrapHeap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 435
    .local v0, "result":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 437
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIAbsSpinner$RecycleBin;->mScrapHeap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 441
    :cond_0
    return-object v0
.end method

.method public put(ILandroid/view/View;)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "v"    # Landroid/view/View;

    .line 429
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIAbsSpinner$RecycleBin;->mScrapHeap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 430
    return-void
.end method
