.class Lcom/coui/appcompat/widget/COUIToolTips$2;
.super Ljava/lang/Object;
.source "COUIToolTips.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


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

    .line 142
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUIToolTips$2;->this$0:Lcom/coui/appcompat/widget/COUIToolTips;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIToolTips$2;->this$0:Lcom/coui/appcompat/widget/COUIToolTips;

    invoke-static {v0}, Lcom/coui/appcompat/widget/COUIToolTips;->access$200(Lcom/coui/appcompat/widget/COUIToolTips;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 146
    return-void
.end method
