.class Lcom/coui/appcompat/dialog/app/AlertController$2;
.super Ljava/lang/Object;
.source "AlertController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/dialog/app/AlertController;->setScrollIndicators(Landroid/view/ViewGroup;Landroid/view/View;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/dialog/app/AlertController;

.field final synthetic val$bottom:Landroid/view/View;

.field final synthetic val$top:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/dialog/app/AlertController;Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coui/appcompat/dialog/app/AlertController;

    .line 684
    iput-object p1, p0, Lcom/coui/appcompat/dialog/app/AlertController$2;->this$0:Lcom/coui/appcompat/dialog/app/AlertController;

    iput-object p2, p0, Lcom/coui/appcompat/dialog/app/AlertController$2;->val$top:Landroid/view/View;

    iput-object p3, p0, Lcom/coui/appcompat/dialog/app/AlertController$2;->val$bottom:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 687
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/AlertController$2;->this$0:Lcom/coui/appcompat/dialog/app/AlertController;

    iget-object v0, v0, Lcom/coui/appcompat/dialog/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    iget-object v1, p0, Lcom/coui/appcompat/dialog/app/AlertController$2;->val$top:Landroid/view/View;

    iget-object v2, p0, Lcom/coui/appcompat/dialog/app/AlertController$2;->val$bottom:Landroid/view/View;

    invoke-static {v0, v1, v2}, Lcom/coui/appcompat/dialog/app/AlertController;->manageScrollIndicators(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    .line 688
    return-void
.end method
