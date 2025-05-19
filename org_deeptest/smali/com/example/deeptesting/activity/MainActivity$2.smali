.class Lcom/example/deeptesting/activity/MainActivity$2;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/deeptesting/activity/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/example/deeptesting/activity/MainActivity;


# direct methods
.method constructor <init>(Lcom/example/deeptesting/activity/MainActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/example/deeptesting/activity/MainActivity;

    .line 161
    iput-object p1, p0, Lcom/example/deeptesting/activity/MainActivity$2;->this$0:Lcom/example/deeptesting/activity/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 164
    iget-object v0, p0, Lcom/example/deeptesting/activity/MainActivity$2;->this$0:Lcom/example/deeptesting/activity/MainActivity;

    invoke-static {v0}, Lcom/example/deeptesting/activity/MainActivity;->access$300(Lcom/example/deeptesting/activity/MainActivity;)Lcom/google/android/material/appbar/AppBarLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/appbar/AppBarLayout;->getMeasuredHeight()I

    move-result v0

    .line 165
    .local v0, "appBarLayoutHeight":I
    iget-object v1, p0, Lcom/example/deeptesting/activity/MainActivity$2;->this$0:Lcom/example/deeptesting/activity/MainActivity;

    invoke-static {v1}, Lcom/example/deeptesting/activity/MainActivity;->access$400(Lcom/example/deeptesting/activity/MainActivity;)Landroid/widget/RelativeLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/example/deeptesting/activity/MainActivity$2;->this$0:Lcom/example/deeptesting/activity/MainActivity;

    invoke-static {v2}, Lcom/example/deeptesting/activity/MainActivity;->access$400(Lcom/example/deeptesting/activity/MainActivity;)Landroid/widget/RelativeLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getPaddingLeft()I

    move-result v2

    iget-object v3, p0, Lcom/example/deeptesting/activity/MainActivity$2;->this$0:Lcom/example/deeptesting/activity/MainActivity;

    .line 166
    invoke-static {v3}, Lcom/example/deeptesting/activity/MainActivity;->access$400(Lcom/example/deeptesting/activity/MainActivity;)Landroid/widget/RelativeLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getPaddingRight()I

    move-result v3

    iget-object v4, p0, Lcom/example/deeptesting/activity/MainActivity$2;->this$0:Lcom/example/deeptesting/activity/MainActivity;

    invoke-static {v4}, Lcom/example/deeptesting/activity/MainActivity;->access$400(Lcom/example/deeptesting/activity/MainActivity;)Landroid/widget/RelativeLayout;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getPaddingBottom()I

    move-result v4

    .line 165
    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 167
    return-void
.end method
