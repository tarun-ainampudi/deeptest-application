.class public Lcom/coui/appcompat/widget/popupwindow/COUIPopupWindow;
.super Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;
.source "COUIPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/widget/popupwindow/COUIPopupWindow$OnAnimateDismissListener;,
        Lcom/coui/appcompat/widget/popupwindow/COUIPopupWindow$OnPreInvokePopupListener;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "COUIPopupWindow"


# instance fields
.field private mIsDismissing:Z

.field private mOnAnimateDismissListener:Lcom/coui/appcompat/widget/popupwindow/COUIPopupWindow$OnAnimateDismissListener;

.field private mOnPreInvokePopupListener:Lcom/coui/appcompat/widget/popupwindow/COUIPopupWindow$OnPreInvokePopupListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 89
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0, v0}, Lcom/coui/appcompat/widget/popupwindow/COUIPopupWindow;-><init>(Landroid/view/View;II)V

    .line 90
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 116
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/coui/appcompat/widget/popupwindow/COUIPopupWindow;-><init>(Landroid/view/View;II)V

    .line 117
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 52
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/widget/popupwindow/COUIPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 61
    sget v0, Lcoui/support/appcompat/R$attr;->popupWindowStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/widget/popupwindow/COUIPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 70
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/coui/appcompat/widget/popupwindow/COUIPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 79
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIPopupWindow;->mOnPreInvokePopupListener:Lcom/coui/appcompat/widget/popupwindow/COUIPopupWindow$OnPreInvokePopupListener;

    .line 40
    iput-object v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIPopupWindow;->mOnAnimateDismissListener:Lcom/coui/appcompat/widget/popupwindow/COUIPopupWindow$OnAnimateDismissListener;

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIPopupWindow;->mIsDismissing:Z

    .line 80
    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "contentView"    # Landroid/view/View;

    .line 102
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lcom/coui/appcompat/widget/popupwindow/COUIPopupWindow;-><init>(Landroid/view/View;II)V

    .line 103
    return-void
.end method

.method public constructor <init>(Landroid/view/View;II)V
    .locals 1
    .param p1, "contentView"    # Landroid/view/View;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 132
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/coui/appcompat/widget/popupwindow/COUIPopupWindow;-><init>(Landroid/view/View;IIZ)V

    .line 133
    return-void
.end method

.method public constructor <init>(Landroid/view/View;IIZ)V
    .locals 1
    .param p1, "contentView"    # Landroid/view/View;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "focusable"    # Z

    .line 148
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;-><init>(Landroid/view/View;IIZ)V

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIPopupWindow;->mOnPreInvokePopupListener:Lcom/coui/appcompat/widget/popupwindow/COUIPopupWindow$OnPreInvokePopupListener;

    .line 40
    iput-object v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIPopupWindow;->mOnAnimateDismissListener:Lcom/coui/appcompat/widget/popupwindow/COUIPopupWindow$OnAnimateDismissListener;

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIPopupWindow;->mIsDismissing:Z

    .line 149
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .line 156
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIPopupWindow;->mIsDismissing:Z

    if-nez v0, :cond_1

    .line 157
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIPopupWindow;->mIsDismissing:Z

    .line 158
    iget-object v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIPopupWindow;->mOnAnimateDismissListener:Lcom/coui/appcompat/widget/popupwindow/COUIPopupWindow$OnAnimateDismissListener;

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIPopupWindow;->mOnAnimateDismissListener:Lcom/coui/appcompat/widget/popupwindow/COUIPopupWindow$OnAnimateDismissListener;

    invoke-interface {v0, p0}, Lcom/coui/appcompat/widget/popupwindow/COUIPopupWindow$OnAnimateDismissListener;->onAnimateDismissStart(Lcom/coui/appcompat/widget/popupwindow/COUIPopupWindow;)V

    goto :goto_0

    .line 161
    :cond_0
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/popupwindow/COUIPopupWindow;->superDismiss()V

    .line 164
    :cond_1
    :goto_0
    return-void
.end method

.method invokePopup(Landroid/view/WindowManager$LayoutParams;)V
    .locals 1
    .param p1, "p"    # Landroid/view/WindowManager$LayoutParams;

    .line 168
    iget-object v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIPopupWindow;->mOnPreInvokePopupListener:Lcom/coui/appcompat/widget/popupwindow/COUIPopupWindow$OnPreInvokePopupListener;

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIPopupWindow;->mOnPreInvokePopupListener:Lcom/coui/appcompat/widget/popupwindow/COUIPopupWindow$OnPreInvokePopupListener;

    invoke-interface {v0, p1}, Lcom/coui/appcompat/widget/popupwindow/COUIPopupWindow$OnPreInvokePopupListener;->onPreInvokePopup(Landroid/view/WindowManager$LayoutParams;)V

    .line 171
    :cond_0
    invoke-super {p0, p1}, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->invokePopup(Landroid/view/WindowManager$LayoutParams;)V

    .line 172
    return-void
.end method

.method public setOnAnimateDismissListener(Lcom/coui/appcompat/widget/popupwindow/COUIPopupWindow$OnAnimateDismissListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/coui/appcompat/widget/popupwindow/COUIPopupWindow$OnAnimateDismissListener;

    .line 193
    iput-object p1, p0, Lcom/coui/appcompat/widget/popupwindow/COUIPopupWindow;->mOnAnimateDismissListener:Lcom/coui/appcompat/widget/popupwindow/COUIPopupWindow$OnAnimateDismissListener;

    .line 194
    return-void
.end method

.method public setOnPreInvokePopupListener(Lcom/coui/appcompat/widget/popupwindow/COUIPopupWindow$OnPreInvokePopupListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/coui/appcompat/widget/popupwindow/COUIPopupWindow$OnPreInvokePopupListener;

    .line 184
    iput-object p1, p0, Lcom/coui/appcompat/widget/popupwindow/COUIPopupWindow;->mOnPreInvokePopupListener:Lcom/coui/appcompat/widget/popupwindow/COUIPopupWindow$OnPreInvokePopupListener;

    .line 185
    return-void
.end method

.method public superDismiss()V
    .locals 1

    .line 200
    invoke-super {p0}, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->dismiss()V

    .line 201
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIPopupWindow;->mIsDismissing:Z

    .line 202
    iget-object v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIPopupWindow;->mOnAnimateDismissListener:Lcom/coui/appcompat/widget/popupwindow/COUIPopupWindow$OnAnimateDismissListener;

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIPopupWindow;->mOnAnimateDismissListener:Lcom/coui/appcompat/widget/popupwindow/COUIPopupWindow$OnAnimateDismissListener;

    invoke-interface {v0, p0}, Lcom/coui/appcompat/widget/popupwindow/COUIPopupWindow$OnAnimateDismissListener;->onAnimateDismissEnd(Lcom/coui/appcompat/widget/popupwindow/COUIPopupWindow;)V

    .line 205
    :cond_0
    return-void
.end method
