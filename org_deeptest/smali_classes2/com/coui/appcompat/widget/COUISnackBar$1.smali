.class Lcom/coui/appcompat/widget/COUISnackBar$1;
.super Ljava/lang/Object;
.source "COUISnackBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/widget/COUISnackBar;->setOnAction(Ljava/lang/String;Landroid/view/View$OnClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/widget/COUISnackBar;

.field final synthetic val$listener:Landroid/view/View$OnClickListener;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/widget/COUISnackBar;Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coui/appcompat/widget/COUISnackBar;

    .line 212
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUISnackBar$1;->this$0:Lcom/coui/appcompat/widget/COUISnackBar;

    iput-object p2, p0, Lcom/coui/appcompat/widget/COUISnackBar$1;->val$listener:Landroid/view/View$OnClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 215
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISnackBar$1;->val$listener:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 217
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISnackBar$1;->this$0:Lcom/coui/appcompat/widget/COUISnackBar;

    iget-object v1, p0, Lcom/coui/appcompat/widget/COUISnackBar$1;->this$0:Lcom/coui/appcompat/widget/COUISnackBar;

    invoke-static {v1}, Lcom/coui/appcompat/widget/COUISnackBar;->access$000(Lcom/coui/appcompat/widget/COUISnackBar;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/widget/COUISnackBar;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 218
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISnackBar$1;->this$0:Lcom/coui/appcompat/widget/COUISnackBar;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/COUISnackBar;->dismiss()V

    .line 219
    return-void
.end method
