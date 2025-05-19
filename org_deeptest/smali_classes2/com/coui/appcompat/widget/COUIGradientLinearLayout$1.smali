.class Lcom/coui/appcompat/widget/COUIGradientLinearLayout$1;
.super Landroid/view/ViewOutlineProvider;
.source "COUIGradientLinearLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/widget/COUIGradientLinearLayout;->clipBackground()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/widget/COUIGradientLinearLayout;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/widget/COUIGradientLinearLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coui/appcompat/widget/COUIGradientLinearLayout;

    .line 301
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUIGradientLinearLayout$1;->this$0:Lcom/coui/appcompat/widget/COUIGradientLinearLayout;

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "outline"    # Landroid/graphics/Outline;

    .line 304
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIGradientLinearLayout$1;->this$0:Lcom/coui/appcompat/widget/COUIGradientLinearLayout;

    invoke-static {v0}, Lcom/coui/appcompat/widget/COUIGradientLinearLayout;->access$000(Lcom/coui/appcompat/widget/COUIGradientLinearLayout;)I

    move-result v2

    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIGradientLinearLayout$1;->this$0:Lcom/coui/appcompat/widget/COUIGradientLinearLayout;

    invoke-static {v0}, Lcom/coui/appcompat/widget/COUIGradientLinearLayout;->access$100(Lcom/coui/appcompat/widget/COUIGradientLinearLayout;)I

    move-result v3

    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIGradientLinearLayout$1;->this$0:Lcom/coui/appcompat/widget/COUIGradientLinearLayout;

    invoke-static {v0}, Lcom/coui/appcompat/widget/COUIGradientLinearLayout;->access$200(Lcom/coui/appcompat/widget/COUIGradientLinearLayout;)I

    move-result v4

    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIGradientLinearLayout$1;->this$0:Lcom/coui/appcompat/widget/COUIGradientLinearLayout;

    invoke-static {v0}, Lcom/coui/appcompat/widget/COUIGradientLinearLayout;->access$300(Lcom/coui/appcompat/widget/COUIGradientLinearLayout;)I

    move-result v5

    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIGradientLinearLayout$1;->this$0:Lcom/coui/appcompat/widget/COUIGradientLinearLayout;

    invoke-static {v0}, Lcom/coui/appcompat/widget/COUIGradientLinearLayout;->access$400(Lcom/coui/appcompat/widget/COUIGradientLinearLayout;)I

    move-result v0

    int-to-float v6, v0

    move-object v1, p2

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    .line 305
    return-void
.end method
