.class Lcom/example/deeptesting/activity/ApplyActivity$2;
.super Ljava/lang/Object;
.source "ApplyActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/deeptesting/activity/ApplyActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/example/deeptesting/activity/ApplyActivity;


# direct methods
.method constructor <init>(Lcom/example/deeptesting/activity/ApplyActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/example/deeptesting/activity/ApplyActivity;

    .line 72
    iput-object p1, p0, Lcom/example/deeptesting/activity/ApplyActivity$2;->this$0:Lcom/example/deeptesting/activity/ApplyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 75
    iget-object v0, p0, Lcom/example/deeptesting/activity/ApplyActivity$2;->this$0:Lcom/example/deeptesting/activity/ApplyActivity;

    invoke-virtual {v0}, Lcom/example/deeptesting/activity/ApplyActivity;->finish()V

    .line 76
    return-void
.end method
