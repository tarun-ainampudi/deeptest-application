.class Lcom/coui/appcompat/dialog/app/COUIListDialog$2;
.super Ljava/lang/Object;
.source "COUIListDialog.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/dialog/app/COUIListDialog;->setupListPanel(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/dialog/app/COUIListDialog;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/dialog/app/COUIListDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coui/appcompat/dialog/app/COUIListDialog;

    .line 238
    iput-object p1, p0, Lcom/coui/appcompat/dialog/app/COUIListDialog$2;->this$0:Lcom/coui/appcompat/dialog/app/COUIListDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 241
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIListDialog$2;->this$0:Lcom/coui/appcompat/dialog/app/COUIListDialog;

    invoke-static {v0}, Lcom/coui/appcompat/dialog/app/COUIListDialog;->access$200(Lcom/coui/appcompat/dialog/app/COUIListDialog;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/coui/appcompat/dialog/app/COUIListDialog$2;->this$0:Lcom/coui/appcompat/dialog/app/COUIListDialog;

    invoke-static {v1}, Lcom/coui/appcompat/dialog/app/COUIListDialog;->access$100(Lcom/coui/appcompat/dialog/app/COUIListDialog;)Lcom/coui/appcompat/dialog/app/COUIAlertDialog;

    move-result-object v1

    invoke-interface {v0, v1, p3}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 242
    return-void
.end method
