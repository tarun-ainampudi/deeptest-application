.class Lcom/coui/appcompat/widget/cardview/COUICardView$1;
.super Ljava/lang/Object;
.source "COUICardView.java"

# interfaces
.implements Lcom/coui/appcompat/widget/cardview/CardViewDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/widget/cardview/COUICardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mCardBackground:Landroid/graphics/drawable/Drawable;

.field final synthetic this$0:Lcom/coui/appcompat/widget/cardview/COUICardView;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/widget/cardview/COUICardView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coui/appcompat/widget/cardview/COUICardView;

    .line 434
    iput-object p1, p0, Lcom/coui/appcompat/widget/cardview/COUICardView$1;->this$0:Lcom/coui/appcompat/widget/cardview/COUICardView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCardBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 472
    iget-object v0, p0, Lcom/coui/appcompat/widget/cardview/COUICardView$1;->mCardBackground:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getCardView()Landroid/view/View;
    .locals 1

    .line 477
    iget-object v0, p0, Lcom/coui/appcompat/widget/cardview/COUICardView$1;->this$0:Lcom/coui/appcompat/widget/cardview/COUICardView;

    return-object v0
.end method

.method public getPreventCornerOverlap()Z
    .locals 1

    .line 450
    iget-object v0, p0, Lcom/coui/appcompat/widget/cardview/COUICardView$1;->this$0:Lcom/coui/appcompat/widget/cardview/COUICardView;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/cardview/COUICardView;->getPreventCornerOverlap()Z

    move-result v0

    return v0
.end method

.method public getUseCompatPadding()Z
    .locals 1

    .line 445
    iget-object v0, p0, Lcom/coui/appcompat/widget/cardview/COUICardView$1;->this$0:Lcom/coui/appcompat/widget/cardview/COUICardView;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/cardview/COUICardView;->getUseCompatPadding()Z

    move-result v0

    return v0
.end method

.method public setCardBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 439
    iput-object p1, p0, Lcom/coui/appcompat/widget/cardview/COUICardView$1;->mCardBackground:Landroid/graphics/drawable/Drawable;

    .line 440
    iget-object v0, p0, Lcom/coui/appcompat/widget/cardview/COUICardView$1;->this$0:Lcom/coui/appcompat/widget/cardview/COUICardView;

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/widget/cardview/COUICardView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 441
    return-void
.end method

.method public setMinWidthHeightInternal(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 462
    iget-object v0, p0, Lcom/coui/appcompat/widget/cardview/COUICardView$1;->this$0:Lcom/coui/appcompat/widget/cardview/COUICardView;

    iget v0, v0, Lcom/coui/appcompat/widget/cardview/COUICardView;->mUserSetMinWidth:I

    if-le p1, v0, :cond_0

    .line 463
    iget-object v0, p0, Lcom/coui/appcompat/widget/cardview/COUICardView$1;->this$0:Lcom/coui/appcompat/widget/cardview/COUICardView;

    invoke-static {v0, p1}, Lcom/coui/appcompat/widget/cardview/COUICardView;->access$101(Lcom/coui/appcompat/widget/cardview/COUICardView;I)V

    .line 465
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/cardview/COUICardView$1;->this$0:Lcom/coui/appcompat/widget/cardview/COUICardView;

    iget v0, v0, Lcom/coui/appcompat/widget/cardview/COUICardView;->mUserSetMinHeight:I

    if-le p2, v0, :cond_1

    .line 466
    iget-object v0, p0, Lcom/coui/appcompat/widget/cardview/COUICardView$1;->this$0:Lcom/coui/appcompat/widget/cardview/COUICardView;

    invoke-static {v0, p2}, Lcom/coui/appcompat/widget/cardview/COUICardView;->access$201(Lcom/coui/appcompat/widget/cardview/COUICardView;I)V

    .line 468
    :cond_1
    return-void
.end method

.method public setShadowPadding(IIII)V
    .locals 5
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 455
    iget-object v0, p0, Lcom/coui/appcompat/widget/cardview/COUICardView$1;->this$0:Lcom/coui/appcompat/widget/cardview/COUICardView;

    iget-object v0, v0, Lcom/coui/appcompat/widget/cardview/COUICardView;->mShadowBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 456
    iget-object v0, p0, Lcom/coui/appcompat/widget/cardview/COUICardView$1;->this$0:Lcom/coui/appcompat/widget/cardview/COUICardView;

    iget-object v1, p0, Lcom/coui/appcompat/widget/cardview/COUICardView$1;->this$0:Lcom/coui/appcompat/widget/cardview/COUICardView;

    iget-object v1, v1, Lcom/coui/appcompat/widget/cardview/COUICardView;->mContentPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, p1

    iget-object v2, p0, Lcom/coui/appcompat/widget/cardview/COUICardView$1;->this$0:Lcom/coui/appcompat/widget/cardview/COUICardView;

    iget-object v2, v2, Lcom/coui/appcompat/widget/cardview/COUICardView;->mContentPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, p2

    iget-object v3, p0, Lcom/coui/appcompat/widget/cardview/COUICardView$1;->this$0:Lcom/coui/appcompat/widget/cardview/COUICardView;

    iget-object v3, v3, Lcom/coui/appcompat/widget/cardview/COUICardView;->mContentPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, p3

    iget-object v4, p0, Lcom/coui/appcompat/widget/cardview/COUICardView$1;->this$0:Lcom/coui/appcompat/widget/cardview/COUICardView;

    iget-object v4, v4, Lcom/coui/appcompat/widget/cardview/COUICardView;->mContentPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v4, p4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/coui/appcompat/widget/cardview/COUICardView;->access$001(Lcom/coui/appcompat/widget/cardview/COUICardView;IIII)V

    .line 458
    return-void
.end method
