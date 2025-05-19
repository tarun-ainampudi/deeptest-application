.class Lcom/coui/appcompat/dialog/app/COUIAlertController$2;
.super Ljava/lang/Object;
.source "COUIAlertController.java"

# interfaces
.implements Landroid/content/ComponentCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/dialog/app/COUIAlertController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/dialog/app/COUIAlertController;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/dialog/app/COUIAlertController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coui/appcompat/dialog/app/COUIAlertController;

    .line 113
    iput-object p1, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController$2;->this$0:Lcom/coui/appcompat/dialog/app/COUIAlertController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "configuration"    # Landroid/content/res/Configuration;

    .line 116
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController$2;->this$0:Lcom/coui/appcompat/dialog/app/COUIAlertController;

    invoke-static {v0}, Lcom/coui/appcompat/dialog/app/COUIAlertController;->access$200(Lcom/coui/appcompat/dialog/app/COUIAlertController;)V

    .line 117
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController$2;->this$0:Lcom/coui/appcompat/dialog/app/COUIAlertController;

    invoke-static {v0}, Lcom/coui/appcompat/dialog/app/COUIAlertController;->access$300(Lcom/coui/appcompat/dialog/app/COUIAlertController;)V

    .line 118
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController$2;->this$0:Lcom/coui/appcompat/dialog/app/COUIAlertController;

    invoke-static {v0}, Lcom/coui/appcompat/dialog/app/COUIAlertController;->access$400(Lcom/coui/appcompat/dialog/app/COUIAlertController;)V

    .line 119
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController$2;->this$0:Lcom/coui/appcompat/dialog/app/COUIAlertController;

    invoke-static {v0}, Lcom/coui/appcompat/dialog/app/COUIAlertController;->access$500(Lcom/coui/appcompat/dialog/app/COUIAlertController;)V

    .line 120
    return-void
.end method

.method public onLowMemory()V
    .locals 0

    .line 125
    return-void
.end method
