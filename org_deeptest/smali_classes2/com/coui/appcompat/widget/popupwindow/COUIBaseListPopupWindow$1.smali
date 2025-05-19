.class Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow$1;
.super Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow$ForwardingListener;
.source "COUIBaseListPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;->createDragToOpenListener(Landroid/view/View;)Landroid/view/View$OnTouchListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;
    .param p2, "src"    # Landroid/view/View;

    .line 1041
    iput-object p1, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow$1;->this$0:Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;

    invoke-direct {p0, p2}, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow$ForwardingListener;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public getPopup()Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;
    .locals 1

    .line 1044
    iget-object v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow$1;->this$0:Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;

    return-object v0
.end method
