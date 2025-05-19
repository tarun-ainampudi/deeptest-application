.class Lcom/coui/appcompat/widget/COUISearchViewAnimate$1;
.super Ljava/lang/Object;
.source "COUISearchViewAnimate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/widget/COUISearchViewAnimate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/widget/COUISearchViewAnimate;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/widget/COUISearchViewAnimate;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coui/appcompat/widget/COUISearchViewAnimate;

    .line 161
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate$1;->this$0:Lcom/coui/appcompat/widget/COUISearchViewAnimate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 164
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate$1;->this$0:Lcom/coui/appcompat/widget/COUISearchViewAnimate;

    invoke-static {v0}, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->access$000(Lcom/coui/appcompat/widget/COUISearchViewAnimate;)Lcom/coui/appcompat/widget/toolbar/COUIToolbar;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 165
    const/4 v0, -0x1

    .line 166
    .local v0, "frontPlaceRight":I
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate$1;->this$0:Lcom/coui/appcompat/widget/COUISearchViewAnimate;

    invoke-static {v1}, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->access$000(Lcom/coui/appcompat/widget/COUISearchViewAnimate;)Lcom/coui/appcompat/widget/toolbar/COUIToolbar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->getChildCount()I

    move-result v1

    .line 167
    .local v1, "childCount":I
    if-lez v1, :cond_1

    .line 168
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 169
    iget-object v3, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate$1;->this$0:Lcom/coui/appcompat/widget/COUISearchViewAnimate;

    invoke-static {v3}, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->access$000(Lcom/coui/appcompat/widget/COUISearchViewAnimate;)Lcom/coui/appcompat/widget/toolbar/COUIToolbar;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 170
    .local v3, "childAt":Landroid/view/View;
    instance-of v4, v3, Landroidx/appcompat/widget/ActionMenuView;

    if-eqz v4, :cond_0

    .line 171
    move-object v4, v3

    check-cast v4, Landroidx/appcompat/widget/ActionMenuView;

    .line 172
    .local v4, "amv":Landroidx/appcompat/widget/ActionMenuView;
    invoke-virtual {v4}, Landroidx/appcompat/widget/ActionMenuView;->getWidth()I

    move-result v0

    .line 173
    goto :goto_1

    .line 168
    .end local v3    # "childAt":Landroid/view/View;
    .end local v4    # "amv":Landroidx/appcompat/widget/ActionMenuView;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 177
    .end local v2    # "i":I
    :cond_1
    :goto_1
    if-lez v0, :cond_4

    .line 178
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate$1;->this$0:Lcom/coui/appcompat/widget/COUISearchViewAnimate;

    invoke-virtual {v2}, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcoui/support/appcompat/R$dimen;->coui_actionbar_menuitemview_item_spacing:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    add-int/2addr v0, v2

    .line 179
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate$1;->this$0:Lcom/coui/appcompat/widget/COUISearchViewAnimate;

    invoke-static {v2}, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->access$100(Lcom/coui/appcompat/widget/COUISearchViewAnimate;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 180
    .local v2, "params":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v2, :cond_3

    instance-of v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v3, :cond_3

    .line 181
    move-object v3, v2

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 182
    .local v3, "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    iget-object v4, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate$1;->this$0:Lcom/coui/appcompat/widget/COUISearchViewAnimate;

    invoke-static {v4}, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->access$200(Lcom/coui/appcompat/widget/COUISearchViewAnimate;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 183
    iput v0, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_2

    .line 185
    :cond_2
    iput v0, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 188
    .end local v3    # "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_3
    :goto_2
    iget-object v3, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate$1;->this$0:Lcom/coui/appcompat/widget/COUISearchViewAnimate;

    invoke-static {v3}, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->access$100(Lcom/coui/appcompat/widget/COUISearchViewAnimate;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 191
    .end local v0    # "frontPlaceRight":I
    .end local v1    # "childCount":I
    .end local v2    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_4
    return-void
.end method
