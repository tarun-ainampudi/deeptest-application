.class Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow$1;
.super Ljava/lang/Object;
.source "COUIBasePopupWindow.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;

    .line 148
    iput-object p1, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow$1;->this$0:Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollChanged()V
    .locals 15

    .line 151
    iget-object v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow$1;->this$0:Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;

    invoke-static {v0}, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->access$000(Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow$1;->this$0:Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;

    invoke-static {v0}, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->access$000(Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 152
    .local v0, "anchor":Landroid/view/View;
    :goto_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow$1;->this$0:Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;

    invoke-static {v1}, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->access$100(Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 153
    iget-object v1, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow$1;->this$0:Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;

    .line 154
    invoke-static {v1}, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->access$100(Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/view/WindowManager$LayoutParams;

    .line 156
    .local v7, "p":Landroid/view/WindowManager$LayoutParams;
    iget-object v8, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow$1;->this$0:Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;

    iget-object v1, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow$1;->this$0:Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;

    iget-object v2, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow$1;->this$0:Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;

    invoke-static {v2}, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->access$200(Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;)I

    move-result v4

    iget-object v2, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow$1;->this$0:Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;

    invoke-static {v2}, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->access$300(Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;)I

    move-result v5

    iget-object v2, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow$1;->this$0:Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;

    .line 157
    invoke-static {v2}, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->access$400(Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;)I

    move-result v6

    .line 156
    move-object v2, v0

    move-object v3, v7

    invoke-static/range {v1 .. v6}, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->access$500(Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;Landroid/view/View;Landroid/view/WindowManager$LayoutParams;III)Z

    move-result v1

    invoke-static {v8, v1}, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->access$600(Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;Z)V

    .line 158
    iget-object v9, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow$1;->this$0:Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;

    iget v10, v7, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v11, v7, Landroid/view/WindowManager$LayoutParams;->y:I

    const/4 v12, -0x1

    const/4 v13, -0x1

    const/4 v14, 0x1

    invoke-virtual/range {v9 .. v14}, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->update(IIIIZ)V

    .line 160
    .end local v7    # "p":Landroid/view/WindowManager$LayoutParams;
    :cond_1
    return-void
.end method
