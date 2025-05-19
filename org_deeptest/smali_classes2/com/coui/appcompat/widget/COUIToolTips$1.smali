.class Lcom/coui/appcompat/widget/COUIToolTips$1;
.super Ljava/lang/Object;
.source "COUIToolTips.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/widget/COUIToolTips;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/widget/COUIToolTips;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/widget/COUIToolTips;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coui/appcompat/widget/COUIToolTips;

    .line 132
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUIToolTips$1;->this$0:Lcom/coui/appcompat/widget/COUIToolTips;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I
    .param p6, "oldLeft"    # I
    .param p7, "oldTop"    # I
    .param p8, "oldRight"    # I
    .param p9, "oldBottom"    # I

    .line 135
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p2, p3, p4, p5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 136
    .local v0, "newRect":Landroid/graphics/Rect;
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, p6, p7, p8, p9}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 137
    .local v1, "oldRect":Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIToolTips$1;->this$0:Lcom/coui/appcompat/widget/COUIToolTips;

    invoke-virtual {v2}, Lcom/coui/appcompat/widget/COUIToolTips;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIToolTips$1;->this$0:Lcom/coui/appcompat/widget/COUIToolTips;

    invoke-static {v2}, Lcom/coui/appcompat/widget/COUIToolTips;->access$000(Lcom/coui/appcompat/widget/COUIToolTips;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 138
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIToolTips$1;->this$0:Lcom/coui/appcompat/widget/COUIToolTips;

    invoke-static {v2}, Lcom/coui/appcompat/widget/COUIToolTips;->access$100(Lcom/coui/appcompat/widget/COUIToolTips;)V

    .line 140
    :cond_0
    return-void
.end method
