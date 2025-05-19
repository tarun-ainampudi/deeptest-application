.class Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow$ForwardingListener$DisallowIntercept;
.super Ljava/lang/Object;
.source "COUIBaseListPopupWindow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow$ForwardingListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DisallowIntercept"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow$ForwardingListener;


# direct methods
.method private constructor <init>(Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow$ForwardingListener;)V
    .locals 0

    .line 1484
    iput-object p1, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow$ForwardingListener$DisallowIntercept;->this$0:Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow$ForwardingListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow$ForwardingListener;Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow$ForwardingListener;
    .param p2, "x1"    # Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow$1;

    .line 1484
    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow$ForwardingListener$DisallowIntercept;-><init>(Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow$ForwardingListener;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1487
    iget-object v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow$ForwardingListener$DisallowIntercept;->this$0:Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow$ForwardingListener;

    invoke-static {v0}, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow$ForwardingListener;->access$800(Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow$ForwardingListener;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 1488
    .local v0, "parent":Landroid/view/ViewParent;
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 1489
    return-void
.end method
