.class Lcom/coui/appcompat/dialog/app/COUIAlertController$4;
.super Ljava/lang/Object;
.source "COUIAlertController.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/dialog/app/COUIAlertController;->setupContent(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/dialog/app/COUIAlertController;

.field final synthetic val$contentPanel:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/dialog/app/COUIAlertController;Landroid/view/ViewGroup;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coui/appcompat/dialog/app/COUIAlertController;

    .line 441
    iput-object p1, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController$4;->this$0:Lcom/coui/appcompat/dialog/app/COUIAlertController;

    iput-object p2, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController$4;->val$contentPanel:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 444
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController$4;->this$0:Lcom/coui/appcompat/dialog/app/COUIAlertController;

    invoke-static {v0}, Lcom/coui/appcompat/dialog/app/COUIAlertController;->access$000(Lcom/coui/appcompat/dialog/app/COUIAlertController;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController$4;->this$0:Lcom/coui/appcompat/dialog/app/COUIAlertController;

    invoke-static {v1}, Lcom/coui/appcompat/dialog/app/COUIAlertController;->access$600(Lcom/coui/appcompat/dialog/app/COUIAlertController;)Landroid/content/ComponentCallbacks;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 445
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 449
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController$4;->val$contentPanel:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 450
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController$4;->this$0:Lcom/coui/appcompat/dialog/app/COUIAlertController;

    invoke-static {v0}, Lcom/coui/appcompat/dialog/app/COUIAlertController;->access$600(Lcom/coui/appcompat/dialog/app/COUIAlertController;)Landroid/content/ComponentCallbacks;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 451
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController$4;->this$0:Lcom/coui/appcompat/dialog/app/COUIAlertController;

    invoke-static {v0}, Lcom/coui/appcompat/dialog/app/COUIAlertController;->access$000(Lcom/coui/appcompat/dialog/app/COUIAlertController;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController$4;->this$0:Lcom/coui/appcompat/dialog/app/COUIAlertController;

    invoke-static {v1}, Lcom/coui/appcompat/dialog/app/COUIAlertController;->access$600(Lcom/coui/appcompat/dialog/app/COUIAlertController;)Landroid/content/ComponentCallbacks;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 452
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController$4;->this$0:Lcom/coui/appcompat/dialog/app/COUIAlertController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/coui/appcompat/dialog/app/COUIAlertController;->access$602(Lcom/coui/appcompat/dialog/app/COUIAlertController;Landroid/content/ComponentCallbacks;)Landroid/content/ComponentCallbacks;

    .line 454
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController$4;->this$0:Lcom/coui/appcompat/dialog/app/COUIAlertController;

    invoke-static {v0}, Lcom/coui/appcompat/dialog/app/COUIAlertController;->access$000(Lcom/coui/appcompat/dialog/app/COUIAlertController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController$4;->this$0:Lcom/coui/appcompat/dialog/app/COUIAlertController;

    invoke-static {v1}, Lcom/coui/appcompat/dialog/app/COUIAlertController;->access$700(Lcom/coui/appcompat/dialog/app/COUIAlertController;)Landroid/database/ContentObserver;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 456
    return-void
.end method
