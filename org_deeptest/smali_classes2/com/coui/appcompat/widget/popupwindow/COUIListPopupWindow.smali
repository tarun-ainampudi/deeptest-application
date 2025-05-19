.class public Lcom/coui/appcompat/widget/popupwindow/COUIListPopupWindow;
.super Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;
.source "COUIListPopupWindow.java"

# interfaces
.implements Lcom/coui/appcompat/widget/popupwindow/COUIPopupWindow$OnPreInvokePopupListener;
.implements Lcom/coui/appcompat/widget/popupwindow/COUIPopupWindow$OnAnimateDismissListener;


# static fields
.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "COUIListPopupWindow"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 48
    sget v0, Lcoui/support/appcompat/R$attr;->listPopupWindowStyle:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1, v1, v0, v2}, Lcom/coui/appcompat/widget/popupwindow/COUIListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 59
    sget v0, Lcoui/support/appcompat/R$attr;->listPopupWindowStyle:I

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/coui/appcompat/widget/popupwindow/COUIListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 71
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/coui/appcompat/widget/popupwindow/COUIListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 84
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 85
    return-void
.end method


# virtual methods
.method createPopupWindow(Landroid/content/Context;Landroid/util/AttributeSet;II)Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 92
    new-instance v0, Lcom/coui/appcompat/widget/popupwindow/COUIPopupWindow;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/coui/appcompat/widget/popupwindow/COUIPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 93
    .local v0, "popup":Lcom/coui/appcompat/widget/popupwindow/COUIPopupWindow;
    invoke-virtual {v0, p0}, Lcom/coui/appcompat/widget/popupwindow/COUIPopupWindow;->setOnPreInvokePopupListener(Lcom/coui/appcompat/widget/popupwindow/COUIPopupWindow$OnPreInvokePopupListener;)V

    .line 94
    invoke-virtual {v0, p0}, Lcom/coui/appcompat/widget/popupwindow/COUIPopupWindow;->setOnAnimateDismissListener(Lcom/coui/appcompat/widget/popupwindow/COUIPopupWindow$OnAnimateDismissListener;)V

    .line 95
    return-object v0
.end method

.method public onAnimateDismissEnd(Lcom/coui/appcompat/widget/popupwindow/COUIPopupWindow;)V
    .locals 0
    .param p1, "popup"    # Lcom/coui/appcompat/widget/popupwindow/COUIPopupWindow;

    .line 107
    return-void
.end method

.method public onAnimateDismissStart(Lcom/coui/appcompat/widget/popupwindow/COUIPopupWindow;)V
    .locals 0
    .param p1, "popup"    # Lcom/coui/appcompat/widget/popupwindow/COUIPopupWindow;

    .line 103
    invoke-virtual {p1}, Lcom/coui/appcompat/widget/popupwindow/COUIPopupWindow;->superDismiss()V

    .line 104
    return-void
.end method

.method public onPreInvokePopup(Landroid/view/WindowManager$LayoutParams;)V
    .locals 0
    .param p1, "p"    # Landroid/view/WindowManager$LayoutParams;

    .line 99
    return-void
.end method
