.class public Lcom/coui/appcompat/widget/COUIHeightView;
.super Ljava/lang/Object;
.source "COUIHeightView.java"


# instance fields
.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUIHeightView;->view:Landroid/view/View;

    .line 12
    return-void
.end method


# virtual methods
.method public getHeight()I
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIHeightView;->view:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 24
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIHeightView;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    return v0

    .line 26
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setHeight(I)V
    .locals 2
    .param p1, "height"    # I

    .line 15
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIHeightView;->view:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 16
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIHeightView;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 17
    .local v0, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 18
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIHeightView;->view:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 20
    .end local v0    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    return-void
.end method
