.class Lcom/coui/appcompat/widget/COUILoadingView$1;
.super Ljava/lang/Object;
.source "COUILoadingView.java"

# interfaces
.implements Lcom/coui/appcompat/widget/COUIViewExplorerByTouchHelper$COUIViewTalkBalkInteraction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/widget/COUILoadingView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mVirtualViewId:I

.field final synthetic this$0:Lcom/coui/appcompat/widget/COUILoadingView;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/widget/COUILoadingView;)V
    .locals 1
    .param p1, "this$0"    # Lcom/coui/appcompat/widget/COUILoadingView;

    .line 321
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUILoadingView$1;->this$0:Lcom/coui/appcompat/widget/COUILoadingView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 322
    const/4 v0, -0x1

    iput v0, p0, Lcom/coui/appcompat/widget/COUILoadingView$1;->mVirtualViewId:I

    return-void
.end method


# virtual methods
.method public getClassName()Ljava/lang/CharSequence;
    .locals 1

    .line 364
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCurrentPosition()I
    .locals 1

    .line 338
    const/4 v0, -0x1

    return v0
.end method

.method public getDisablePosition()I
    .locals 1

    .line 370
    const/4 v0, -0x1

    return v0
.end method

.method public getItemBounds(ILandroid/graphics/Rect;)V
    .locals 3
    .param p1, "position"    # I
    .param p2, "rect"    # Landroid/graphics/Rect;

    .line 326
    if-nez p1, :cond_0

    .line 327
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILoadingView$1;->this$0:Lcom/coui/appcompat/widget/COUILoadingView;

    invoke-static {v0}, Lcom/coui/appcompat/widget/COUILoadingView;->access$000(Lcom/coui/appcompat/widget/COUILoadingView;)I

    move-result v0

    iget-object v1, p0, Lcom/coui/appcompat/widget/COUILoadingView$1;->this$0:Lcom/coui/appcompat/widget/COUILoadingView;

    invoke-static {v1}, Lcom/coui/appcompat/widget/COUILoadingView;->access$100(Lcom/coui/appcompat/widget/COUILoadingView;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p2, v2, v2, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 329
    :cond_0
    return-void
.end method

.method public getItemCounts()I
    .locals 1

    .line 343
    const/4 v0, 0x1

    return v0
.end method

.method public getItemDescription(I)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "virtualViewId"    # I

    .line 356
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILoadingView$1;->this$0:Lcom/coui/appcompat/widget/COUILoadingView;

    invoke-static {v0}, Lcom/coui/appcompat/widget/COUILoadingView;->access$200(Lcom/coui/appcompat/widget/COUILoadingView;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 357
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILoadingView$1;->this$0:Lcom/coui/appcompat/widget/COUILoadingView;

    invoke-static {v0}, Lcom/coui/appcompat/widget/COUILoadingView;->access$200(Lcom/coui/appcompat/widget/COUILoadingView;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 359
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVirtualViewAt(FF)I
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 348
    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-ltz v1, :cond_0

    iget-object v1, p0, Lcom/coui/appcompat/widget/COUILoadingView$1;->this$0:Lcom/coui/appcompat/widget/COUILoadingView;

    invoke-static {v1}, Lcom/coui/appcompat/widget/COUILoadingView;->access$000(Lcom/coui/appcompat/widget/COUILoadingView;)I

    move-result v1

    int-to-float v1, v1

    cmpg-float v1, p1, v1

    if-gtz v1, :cond_0

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILoadingView$1;->this$0:Lcom/coui/appcompat/widget/COUILoadingView;

    invoke-static {v0}, Lcom/coui/appcompat/widget/COUILoadingView;->access$100(Lcom/coui/appcompat/widget/COUILoadingView;)I

    move-result v0

    int-to-float v0, v0

    cmpg-float v0, p2, v0

    if-gtz v0, :cond_0

    .line 349
    const/4 v0, 0x0

    return v0

    .line 351
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public performAction(IIZ)V
    .locals 0
    .param p1, "virtualViewId"    # I
    .param p2, "actiontype"    # I
    .param p3, "resolvePara"    # Z

    .line 334
    return-void
.end method
