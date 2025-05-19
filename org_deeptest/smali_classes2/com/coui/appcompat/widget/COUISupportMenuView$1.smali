.class Lcom/coui/appcompat/widget/COUISupportMenuView$1;
.super Ljava/lang/Object;
.source "COUISupportMenuView.java"

# interfaces
.implements Lcom/coui/appcompat/widget/COUIViewExplorerByTouchHelper$COUIViewTalkBalkInteraction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/widget/COUISupportMenuView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mVirtualViewAt:I

.field final synthetic this$0:Lcom/coui/appcompat/widget/COUISupportMenuView;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/widget/COUISupportMenuView;)V
    .locals 1
    .param p1, "this$0"    # Lcom/coui/appcompat/widget/COUISupportMenuView;

    .line 390
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUISupportMenuView$1;->this$0:Lcom/coui/appcompat/widget/COUISupportMenuView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 391
    const/4 v0, -0x1

    iput v0, p0, Lcom/coui/appcompat/widget/COUISupportMenuView$1;->mVirtualViewAt:I

    return-void
.end method


# virtual methods
.method public getClassName()Ljava/lang/CharSequence;
    .locals 1

    .line 455
    const-class v0, Landroid/widget/Button;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentPosition()I
    .locals 1

    .line 445
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISupportMenuView$1;->this$0:Lcom/coui/appcompat/widget/COUISupportMenuView;

    invoke-static {v0}, Lcom/coui/appcompat/widget/COUISupportMenuView;->access$1100(Lcom/coui/appcompat/widget/COUISupportMenuView;)I

    move-result v0

    return v0
.end method

.method public getDisablePosition()I
    .locals 1

    .line 460
    const/4 v0, -0x1

    return v0
.end method

.method public getItemBounds(ILandroid/graphics/Rect;)V
    .locals 6
    .param p1, "position"    # I
    .param p2, "rect"    # Landroid/graphics/Rect;

    .line 407
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISupportMenuView$1;->this$0:Lcom/coui/appcompat/widget/COUISupportMenuView;

    invoke-static {v0}, Lcom/coui/appcompat/widget/COUISupportMenuView;->access$100(Lcom/coui/appcompat/widget/COUISupportMenuView;)Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    .line 409
    .local v0, "fmi":Landroid/graphics/Paint$FontMetricsInt;
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUISupportMenuView$1;->this$0:Lcom/coui/appcompat/widget/COUISupportMenuView;

    invoke-static {v1}, Lcom/coui/appcompat/widget/COUISupportMenuView;->access$200(Lcom/coui/appcompat/widget/COUISupportMenuView;)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lcom/coui/appcompat/widget/COUISupportMenuView$1;->this$0:Lcom/coui/appcompat/widget/COUISupportMenuView;

    invoke-static {v2}, Lcom/coui/appcompat/widget/COUISupportMenuView;->access$200(Lcom/coui/appcompat/widget/COUISupportMenuView;)I

    move-result v2

    iget-object v3, p0, Lcom/coui/appcompat/widget/COUISupportMenuView$1;->this$0:Lcom/coui/appcompat/widget/COUISupportMenuView;

    invoke-static {v3}, Lcom/coui/appcompat/widget/COUISupportMenuView;->access$300(Lcom/coui/appcompat/widget/COUISupportMenuView;)I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/coui/appcompat/widget/COUISupportMenuView$1;->this$0:Lcom/coui/appcompat/widget/COUISupportMenuView;

    invoke-static {v3}, Lcom/coui/appcompat/widget/COUISupportMenuView;->access$400(Lcom/coui/appcompat/widget/COUISupportMenuView;)I

    move-result v3

    rem-int v3, p1, v3

    mul-int/2addr v2, v3

    add-int/2addr v1, v2

    .line 410
    .local v1, "left":I
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUISupportMenuView$1;->this$0:Lcom/coui/appcompat/widget/COUISupportMenuView;

    invoke-virtual {v2}, Lcom/coui/appcompat/widget/COUISupportMenuView;->isLayoutRtl()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 411
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUISupportMenuView$1;->this$0:Lcom/coui/appcompat/widget/COUISupportMenuView;

    invoke-virtual {v2}, Lcom/coui/appcompat/widget/COUISupportMenuView;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/coui/appcompat/widget/COUISupportMenuView$1;->this$0:Lcom/coui/appcompat/widget/COUISupportMenuView;

    invoke-static {v3}, Lcom/coui/appcompat/widget/COUISupportMenuView;->access$300(Lcom/coui/appcompat/widget/COUISupportMenuView;)I

    move-result v3

    iget-object v4, p0, Lcom/coui/appcompat/widget/COUISupportMenuView$1;->this$0:Lcom/coui/appcompat/widget/COUISupportMenuView;

    invoke-static {v4}, Lcom/coui/appcompat/widget/COUISupportMenuView;->access$200(Lcom/coui/appcompat/widget/COUISupportMenuView;)I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/coui/appcompat/widget/COUISupportMenuView$1;->this$0:Lcom/coui/appcompat/widget/COUISupportMenuView;

    invoke-static {v4}, Lcom/coui/appcompat/widget/COUISupportMenuView;->access$200(Lcom/coui/appcompat/widget/COUISupportMenuView;)I

    move-result v4

    iget-object v5, p0, Lcom/coui/appcompat/widget/COUISupportMenuView$1;->this$0:Lcom/coui/appcompat/widget/COUISupportMenuView;

    invoke-static {v5}, Lcom/coui/appcompat/widget/COUISupportMenuView;->access$300(Lcom/coui/appcompat/widget/COUISupportMenuView;)I

    move-result v5

    add-int/2addr v4, v5

    iget-object v5, p0, Lcom/coui/appcompat/widget/COUISupportMenuView$1;->this$0:Lcom/coui/appcompat/widget/COUISupportMenuView;

    invoke-static {v5}, Lcom/coui/appcompat/widget/COUISupportMenuView;->access$400(Lcom/coui/appcompat/widget/COUISupportMenuView;)I

    move-result v5

    rem-int v5, p1, v5

    mul-int/2addr v4, v5

    add-int/2addr v3, v4

    sub-int v1, v2, v3

    .line 413
    :cond_0
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUISupportMenuView$1;->this$0:Lcom/coui/appcompat/widget/COUISupportMenuView;

    invoke-static {v2}, Lcom/coui/appcompat/widget/COUISupportMenuView;->access$300(Lcom/coui/appcompat/widget/COUISupportMenuView;)I

    move-result v2

    add-int/2addr v2, v1

    .line 414
    .local v2, "right":I
    iget-object v3, p0, Lcom/coui/appcompat/widget/COUISupportMenuView$1;->this$0:Lcom/coui/appcompat/widget/COUISupportMenuView;

    invoke-static {v3}, Lcom/coui/appcompat/widget/COUISupportMenuView;->access$500(Lcom/coui/appcompat/widget/COUISupportMenuView;)I

    move-result v3

    iget-object v4, p0, Lcom/coui/appcompat/widget/COUISupportMenuView$1;->this$0:Lcom/coui/appcompat/widget/COUISupportMenuView;

    invoke-static {v4}, Lcom/coui/appcompat/widget/COUISupportMenuView;->access$400(Lcom/coui/appcompat/widget/COUISupportMenuView;)I

    move-result v4

    div-int v4, p1, v4

    add-int/lit8 v4, v4, 0x1

    mul-int/2addr v3, v4

    .line 415
    .local v3, "top":I
    iget-object v4, p0, Lcom/coui/appcompat/widget/COUISupportMenuView$1;->this$0:Lcom/coui/appcompat/widget/COUISupportMenuView;

    invoke-static {v4}, Lcom/coui/appcompat/widget/COUISupportMenuView;->access$400(Lcom/coui/appcompat/widget/COUISupportMenuView;)I

    move-result v4

    if-ge p1, v4, :cond_1

    .line 416
    iget-object v4, p0, Lcom/coui/appcompat/widget/COUISupportMenuView$1;->this$0:Lcom/coui/appcompat/widget/COUISupportMenuView;

    invoke-static {v4}, Lcom/coui/appcompat/widget/COUISupportMenuView;->access$500(Lcom/coui/appcompat/widget/COUISupportMenuView;)I

    move-result v3

    goto :goto_0

    .line 418
    :cond_1
    iget-object v4, p0, Lcom/coui/appcompat/widget/COUISupportMenuView$1;->this$0:Lcom/coui/appcompat/widget/COUISupportMenuView;

    invoke-static {v4}, Lcom/coui/appcompat/widget/COUISupportMenuView;->access$600(Lcom/coui/appcompat/widget/COUISupportMenuView;)I

    move-result v3

    .line 420
    :goto_0
    iget-object v4, p0, Lcom/coui/appcompat/widget/COUISupportMenuView$1;->this$0:Lcom/coui/appcompat/widget/COUISupportMenuView;

    invoke-static {v4}, Lcom/coui/appcompat/widget/COUISupportMenuView;->access$700(Lcom/coui/appcompat/widget/COUISupportMenuView;)I

    move-result v4

    add-int/2addr v4, v3

    iget-object v5, p0, Lcom/coui/appcompat/widget/COUISupportMenuView$1;->this$0:Lcom/coui/appcompat/widget/COUISupportMenuView;

    invoke-static {v5}, Lcom/coui/appcompat/widget/COUISupportMenuView;->access$800(Lcom/coui/appcompat/widget/COUISupportMenuView;)I

    move-result v5

    add-int/2addr v4, v5

    iget v5, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    add-int/2addr v4, v5

    iget v5, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v4, v5

    .line 421
    .local v4, "bottom":I
    invoke-virtual {p2, v1, v3, v2, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 423
    return-void
.end method

.method public getItemCounts()I
    .locals 1

    .line 450
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISupportMenuView$1;->this$0:Lcom/coui/appcompat/widget/COUISupportMenuView;

    invoke-static {v0}, Lcom/coui/appcompat/widget/COUISupportMenuView;->access$1200(Lcom/coui/appcompat/widget/COUISupportMenuView;)I

    move-result v0

    return v0
.end method

.method public getItemDescription(I)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "virtualViewId"    # I

    .line 427
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISupportMenuView$1;->this$0:Lcom/coui/appcompat/widget/COUISupportMenuView;

    invoke-static {v0}, Lcom/coui/appcompat/widget/COUISupportMenuView;->access$900(Lcom/coui/appcompat/widget/COUISupportMenuView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/widget/COUISupportMenuItem;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/COUISupportMenuItem;->getText()Ljava/lang/String;

    move-result-object v0

    .line 428
    .local v0, "description":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 429
    return-object v0

    .line 431
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getVirtualViewAt(FF)I
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 394
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISupportMenuView$1;->this$0:Lcom/coui/appcompat/widget/COUISupportMenuView;

    float-to-int v1, p1

    int-to-float v1, v1

    float-to-int v2, p2

    int-to-float v2, v2

    invoke-static {v0, v1, v2}, Lcom/coui/appcompat/widget/COUISupportMenuView;->access$000(Lcom/coui/appcompat/widget/COUISupportMenuView;FF)I

    move-result v0

    .line 395
    .local v0, "day":I
    iput v0, p0, Lcom/coui/appcompat/widget/COUISupportMenuView$1;->mVirtualViewAt:I

    .line 396
    return v0
.end method

.method public performAction(IIZ)V
    .locals 2
    .param p1, "virtualViewId"    # I
    .param p2, "actiontype"    # I
    .param p3, "resolvePara"    # Z

    .line 436
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISupportMenuView$1;->this$0:Lcom/coui/appcompat/widget/COUISupportMenuView;

    invoke-static {v0}, Lcom/coui/appcompat/widget/COUISupportMenuView;->access$900(Lcom/coui/appcompat/widget/COUISupportMenuView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/widget/COUISupportMenuItem;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/COUISupportMenuItem;->getOnItemClickListener()Lcom/coui/appcompat/widget/COUISupportMenuItem$OnItemClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 437
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISupportMenuView$1;->this$0:Lcom/coui/appcompat/widget/COUISupportMenuView;

    invoke-static {v0}, Lcom/coui/appcompat/widget/COUISupportMenuView;->access$900(Lcom/coui/appcompat/widget/COUISupportMenuView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/widget/COUISupportMenuItem;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/COUISupportMenuItem;->getOnItemClickListener()Lcom/coui/appcompat/widget/COUISupportMenuItem$OnItemClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/coui/appcompat/widget/COUISupportMenuItem$OnItemClickListener;->onCOUIMenuItemClick(I)V

    .line 440
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISupportMenuView$1;->this$0:Lcom/coui/appcompat/widget/COUISupportMenuView;

    invoke-static {v0}, Lcom/coui/appcompat/widget/COUISupportMenuView;->access$1000(Lcom/coui/appcompat/widget/COUISupportMenuView;)Lcom/coui/appcompat/widget/COUIViewExplorerByTouchHelper;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/coui/appcompat/widget/COUIViewExplorerByTouchHelper;->sendEventForVirtualView(II)Z

    .line 441
    return-void
.end method
