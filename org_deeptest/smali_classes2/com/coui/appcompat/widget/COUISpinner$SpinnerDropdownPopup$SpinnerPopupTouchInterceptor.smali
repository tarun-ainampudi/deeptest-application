.class Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup$SpinnerPopupTouchInterceptor;
.super Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow$PopupTouchInterceptor;
.source "COUISpinner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SpinnerPopupTouchInterceptor"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup;


# direct methods
.method private constructor <init>(Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup;)V
    .locals 0

    .line 1112
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup$SpinnerPopupTouchInterceptor;->this$1:Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup;

    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow$PopupTouchInterceptor;-><init>(Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup;Lcom/coui/appcompat/widget/COUISpinner$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup;
    .param p2, "x1"    # Lcom/coui/appcompat/widget/COUISpinner$1;

    .line 1112
    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup$SpinnerPopupTouchInterceptor;-><init>(Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup;)V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .line 1116
    invoke-super {p0, p1, p2}, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow$PopupTouchInterceptor;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    .line 1117
    .local v0, "result":Z
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_1

    .line 1118
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    .line 1119
    .local v1, "x":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    .line 1120
    .local v2, "y":I
    iget-object v3, p0, Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup$SpinnerPopupTouchInterceptor;->this$1:Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup;

    invoke-virtual {v3}, Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup;->getListView()Landroid/widget/ListView;

    move-result-object v3

    .line 1121
    .local v3, "listView":Landroid/widget/ListView;
    if-ltz v1, :cond_0

    iget-object v4, p0, Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup$SpinnerPopupTouchInterceptor;->this$1:Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup;

    invoke-static {v4, v3}, Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup;->access$2100(Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup;Landroid/view/View;)I

    move-result v4

    if-ge v1, v4, :cond_0

    if-ltz v2, :cond_0

    iget-object v4, p0, Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup$SpinnerPopupTouchInterceptor;->this$1:Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup;

    invoke-static {v4, v3}, Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup;->access$1100(Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup;Landroid/view/View;)I

    move-result v4

    if-lt v2, v4, :cond_1

    .line 1122
    :cond_0
    iget-object v4, p0, Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup$SpinnerPopupTouchInterceptor;->this$1:Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup;

    invoke-virtual {v4}, Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup;->dismiss()V

    .line 1123
    const/4 v4, 0x1

    return v4

    .line 1126
    .end local v1    # "x":I
    .end local v2    # "y":I
    .end local v3    # "listView":Landroid/widget/ListView;
    :cond_1
    return v0
.end method
